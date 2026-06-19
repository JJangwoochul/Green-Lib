package com.example.greenlibrary.book.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

public interface BookController {
    public String bookSearch(@RequestParam(defaultValue = "1")   int    page,
                             @RequestParam(defaultValue = "")    String keyword,
                             @RequestParam(defaultValue = "all") String searchType,
                             Model model) throws Exception; 
    public String bookDetail(@RequestParam int bookId,
                             Model model) throws Exception;
}
