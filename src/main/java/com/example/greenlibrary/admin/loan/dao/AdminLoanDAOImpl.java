package com.example.greenlibrary.admin.loan.dao;

import com.example.greenlibrary.admin.loan.vo.AdminLoanVO;

public class AdminLoanDAOImpl {

    // 대출 목록 (페이징 + 검색 + 상태 필터)
    public String getLoanList(AdminLoanVO vo) {
        StringBuilder sql = new StringBuilder();
        sql.append(" SELECT * FROM ( ");
        sql.append("   SELECT A.*, ROWNUM AS RNUM FROM ( ");
        sql.append("     SELECT L.LOAN_ID, L.MEMBER_ID, L.BOOK_ID, ");
        sql.append("            L.EXTEND_CNT, L.STATUS, ");
        sql.append("            TO_CHAR(L.LOAN_DATE,   'YYYY-MM-DD') AS LOAN_DATE, ");
        sql.append("            TO_CHAR(L.DUE_DATE,    'YYYY-MM-DD') AS DUE_DATE, ");
        sql.append("            TO_CHAR(L.RETURN_DATE, 'YYYY-MM-DD') AS RETURN_DATE, ");
        sql.append("            M.NAME    AS USER_NAME, ");
        sql.append("            M.USER_ID AS USER_ID, ");
        sql.append("            B.TITLE   AS TITLE, ");
        sql.append("            B.AUTHOR  AS AUTHOR, ");
        sql.append("            B.CALL_NO AS CALL_NO ");
        sql.append("     FROM LOAN L ");
        sql.append("     JOIN MEMBER M ON L.MEMBER_ID = M.MEMBER_ID ");
        sql.append("     JOIN BOOK   B ON L.BOOK_ID   = B.BOOK_ID ");
        sql.append("     WHERE 1=1 ");

        // 상태 필터
        if (vo.getStatusSearch() != null && !vo.getStatusSearch().isEmpty()) {
            sql.append(" AND L.STATUS = '" + vo.getStatusSearch() + "' ");
        }

        // 검색 조건
        if (vo.getKeyword() != null && !vo.getKeyword().isEmpty()) {
            if ("userName".equals(vo.getSearchType())) {
                sql.append(" AND M.NAME LIKE '%' || '" + vo.getKeyword() + "' || '%' ");
            } else if ("title".equals(vo.getSearchType())) {
                sql.append(" AND B.TITLE LIKE '%' || '" + vo.getKeyword() + "' || '%' ");
            } else {
                sql.append(" AND (M.NAME  LIKE '%' || '" + vo.getKeyword() + "' || '%' ");
                sql.append("   OR B.TITLE LIKE '%' || '" + vo.getKeyword() + "' || '%') ");
            }
        }

        sql.append("     ORDER BY L.LOAN_ID DESC ");
        sql.append("   ) A WHERE ROWNUM <= " + vo.getEndRow());
        sql.append(" ) WHERE RNUM >= " + vo.getStartRow());
        return sql.toString();
    }

    // 전체 건수
    public String getLoanCount(AdminLoanVO vo) {
        StringBuilder sql = new StringBuilder();
        sql.append(" SELECT COUNT(*) FROM LOAN L ");
        sql.append(" JOIN MEMBER M ON L.MEMBER_ID = M.MEMBER_ID ");
        sql.append(" JOIN BOOK   B ON L.BOOK_ID   = B.BOOK_ID ");
        sql.append(" WHERE 1=1 ");

        if (vo.getStatusSearch() != null && !vo.getStatusSearch().isEmpty()) {
            sql.append(" AND L.STATUS = '" + vo.getStatusSearch() + "' ");
        }
        if (vo.getKeyword() != null && !vo.getKeyword().isEmpty()) {
            if ("userName".equals(vo.getSearchType())) {
                sql.append(" AND M.NAME LIKE '%' || '" + vo.getKeyword() + "' || '%' ");
            } else if ("title".equals(vo.getSearchType())) {
                sql.append(" AND B.TITLE LIKE '%' || '" + vo.getKeyword() + "' || '%' ");
            } else {
                sql.append(" AND (M.NAME  LIKE '%' || '" + vo.getKeyword() + "' || '%' ");
                sql.append("   OR B.TITLE LIKE '%' || '" + vo.getKeyword() + "' || '%') ");
            }
        }
        return sql.toString();
    }

    // 반납처리 - LOAN 테이블 STATUS 변경
    public String updateReturn(int loanId) {
        return " UPDATE LOAN "
             + " SET STATUS      = 'RETURNED', "
             + "     RETURN_DATE = SYSDATE "
             + " WHERE LOAN_ID = " + loanId;
    }

    // 반납처리 - BOOK 테이블 대출 수 감소
    public String updateBookLoanCntMinus(int loanId) {
        return " UPDATE BOOK SET LOAN_CNT = LOAN_CNT - 1 "
             + " WHERE BOOK_ID = ( "
             + "   SELECT BOOK_ID FROM LOAN WHERE LOAN_ID = " + loanId
             + " ) "
             + " AND LOAN_CNT > 0 ";
    }

    // 연체처리 - LOAN 테이블 STATUS 변경
    public String updateOverdue(int loanId) {
        return " UPDATE LOAN "
             + " SET STATUS = 'OVERDUE' "
             + " WHERE LOAN_ID = " + loanId
             + " AND STATUS = 'LOANED' "
             + " AND DUE_DATE < SYSDATE ";
    }

    // 대출중 건수 (대시보드용)
    public String getLoanedCount() {
        return " SELECT COUNT(*) FROM LOAN WHERE STATUS = 'LOANED' ";
    }

    // 연체중 건수 (대시보드용)
    public String getOverdueCount() {
        return " SELECT COUNT(*) FROM LOAN WHERE STATUS = 'OVERDUE' ";
    }

}
