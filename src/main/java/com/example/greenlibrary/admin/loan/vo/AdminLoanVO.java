package com.example.greenlibrary.admin.loan.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AdminLoanVO {

    private int    loanId;       // 대출 번호
    private int    memberId;     // 회원 번호
    private int    bookId;       // 도서 번호
    private String loanDate;     // 대출일
    private String dueDate;      // 반납예정일
    private String returnDate;   // 실제 반납일
    private int    extendCnt;    // 연장 횟수
    private String status;       // 상태 (LOANED/RETURNED/OVERDUE)

    // JOIN 으로 가져오는 컬럼
    private String userName;     // 회원명 (MEMBER.NAME)
    private String userId;       // 아이디 (MEMBER.USER_ID)
    private String title;        // 도서명 (BOOK.TITLE)
    private String author;       // 저자   (BOOK.AUTHOR)
    private String callNo;       // 청구기호 (BOOK.CALL_NO)

    // 페이징용
    private int startRow;
    private int endRow;

    // 검색용
    private String searchType;   // 검색 타입 (userName/title)
    private String keyword;      // 검색어
    private String statusSearch; // 상태 필터 (LOANED/RETURNED/OVERDUE)

}
