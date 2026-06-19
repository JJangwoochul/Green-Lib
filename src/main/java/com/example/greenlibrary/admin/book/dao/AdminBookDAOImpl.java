package com.example.greenlibrary.admin.book.dao;

import com.example.greenlibrary.book.vo.BookVO;

public class AdminBookDAOImpl {

    // 도서 등록
    public String insertBook(BookVO vo) {
        return " INSERT INTO BOOK ( "
             + "   BOOK_ID, TITLE, AUTHOR, PUBLISHER, PUB_YEAR, "
             + "   ISBN, CALL_NO, CATEGORY, LOCATION, TOTAL_CNT, "
             + "   LOAN_CNT, STATUS, REG_DATE "
             + " ) VALUES ( "
             + "   SEQ_BOOK.NEXTVAL, #{title}, #{author}, #{publisher}, #{pubYear}, "
             + "   #{isbn}, #{callNo}, #{category}, #{location}, #{totalCnt}, "
             + "   0, 'ACTIVE', SYSDATE "
             + " ) ";
    }

    // 도서 수정
    public String updateBook(BookVO vo) {
        return " UPDATE BOOK "
             + " SET TITLE     = #{title}, "
             + "     AUTHOR    = #{author}, "
             + "     PUBLISHER = #{publisher}, "
             + "     PUB_YEAR  = #{pubYear}, "
             + "     ISBN      = #{isbn}, "
             + "     CALL_NO   = #{callNo}, "
             + "     CATEGORY  = #{category}, "
             + "     LOCATION  = #{location}, "
             + "     TOTAL_CNT = #{totalCnt} "
             + " WHERE BOOK_ID = #{bookId} ";
    }

    // 도서 삭제 (논리삭제)
    public String deleteBook(int bookId) {
        return " UPDATE BOOK SET STATUS = 'DELETE' "
             + " WHERE BOOK_ID = " + bookId;
    }

    // 도서 목록 (페이징 + 검색)
    public String getBookList(BookVO vo) {
        StringBuilder sql = new StringBuilder();
        sql.append(" SELECT * FROM ( ");
        sql.append("   SELECT A.*, ROWNUM AS RNUM FROM ( ");
        sql.append("     SELECT BOOK_ID, TITLE, AUTHOR, PUBLISHER, ");
        sql.append("            PUB_YEAR, ISBN, CALL_NO, CATEGORY, ");
        sql.append("            LOCATION, TOTAL_CNT, LOAN_CNT, STATUS, ");
        sql.append("            TO_CHAR(REG_DATE, 'YYYY-MM-DD') AS REG_DATE ");
        sql.append("     FROM BOOK WHERE STATUS = 'ACTIVE' ");

        if (vo.getKeyword() != null && !vo.getKeyword().isEmpty()) {
            if ("title".equals(vo.getSearchType())) {
                sql.append(" AND TITLE LIKE '%' || '" + vo.getKeyword() + "' || '%' ");
            } else if ("author".equals(vo.getSearchType())) {
                sql.append(" AND AUTHOR LIKE '%' || '" + vo.getKeyword() + "' || '%' ");
            } else {
                sql.append(" AND (TITLE  LIKE '%' || '" + vo.getKeyword() + "' || '%' ");
                sql.append("   OR AUTHOR LIKE '%' || '" + vo.getKeyword() + "' || '%') ");
            }
        }

        sql.append("     ORDER BY BOOK_ID DESC ");
        sql.append("   ) A WHERE ROWNUM <= " + vo.getEndRow());
        sql.append(" ) WHERE RNUM >= " + vo.getStartRow());
        return sql.toString();
    }

    // 전체 건수
    public String getBookCount(BookVO vo) {
        StringBuilder sql = new StringBuilder();
        sql.append(" SELECT COUNT(*) FROM BOOK WHERE STATUS = 'ACTIVE' ");

        if (vo.getKeyword() != null && !vo.getKeyword().isEmpty()) {
            if ("title".equals(vo.getSearchType())) {
                sql.append(" AND TITLE LIKE '%' || '" + vo.getKeyword() + "' || '%' ");
            } else if ("author".equals(vo.getSearchType())) {
                sql.append(" AND AUTHOR LIKE '%' || '" + vo.getKeyword() + "' || '%' ");
            } else {
                sql.append(" AND (TITLE  LIKE '%' || '" + vo.getKeyword() + "' || '%' ");
                sql.append("   OR AUTHOR LIKE '%' || '" + vo.getKeyword() + "' || '%') ");
            }
        }
        return sql.toString();
    }

    // 도서 상세
    public String getBookDetail(int bookId) {
        return " SELECT BOOK_ID, TITLE, AUTHOR, PUBLISHER, PUB_YEAR, "
             + "        ISBN, CALL_NO, CATEGORY, LOCATION, "
             + "        TOTAL_CNT, LOAN_CNT, STATUS, "
             + "        TO_CHAR(REG_DATE, 'YYYY-MM-DD') AS REG_DATE "
             + " FROM BOOK "
             + " WHERE BOOK_ID = " + bookId
             + " AND STATUS = 'ACTIVE' ";
    }

    // 전체 도서 수 (대시보드용)
    public String getTotalBookCount() {
        return " SELECT COUNT(*) FROM BOOK WHERE STATUS = 'ACTIVE' ";
    }

}
