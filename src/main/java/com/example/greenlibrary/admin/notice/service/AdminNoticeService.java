package com.example.greenlibrary.admin.notice.service;

import java.util.List;

import com.example.greenlibrary.notice.vo.NoticeVO;

public interface AdminNoticeService {
    // 공지 목록
    List<NoticeVO> getNoticeList(NoticeVO vo) throws Exception;

    // 전체 건수
    int getNoticeCount(NoticeVO vo) throws Exception;

    // 공지 상세 (조회수 증가 포함)
    NoticeVO getNoticeDetail(int noticeId) throws Exception;

    // 공지 등록
    int insertNotice(NoticeVO vo) throws Exception;

    // 공지 수정
    int updateNotice(NoticeVO vo) throws Exception;

    // 공지 삭제
    int deleteNotice(int noticeId) throws Exception;

    // 상단 고정 목록
    List<NoticeVO> getFixedNoticeList() throws Exception;

    // 최근 공지 목록 (메인페이지용)
    List<NoticeVO> getRecentNoticeList() throws Exception;    
}
