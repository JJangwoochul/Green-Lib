package com.example.greenlibrary.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller("mainController")
public class MainController {
    
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
}
