package com.example.greenlibrary.admin.loan.dao;

import com.example.greenlibrary.admin.loan.vo.AdminLoanVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.UpdateProvider;

import java.util.List;

@Mapper
public interface AdminLoanDAO {

    // 대출 목록
    @SelectProvider(type = AdminLoanDAOImpl.class, method = "getLoanList")
    List<AdminLoanVO> getLoanList(AdminLoanVO vo) throws Exception;

    // 전체 건수
    @SelectProvider(type = AdminLoanDAOImpl.class, method = "getLoanCount")
    int getLoanCount(AdminLoanVO vo) throws Exception;

    // 반납처리 - LOAN STATUS 변경
    @UpdateProvider(type = AdminLoanDAOImpl.class, method = "updateReturn")
    int updateReturn(int loanId) throws Exception;

    // 반납처리 - BOOK LOAN_CNT 감소
    @UpdateProvider(type = AdminLoanDAOImpl.class, method = "updateBookLoanCntMinus")
    int updateBookLoanCntMinus(int loanId) throws Exception;

    // 연체처리
    @UpdateProvider(type = AdminLoanDAOImpl.class, method = "updateOverdue")
    int updateOverdue(int loanId) throws Exception;

    // 대출중 건수 (대시보드용)
    @SelectProvider(type = AdminLoanDAOImpl.class, method = "getLoanedCount")
    int getLoanedCount() throws Exception;

    // 연체중 건수 (대시보드용)
    @SelectProvider(type = AdminLoanDAOImpl.class, method = "getOverdueCount")
    int getOverdueCount() throws Exception;

}
