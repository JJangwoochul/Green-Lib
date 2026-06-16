package com.example.greenlibrary.controller.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    // http://localhost:8080/main/main.do
    @GetMapping("/main/main.do")
    public String main() {
        return "main/main";
    }

    @GetMapping("/book/search.do")
    public String search() {
        return "book/search";
    }

    @GetMapping("/book/detail.do")
    public String detail() {
        return "book/detail";
    }

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
}
