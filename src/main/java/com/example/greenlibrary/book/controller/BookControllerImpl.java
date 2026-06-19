package com.example.greenlibrary.book.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.greenlibrary.book.service.BookService;
import com.example.greenlibrary.book.vo.BookVO;

@Controller("bookController")
@RequestMapping("/book")
public class BookControllerImpl implements BookController {
    @Autowired
    private BookService bookService;

    // 페이지당 도서 수
    private static final int PAGE_SIZE = 10;

    @Override
    // 1. 박유정 : 도서검색 클릭 시, 컨트롤러 실행
    // 도서 목록 + 검색 + 페이징
    @GetMapping("/search.do")
    public String bookSearch(@RequestParam(defaultValue = "1") int page,                    //페이지 목록 1부터 시작
                             @RequestParam(defaultValue = "") String keyword,               //검색어 키워드
                             @RequestParam(defaultValue = "all") String searchType,         //도서명, 작가명 등 검색조건 -> jsp에서 값 넘어와서 매개변수에 저장됨
                             Model model) throws Exception {
        // 1. VO에 검색조건 + 페이징 값 세팅
        BookVO vo = new BookVO();
        vo.setKeyword(keyword);
        vo.setSearchType(searchType);
        vo.setStartRow((page - 1) * PAGE_SIZE + 1);
        vo.setEndRow(page * PAGE_SIZE);

        // 2. Service 호출
        List<BookVO> bookList  = bookService.getBookList(vo);
        int          totalCount = bookService.getBookCount(vo);
        int          totalPages = (int) Math.ceil((double) totalCount / PAGE_SIZE);

        // 3. Model에 담아서 JSP로 전달
        model.addAttribute("bookList",    bookList);
        model.addAttribute("totalCount",  totalCount);
        model.addAttribute("totalPages",  totalPages);
        model.addAttribute("currentPage", page);
        model.addAttribute("keyword",     keyword);
        model.addAttribute("searchType",  searchType);

        // 4. WEB-INF/views/book/search.jsp
        return "book/search"; 
    }

    @Override
    // TODO: 박유정
    // 도서 상세 페이지
    @GetMapping("/detail.do")
    public String bookDetail(@RequestParam int bookId, 
                             Model model) throws Exception {
                                
        BookVO book = bookService.getBookDetail(bookId);
        model.addAttribute("book", book);
        return "book/detail";
    }    
}
