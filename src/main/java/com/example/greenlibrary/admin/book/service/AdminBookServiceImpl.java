package com.example.greenlibrary.admin.book.service;

import com.example.greenlibrary.admin.book.dao.AdminBookDAO;
import com.example.greenlibrary.book.vo.BookVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("adminBookService")
@Transactional(propagation = Propagation.REQUIRED)
public class AdminBookServiceImpl implements AdminBookService {

    @Autowired
    private AdminBookDAO adminBookDAO;

    @Override
    public int insertBook(BookVO vo) throws Exception {
        return adminBookDAO.insertBook(vo);
    }

    @Override
    public int updateBook(BookVO vo) throws Exception {
        return adminBookDAO.updateBook(vo);
    }

    @Override
    public int deleteBook(int bookId) throws Exception {
        return adminBookDAO.deleteBook(bookId);
    }

    @Override
    public List<BookVO> getBookList(BookVO vo) throws Exception {
        return adminBookDAO.getBookList(vo);
    }

    @Override
    public int getBookCount(BookVO vo) throws Exception {
        return adminBookDAO.getBookCount(vo);
    }

    @Override
    public BookVO getBookDetail(int bookId) throws Exception {
        return adminBookDAO.getBookDetail(bookId);
    }

    @Override
    public int getTotalBookCount() throws Exception {
        return adminBookDAO.getTotalBookCount();
    }

}
