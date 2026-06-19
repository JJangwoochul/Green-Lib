package com.example.greenlibrary.admin.notice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.example.greenlibrary.admin.notice.dao.AdminNoticeDAO;
import com.example.greenlibrary.notice.vo.NoticeVO;

@Service("adminNoticeService")
@Transactional(propagation=Propagation.REQUIRED)
public class AdminNoticeServiceImpl implements AdminNoticeService {
    @Autowired
    private AdminNoticeDAO adminNoticeDAO;

    @Override
    public List<NoticeVO> getNoticeList(NoticeVO vo) throws Exception {
        return adminNoticeDAO.getNoticeList(vo);
    }

    @Override
    public int getNoticeCount(NoticeVO vo) throws Exception {
        return adminNoticeDAO.getNoticeCount(vo);
    }

    @Override
    public NoticeVO getNoticeDetail(int noticeId) throws Exception {
        // 조회수 증가 후 상세 반환
        adminNoticeDAO.updateHit(noticeId);
        return adminNoticeDAO.getNoticeDetail(noticeId);
    }

    @Override
    public int insertNotice(NoticeVO vo) throws Exception {
        // isFixed 미입력 시 기본값 N
        if (vo.getIsFixed() == null || vo.getIsFixed().isEmpty()) {
            vo.setIsFixed("N");
        }
        vo.setStatus("ACTIVE");
        return adminNoticeDAO.insertNotice(vo);
    }

    @Override
    public int updateNotice(NoticeVO vo) throws Exception {
        if (vo.getIsFixed() == null || vo.getIsFixed().isEmpty()) {
            vo.setIsFixed("N");
        }
        return adminNoticeDAO.updateNotice(vo);
    }

    @Override
    public int deleteNotice(int noticeId) throws Exception {
        // 논리 삭제 (STATUS = 'DELETE')
        return adminNoticeDAO.deleteNotice(noticeId);
    }

    @Override
    public List<NoticeVO> getFixedNoticeList() throws Exception {
        return adminNoticeDAO.getFixedNoticeList();
    }

    @Override
    public List<NoticeVO> getRecentNoticeList() throws Exception {
        return adminNoticeDAO.getRecentNoticeList();
    }    
}
