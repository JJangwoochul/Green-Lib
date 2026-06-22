package com.example.greenlibrary.admin.wish.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("adminWishController")
@RequestMapping("/admin/wish")
public class AdminWishController {
    /* ── 희망도서 관리 ── */
    @GetMapping("/list.do")
    public String wishList() {
        return "admin/wish/list";  // DB 연동 후 별도 구현
    }    
}
