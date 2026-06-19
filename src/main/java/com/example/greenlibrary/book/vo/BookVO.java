package com.example.greenlibrary.book.vo;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

//박유정
@Getter
@Setter
@Component("bookVO")
public class BookVO {
    private int    bookId;      // 도서 번호
    private String title;       // 도서명
    private String author;      // 저자
    private String publisher;   // 출판사
    private String pubYear;     // 발행연도
    private String isbn;        // ISBN
    private String callNo;      // 청구기호
    private String category;    // 주제분류
    private String location;    // 소장위치
    private int totalCnt;       // 총 소장 수
    private int loanCnt;        // 현재 대출 수
    private String status;      // 상태 (ACTIVE/DELETE)
    private String regDate;     // 등록일

    // 대출가능 수 (totalCnt - loanCnt) → JSP에서 표시용
    public int getAvailableCnt() {
        return totalCnt - loanCnt;
    }

    // 페이징용
    private int startRow;
    private int endRow;

    // 검색용
    private String searchType;  // 검색 타입 (all/title/author/publisher/isbn)
    private String keyword;     // 검색어
}
