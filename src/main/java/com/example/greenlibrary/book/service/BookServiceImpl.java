package com.example.greenlibrary.book.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.example.greenlibrary.book.dao.BookDAO;
import com.example.greenlibrary.book.vo.BookVO;

//book/service/BookService.java 구현
@Service("bookService")
@Transactional(propagation = Propagation.REQUIRED)
public class BookServiceImpl implements BookService {
    @Autowired
    private BookDAO bookDAO;

    // 도서 목록
    @Override
    public List<BookVO> getBookList(BookVO vo) throws Exception {
        return bookDAO.getBookList(vo);
    }

    // 전체 건수
    @Override
    public int getBookCount(BookVO vo) throws Exception {
        return bookDAO.getBookCount(vo);
    }

    // TODO: 박유정
    // BookDAOImpl의 getBookDetail() SQL 완성 후 아래 주석 제거
    @Override
    public BookVO getBookDetail(int bookId) throws Exception {
        // return bookDAO.getBookDetail(bookId);
        return null; // SQL 완성 후 위 코드로 교체필요
    }

    // TODO: 박유정
    // BookDAOImpl의 getRecentBookList() SQL 완성 후 아래 주석 제거
    @Override
    public List<BookVO> getRecentBookList() throws Exception {
        // return bookDAO.getRecentBookList();
        return null; // SQL 완성 후 위 코드로 교체필요
    }    
}
