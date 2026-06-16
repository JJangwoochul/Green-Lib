package com.example.greenlibrary.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {

    /* ── 대시보드 ── */
    @GetMapping("/main.do")
    public String adminMain() {
        return "admin/main";
    }

    /* ── 도서 관리 ── */
    @GetMapping("/book/list.do")
    public String bookList() {
        return "admin/book/list";
    }

    @GetMapping("/book/write.do")
    public String bookWrite() {
        return "admin/book/write";
    }

    @GetMapping("/book/edit.do")
    public String bookEdit() {
        return "admin/book/write";   // 등록/수정 폼 공용
    }

    /* ── 대출 관리 ── */
    @GetMapping("/loan/list.do")
    public String loanList() {
        return "admin/loan/list";
    }

    @GetMapping("/loan/overdue.do")
    public String loanOverdue() {
        return "admin/loan/list";    // DB 연동 후 분리
    }

    /* ── 회원 관리 ── */
    @GetMapping("/member/list.do")
    public String memberList() {
        return "admin/member/list";
    }

    /* ── 공지사항 관리 ── */
    @GetMapping("/notice/list.do")
    public String noticeList() {
        return "admin/notice/list";
    }

    @GetMapping("/notice/write.do")
    public String noticeWrite() {
        return "admin/notice/write";
    }

    @GetMapping("/notice/edit.do")
    public String noticeEdit() {
        return "admin/notice/edit";
    }

    @GetMapping("/notice/detail.do")
    public String noticeDetail() {
        return "admin/notice/list";  // DB 연동 후 상세 페이지 분리
    }

    /* ── 희망도서 관리 ── */
    @GetMapping("/wish/list.do")
    public String wishList() {
        return "admin/notice/list";  // DB 연동 후 별도 구현
    }
}
