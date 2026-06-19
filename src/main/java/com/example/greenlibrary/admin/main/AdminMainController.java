package com.example.greenlibrary.admin.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("adminMainController")
@RequestMapping("/admin/main")
public class AdminMainController {

    /* ── 대시보드 ── */
    // http://localhost:8080/admin/main/main.do
    @GetMapping("/main.do")
    public String adminMain() {
        return "admin/main/main";
    }
}
