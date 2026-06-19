package com.example.greenlibrary.admin.notice.dao;

import java.util.List;

import org.apache.ibatis.annotations.DeleteProvider;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.UpdateProvider;

import com.example.greenlibrary.notice.vo.NoticeVO;

@Mapper
public interface AdminNoticeDAO {
    // 공지 목록 (페이징 + 검색)
    @SelectProvider(type = AdminNoticeDAOImpl.class, method = "getNoticeList")
    List<NoticeVO> getNoticeList(NoticeVO vo) throws Exception;

    // 공지 전체 건수 (페이징용)
    @SelectProvider(type = AdminNoticeDAOImpl.class, method = "getNoticeCount")
    int getNoticeCount(NoticeVO vo) throws Exception;

    // 공지 상세
    @SelectProvider(type = AdminNoticeDAOImpl.class, method = "getNoticeDetail")
    NoticeVO getNoticeDetail(int noticeId) throws Exception;

    // 공지 등록
    @InsertProvider(type = AdminNoticeDAOImpl.class, method = "insertNotice")
    int insertNotice(NoticeVO vo) throws Exception;

    // 공지 수정
    @UpdateProvider(type = AdminNoticeDAOImpl.class, method = "updateNotice")
    int updateNotice(NoticeVO vo) throws Exception;

    // 공지 삭제 (논리삭제 - STATUS = 'DELETE')
    @DeleteProvider(type = AdminNoticeDAOImpl.class, method = "deleteNotice")
    int deleteNotice(int noticeId) throws Exception;

    // 조회수 증가
    @UpdateProvider(type = AdminNoticeDAOImpl.class, method = "updateHit")
    int updateHit(int noticeId) throws Exception;

    // 상단 고정 목록 (메인페이지용)
    @SelectProvider(type = AdminNoticeDAOImpl.class, method = "getFixedNoticeList")
    List<NoticeVO> getFixedNoticeList() throws Exception;

    // 최근 공지 목록 (메인페이지 미리보기용)
    @SelectProvider(type = AdminNoticeDAOImpl.class, method = "getRecentNoticeList")
    List<NoticeVO> getRecentNoticeList() throws Exception;    
}
