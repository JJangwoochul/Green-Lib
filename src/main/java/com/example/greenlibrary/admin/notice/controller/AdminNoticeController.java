package com.example.greenlibrary.admin.notice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/notice")
public class AdminNoticeController {
    /* ── 공지사항 관리 ── */
    @GetMapping("/list.do")
    public String noticeList() {
        return "admin/notice/list";
    }

    @GetMapping("/write.do")
    public String noticeWrite() {
        return "admin/notice/write";
    }

    @GetMapping("/edit.do")
    public String noticeEdit() {
        return "admin/notice/edit";
    }

    @GetMapping("/detail.do")
    public String noticeDetail() {
        return "admin/notice/list";  // DB 연동 후 상세 페이지 분리
    }    
}
