package com.example.greenlibrary.admin.loan.service;

import com.example.greenlibrary.admin.loan.dao.AdminLoanDAO;
import com.example.greenlibrary.admin.loan.vo.AdminLoanVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("adminLoanService")
@Transactional(propagation = Propagation.REQUIRED)
public class AdminLoanServiceImpl implements AdminLoanService {

    @Autowired
    private AdminLoanDAO adminLoanDAO;

    @Override
    public List<AdminLoanVO> getLoanList(AdminLoanVO vo) throws Exception {
        return adminLoanDAO.getLoanList(vo);
    }

    @Override
    public int getLoanCount(AdminLoanVO vo) throws Exception {
        return adminLoanDAO.getLoanCount(vo);
    }

    // 반납처리 - LOAN 상태변경 + BOOK 대출수 감소 한 번에 처리
    // 둘 중 하나라도 실패하면 전체 rollback
    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)
    public void returnLoan(int loanId) throws Exception {
        adminLoanDAO.updateReturn(loanId);          // LOAN STATUS → RETURNED
        adminLoanDAO.updateBookLoanCntMinus(loanId); // BOOK LOAN_CNT - 1
    }

    @Override
    public int updateOverdue(int loanId) throws Exception {
        return adminLoanDAO.updateOverdue(loanId);
    }

    @Override
    public int getLoanedCount() throws Exception {
        return adminLoanDAO.getLoanedCount();
    }

    @Override
    public int getOverdueCount() throws Exception {
        return adminLoanDAO.getOverdueCount();
    }

}
