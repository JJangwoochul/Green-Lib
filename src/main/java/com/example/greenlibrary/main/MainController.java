package com.example.greenlibrary.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller("mainController")
public class MainController {
    /* ── 임시 매핑 - 각 Controller 생성 전까지 ── */
    
    // http://localhost:8080/main/main.do
    @GetMapping("/main/main.do")
    public String main() {
        return "main/main";
    }

    // 박유정 : 각 컨트롤러 생성되서 불필요
    // @GetMapping("/book/search.do")
    // public String search() {
    //     return "book/search";
    // }

    // @GetMapping("/book/detail.do")
    // public String detail() {
    //     return "book/detail";
    // }

    @GetMapping("/book/wish.do")
    public String wish() {
        return "book/wish";
    }

    @GetMapping("/member/login.do")
    public String login() {
        return "member/login";
    }

    @GetMapping("/member/join.do")
    public String join() {
        return "member/join";
    }

    @GetMapping("/member/joinForm.do")
    public String joinForm() {
        return "member/joinForm";
    }

    @GetMapping("/member/joinComplete.do")
    public String joinComplete() {
        return "member/joinComplete";
    }

    @GetMapping("/mypage/main.do")
    public String mypage() {
        return "mypage/main";
    }

    @GetMapping("/loan/list.do")
    public String loanlist() {
        return "loan/list";
    }

    @GetMapping("/notice/list.do")
    public String noticelist() {
        return "notice/list";
    }

    @GetMapping("/info/guide.do")
    public String guidelist() {
        return "info/guide";
    }

    /* ── 마이페이지 ── */
    @GetMapping("/mypage/loan.do")
    public String mypageLoan() { return "mypage/loan"; }

    @GetMapping("/mypage/wish.do")
    public String mypageWish() { return "mypage/wish"; }

    @GetMapping("/mypage/interest.do")
    public String mypageInterest() { return "mypage/interest"; }

    @GetMapping("/mypage/message.do")
    public String mypageMessage() { return "mypage/message"; }

    @GetMapping("/mypage/goal.do")
    public String mypageGoal() { return "mypage/goal"; }

    @GetMapping("/mypage/edit.do")
    public String mypageEdit() { return "mypage/edit"; }
}
