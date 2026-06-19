package com.example.greenlibrary.admin.book.dao;

import com.example.greenlibrary.book.vo.BookVO;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.UpdateProvider;

import java.util.List;

@Mapper
public interface AdminBookDAO {

    @InsertProvider(type = AdminBookDAOImpl.class, method = "insertBook")
    int insertBook(BookVO vo) throws Exception;

    @UpdateProvider(type = AdminBookDAOImpl.class, method = "updateBook")
    int updateBook(BookVO vo) throws Exception;

    @UpdateProvider(type = AdminBookDAOImpl.class, method = "deleteBook")
    int deleteBook(int bookId) throws Exception;

    @SelectProvider(type = AdminBookDAOImpl.class, method = "getBookList")
    List<BookVO> getBookList(BookVO vo) throws Exception;

    @SelectProvider(type = AdminBookDAOImpl.class, method = "getBookCount")
    int getBookCount(BookVO vo) throws Exception;

    @SelectProvider(type = AdminBookDAOImpl.class, method = "getBookDetail")
    BookVO getBookDetail(int bookId) throws Exception;

    @SelectProvider(type = AdminBookDAOImpl.class, method = "getTotalBookCount")
    int getTotalBookCount() throws Exception;

}
