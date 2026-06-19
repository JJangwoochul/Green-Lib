package com.example.greenlibrary.admin.book.service;

import com.example.greenlibrary.book.vo.BookVO;

import java.util.List;

public interface AdminBookService {

    int insertBook(BookVO vo) throws Exception;

    int updateBook(BookVO vo) throws Exception;

    int deleteBook(int bookId) throws Exception;

    List<BookVO> getBookList(BookVO vo) throws Exception;

    int getBookCount(BookVO vo) throws Exception;

    BookVO getBookDetail(int bookId) throws Exception;

    int getTotalBookCount() throws Exception;

}
