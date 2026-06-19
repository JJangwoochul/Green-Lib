package com.example.greenlibrary.admin.loan.controller;

import com.example.greenlibrary.admin.loan.service.AdminLoanService;
import com.example.greenlibrary.admin.loan.vo.AdminLoanVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller("adminLoanController")
@RequestMapping("/admin/loan")
public class AdminLoanController {

    @Autowired
    private AdminLoanService adminLoanService;

    private static final int PAGE_SIZE = 10;

    // 대출 목록
    @GetMapping("/list.do")
    public String loanList(
            @RequestParam(defaultValue = "1")      int    page,
            @RequestParam(defaultValue = "LOANED") String statusSearch,
            @RequestParam(defaultValue = "")       String keyword,
            @RequestParam(defaultValue = "all")    String searchType,
            Model model) throws Exception {

        AdminLoanVO vo = new AdminLoanVO();
        vo.setStatusSearch(statusSearch);
        vo.setKeyword(keyword);
        vo.setSearchType(searchType);
        vo.setStartRow((page - 1) * PAGE_SIZE + 1);
        vo.setEndRow(page * PAGE_SIZE);

        List<AdminLoanVO> loanList   = adminLoanService.getLoanList(vo);
        int               totalCount = adminLoanService.getLoanCount(vo);
        int               totalPages = (int) Math.ceil((double) totalCount / PAGE_SIZE);

        model.addAttribute("loanList",     loanList);
        model.addAttribute("totalCount",   totalCount);
        model.addAttribute("totalPages",   totalPages);
        model.addAttribute("currentPage",  page);
        model.addAttribute("statusSearch", statusSearch);
        model.addAttribute("keyword",      keyword);
        model.addAttribute("searchType",   searchType);

        return "admin/loan/list";
    }

    // 반납처리
    @GetMapping("/return.do")
    public String returnLoan(@RequestParam int loanId) throws Exception {
        adminLoanService.returnLoan(loanId);
        return "redirect:/admin/loan/list.do";
    }

    // 연체처리
    @GetMapping("/overdue.do")
    public String overdueLoan(@RequestParam int loanId) throws Exception {
        adminLoanService.updateOverdue(loanId);
        return "redirect:/admin/loan/list.do?statusSearch=OVERDUE";
    }

}
