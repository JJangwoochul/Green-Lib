package com.example.greenlibrary.book.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.SelectProvider;

import com.example.greenlibrary.book.vo.BookVO;

@Mapper
public interface BookDAO {
    // 도서 목록 (페이징 + 검색)
    @SelectProvider(type = BookDAOImpl.class, method = "getBookList")
    List<BookVO> getBookList(BookVO vo) throws Exception;

    // 전체 건수 (페이징용)
    @SelectProvider(type = BookDAOImpl.class, method = "getBookCount")
    int getBookCount(BookVO vo) throws Exception;

    // TODO: 박유정 - 도서 상세
    @SelectProvider(type = BookDAOImpl.class, method = "getBookDetail")
    BookVO getBookDetail(int bookId) throws Exception;

    // TODO: 박유정 - 최근 등록 도서 (메인페이지용)
    @SelectProvider(type = BookDAOImpl.class, method = "getRecentBookList")
    List<BookVO> getRecentBookList() throws Exception;  
    
    // TODO: 박유정 - 추가적인 기능이 필요하다면 이곳에 추가한 후 book/dao/BookDAOImpl 에 쿼리필요
    // 그리고 bookService 에서 사용(jsp 에서 controller 호출 -> controller에서 service 실행 -> service에서 dao에 쿼리 실행)
}
