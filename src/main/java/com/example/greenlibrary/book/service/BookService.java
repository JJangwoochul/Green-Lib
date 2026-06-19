package com.example.greenlibrary.book.service;

import java.util.List;

import com.example.greenlibrary.book.vo.BookVO;

//정의만
public interface BookService {
    List<BookVO> getBookList(BookVO vo) throws Exception;
    int getBookCount(BookVO vo) throws Exception;
    BookVO getBookDetail(int bookId) throws Exception;
    List<BookVO> getRecentBookList() throws Exception;    
}
