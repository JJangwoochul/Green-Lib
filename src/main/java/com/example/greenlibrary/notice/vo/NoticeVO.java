package com.example.greenlibrary.notice.vo;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Component("noticeVO")
public class NoticeVO {
    private int noticeId;       // 공지 번호
    private int memberId;       // 작성자 회원번호
    private String category;      // 분류 (공지/행사강연/도서안내/휴관안내)
    private String title;         // 제목
    private String content;       // 내용
    private int hit;           // 조회수
    private String isFixed;       // 상단고정 (Y/N)
    private String status;        // 상태 (ACTIVE/DELETE)
    private String regDate;       // 작성일
    private String modDate;       // 수정일

    // 페이징용
    private int startRow;
    private int endRow;

    // 검색용
    private String searchType;       // 검색 타입 (title/content/all)
    private String keyword;          // 검색어
    private String categorySearch;   // 분류 필터    
}
