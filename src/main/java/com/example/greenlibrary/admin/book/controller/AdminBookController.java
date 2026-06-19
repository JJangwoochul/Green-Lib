package com.example.greenlibrary.admin.book.controller;

import java.util.Map;

import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.greenlibrary.book.vo.BookVO;

public interface  AdminBookController {
    public ResponseEntity<Map<String, Object>> searchByIsbn(@RequestParam String isbn) throws Exception;
    public String bookList(@RequestParam(defaultValue = "1")   int    page,
                           @RequestParam(defaultValue = "")    String keyword,
                           @RequestParam(defaultValue = "all") String searchType,
                           Model model) throws Exception;
    public String bookWrite() throws Exception;
    public String bookEdit(@RequestParam int bookId, Model model) throws Exception;
    public String bookWriteProc(@ModelAttribute BookVO bookVO, RedirectAttributes ra) throws Exception;
    public String bookEditProc(@ModelAttribute BookVO bookVO, RedirectAttributes ra) throws Exception;
    public String bookDelete(@RequestParam int bookId, RedirectAttributes ra) throws Exception;    
}
