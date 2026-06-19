package com.example.greenlibrary.book.dao;

import com.example.greenlibrary.book.vo.BookVO;

public class BookDAOImpl {
    // 도서 목록 (페이징 + 검색)
    public String getBookList(BookVO vo) {
        StringBuilder sql = new StringBuilder();
        sql.append(" SELECT * ");
        sql.append(" FROM ( ");
        sql.append("        SELECT A.*, ROWNUM AS RNUM ");
        sql.append("        FROM ( ");
        sql.append("         SELECT BOOK_ID, TITLE, AUTHOR, PUBLISHER, ");
        sql.append("                PUB_YEAR, CALL_NO, CATEGORY, LOCATION, ");
        sql.append("                TOTAL_CNT, LOAN_CNT, STATUS, ");
        sql.append("                TO_CHAR(REG_DATE, 'YYYY-MM-DD') AS REG_DATE ");
        sql.append("         FROM BOOK ");
        sql.append("         WHERE STATUS = 'ACTIVE' ");

        // 검색 조건
        if (vo.getKeyword() != null && !vo.getKeyword().isEmpty()) {
            String searchType = vo.getSearchType();
            if ("title".equals(searchType)) {
                sql.append(" AND TITLE LIKE '%' || '" + vo.getKeyword() + "' || '%' ");
            } else if ("author".equals(searchType)) {
                sql.append(" AND AUTHOR LIKE '%' || '" + vo.getKeyword() + "' || '%' ");
            } else if ("publisher".equals(searchType)) {
                sql.append(" AND PUBLISHER LIKE '%' || '" + vo.getKeyword() + "' || '%' ");
            } else if ("isbn".equals(searchType)) {
                sql.append(" AND ISBN = '" + vo.getKeyword() + "' ");
            } else {
                // 통합검색 (기본값)
                sql.append(" AND (TITLE     LIKE '%' || '" + vo.getKeyword() + "' || '%' ");
                sql.append("   OR AUTHOR    LIKE '%' || '" + vo.getKeyword() + "' || '%' ");
                sql.append("   OR PUBLISHER LIKE '%' || '" + vo.getKeyword() + "' || '%' ) ");
            }
        }

        sql.append("         ORDER BY BOOK_ID DESC ");
        sql.append("     ) A ");
        sql.append("     WHERE ROWNUM <= " + vo.getEndRow());
        sql.append(" ) ");
        sql.append(" WHERE RNUM >= " + vo.getStartRow());

        return sql.toString();
    }

    // 전체 건수
    public String getBookCount(BookVO vo) {
        StringBuilder sql = new StringBuilder();
        sql.append(" SELECT COUNT(*) FROM BOOK ");
        sql.append(" WHERE STATUS = 'ACTIVE' ");

        if (vo.getKeyword() != null && !vo.getKeyword().isEmpty()) {
            String searchType = vo.getSearchType();
            if ("title".equals(searchType)) {
                sql.append(" AND TITLE LIKE '%' || '" + vo.getKeyword() + "' || '%' ");
            } else if ("author".equals(searchType)) {
                sql.append(" AND AUTHOR LIKE '%' || '" + vo.getKeyword() + "' || '%' ");
            } else if ("publisher".equals(searchType)) {
                sql.append(" AND PUBLISHER LIKE '%' || '" + vo.getKeyword() + "' || '%' ");
            } else if ("isbn".equals(searchType)) {
                sql.append(" AND ISBN = '" + vo.getKeyword() + "' ");
            } else {
                sql.append(" AND (TITLE     LIKE '%' || '" + vo.getKeyword() + "' || '%' ");
                sql.append("   OR AUTHOR    LIKE '%' || '" + vo.getKeyword() + "' || '%' ");
                sql.append("   OR PUBLISHER LIKE '%' || '" + vo.getKeyword() + "' || '%' ) ");
            }
        }

        return sql.toString();
    }

    // TODO: 박유정 
    // 도서 상세 조회
    public String getBookDetail(int bookId) {
        String sql = "";
        // 여기에 SQL 작성하세요!
        return sql;
    }

    // TODO: 박유정
    // 최근 등록 도서 4건 (메인페이지 신작도서용)
    public String getRecentBookList() {
        String sql = "";
        return sql;
    }    
}
