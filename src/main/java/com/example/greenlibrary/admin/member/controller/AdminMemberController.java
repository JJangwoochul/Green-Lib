package com.example.greenlibrary.admin.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/member")
public class AdminMemberController {
    /* ── 회원 관리 ── */
    @GetMapping("/list.do")
    public String memberList() {
        return "admin/member/list";
    }    
}
