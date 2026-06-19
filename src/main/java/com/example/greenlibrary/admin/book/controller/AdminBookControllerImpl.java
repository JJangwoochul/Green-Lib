package com.example.greenlibrary.admin.book.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.greenlibrary.admin.book.service.AdminBookService;
import com.example.greenlibrary.book.vo.BookVO;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller("adminBookController")
@RequestMapping("/admin/book")
public class AdminBookControllerImpl implements AdminBookController {

    @Autowired
    private AdminBookService adminBookService; 
    
    private static final int PAGE_SIZE = 10;
    private static final String API_KEY = "237cdf0834cef49871242b8da694f586a80320bc1271bc0784595c28e18d74e1";
    
    /* ── ISBN 조회 API (서버에서 국립중앙도서관 호출) ── */
    @Override
    @GetMapping("/isbn.do")
    public ResponseEntity<Map<String, Object>> searchByIsbn(@RequestParam String isbn) throws Exception {
        Map<String, Object> result = new HashMap<>();

        try {
            // 1. 국립중앙도서관 API URL 생성
            String apiUrl = "https://www.nl.go.kr/seoji/SearchApi.do"
                          + "?cert_key=" + API_KEY
                          + "&result_style=json"
                          + "&page_no=1"
                          + "&page_size=1"
                          + "&isbn=" + isbn;

            // 2. 서버에서 API 호출
            URL url = new URL(apiUrl);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setConnectTimeout(5000);
            conn.setReadTimeout(5000);

            // 3. 응답 읽기
            BufferedReader br = new BufferedReader(
                new InputStreamReader(conn.getInputStream(), "UTF-8")
            );
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = br.readLine()) != null) {
                sb.append(line);
            }
            br.close();

            // 4. JSON 파싱
            ObjectMapper mapper = new ObjectMapper();
            JsonNode root = mapper.readTree(sb.toString());
            JsonNode docs = root.get("docs");

            if (docs == null || docs.size() == 0) {
                result.put("success", false);
                result.put("message", "해당 ISBN의 도서 정보를 찾을 수 없습니다.");
                return ResponseEntity.ok(result);
            }

            // 5. 도서 정보 추출
            JsonNode book = docs.get(0);
            result.put("success",   true);
            result.put("title",     textOrEmpty(book, "TITLE"));
            result.put("author",    textOrEmpty(book, "AUTHOR"));
            result.put("publisher", textOrEmpty(book, "PUBLISHER"));
            result.put("pubYear",   textOrEmpty(book, "PUB_YEAR_INFO"));
            result.put("isbn",      textOrEmpty(book, "EA_ISBN"));

            return ResponseEntity.ok(result);

        } catch (Exception e) {
            result.put("success", false);
            result.put("message", "API 호출 중 오류가 발생했습니다: " + e.getMessage());
            return ResponseEntity.ok(result);
        }
    }

    // JsonNode에서 텍스트 추출 (null 안전)
    private String textOrEmpty(JsonNode node, String field) {
        JsonNode val = node.get(field);
        return (val != null && !val.isNull()) ? val.asText() : "";
    }

    @Override
    @GetMapping("/list.do")
    public String bookList(@RequestParam(defaultValue = "1")   int    page,
                           @RequestParam(defaultValue = "")    String keyword,
                           @RequestParam(defaultValue = "all") String searchType,
                           Model model) throws Exception {
        BookVO vo = new BookVO();
        vo.setKeyword(keyword);
        vo.setSearchType(searchType);
        vo.setStartRow((page - 1) * PAGE_SIZE + 1);
        vo.setEndRow(page * PAGE_SIZE);
        List<BookVO> bookList = adminBookService.getBookList(vo);
        model.addAttribute("bookList", bookList);
        return "admin/book/list";       
    }

    @Override
    @GetMapping("/write.do")
    public String bookWrite() throws Exception {
        return "admin/book/write";
    }

    @Override
    @GetMapping("/edit.do")
    public String bookEdit(@RequestParam int bookId, Model model) throws Exception {
        // DB에서 해당 도서 정보 조회
        BookVO book = adminBookService.getBookDetail(bookId);
        // model에 담아서 JSP로 전달
        model.addAttribute("book", book);
        // write.jsp를 수정 모드로 재활용
        return "admin/book/write";
    }

    @Override
    @PostMapping("/writeProc.do")
    public String bookWriteProc(@ModelAttribute BookVO bookVO, RedirectAttributes ra) throws Exception {
        adminBookService.insertBook(bookVO);
        ra.addFlashAttribute("msg", "도서가 등록되었습니다.");
        return "redirect:/admin/book/list.do";
    }

    @Override
    @PostMapping("/editProc.do")
    public String bookEditProc(@ModelAttribute BookVO bookVO,
                               RedirectAttributes ra) throws Exception {
        adminBookService.updateBook(bookVO);
        ra.addFlashAttribute("msg", "도서가 수정되었습니다.");
        return "redirect:/admin/book/list.do";
    }

    @Override
    @GetMapping("/delete.do")
    public String bookDelete(@RequestParam int bookId, RedirectAttributes ra) throws Exception {
        adminBookService.deleteBook(bookId);
        ra.addFlashAttribute("msg", "도서가 삭제되었습니다.");
        return "redirect:/admin/book/list.do";
    }
}
