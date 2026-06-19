package com.example.greenlibrary.admin.loan.service;

import com.example.greenlibrary.admin.loan.vo.AdminLoanVO;

import java.util.List;

public interface AdminLoanService {

    List<AdminLoanVO> getLoanList(AdminLoanVO vo) throws Exception;

    int getLoanCount(AdminLoanVO vo) throws Exception;

    // 반납처리 (LOAN + BOOK 동시 처리 → @Transactional)
    void returnLoan(int loanId) throws Exception;

    // 연체처리
    int updateOverdue(int loanId) throws Exception;

    int getLoanedCount() throws Exception;

    int getOverdueCount() throws Exception;

}
