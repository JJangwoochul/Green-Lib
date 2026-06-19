<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="currentMenu" value="book" scope="request"/>
<%@ include file="/WEB-INF/views/admin/common/header.jsp" %>

<div class="admin-page-header">
    <div>
        <h1 class="admin-page-title">도서 관리</h1>
        <p class="admin-breadcrumb">
            <a href="${contextPath}/admin/main/main.do">대시보드</a> &gt; 도서 관리
        </p>
    </div>
    <a href="${contextPath}/admin/book/write.do" class="btn-green">
        <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5">
            <line x1="12" y1="5" x2="12" y2="19"/><line x1="5" y1="12" x2="19" y2="12"/>
        </svg>
        도서 등록
    </a>
</div>

<%-- 등록/수정/삭제 완료 메시지 --%>
<c:if test="${not empty msg}">
    <div style="background:#e8f5e1;border:1px solid #b2d8b2;border-radius:8px;
                padding:12px 20px;margin-bottom:20px;font-size:13px;color:#2d5a27;font-weight:600;">
        ✅ ${msg}
    </div>
</c:if>

<div class="admin-card">

    <%-- 검색 --%>
    <form action="${contextPath}/admin/book/list.do" method="get">
        <div class="admin-search-bar">
            <select name="searchType" class="admin-search-select">
                <option value="all"       ${searchType == 'all'       ? 'selected' : ''}>전체</option>
                <option value="title"     ${searchType == 'title'     ? 'selected' : ''}>도서명</option>
                <option value="author"    ${searchType == 'author'    ? 'selected' : ''}>저자</option>
            </select>
            <input type="text" name="keyword" class="admin-search-input"
                   placeholder="검색어 입력" value="${keyword}">
            <button type="submit" class="btn-green btn-sm">검색</button>
            <a href="${contextPath}/admin/book/list.do" class="btn-outline btn-sm">초기화</a>
            <span style="font-size:12px;color:var(--text-muted);margin-left:auto;">
                총 <strong>${totalCount}</strong>건
            </span>
        </div>
    </form>

    <%-- 목록 테이블 --%>
    <div class="admin-table-wrap">
        <table class="admin-table">
            <thead>
                <tr>
                    <th class="td-center" style="width:60px;">번호</th>
                    <th>도서명</th>
                    <th style="width:100px;">저자</th>
                    <th style="width:100px;">출판사</th>
                    <th style="width:80px;" class="td-center">발행연도</th>
                    <th style="width:80px;" class="td-center">소장</th>
                    <th style="width:80px;" class="td-center">대출중</th>
                    <th style="width:110px;" class="td-center">등록일</th>
                    <th style="width:120px;" class="td-center">관리</th>
                </tr>
            </thead>
            <tbody>
                <c:choose>
                    <c:when test="${empty bookList}">
                        <tr>
                            <td colspan="9"
                                style="text-align:center;padding:40px;color:var(--text-muted);">
                                등록된 도서가 없습니다.
                            </td>
                        </tr>
                    </c:when>
                    <c:otherwise>
                        <c:forEach var="book" items="${bookList}">
                            <tr>
                                <td class="td-center"
                                    style="color:var(--text-muted);">${book.bookId}</td>
                                <td>
                                    <a href="${contextPath}/admin/book/edit.do?bookId=${book.bookId}"
                                       style="text-decoration:none;color:var(--text-primary);font-weight:500;">
                                        ${book.title}
                                    </a>
                                    <span style="display:block;font-size:11px;color:var(--text-muted);">
                                        ${book.callNo}
                                    </span>
                                </td>
                                <td>${book.author}</td>
                                <td style="font-size:12px;">${book.publisher}</td>
                                <td class="td-center">${book.pubYear}</td>
                                <td class="td-center">${book.totalCnt}권</td>
                                <td class="td-center">
                                    <c:choose>
                                        <c:when test="${book.loanCnt > 0}">
                                            <span class="badge badge-amber">${book.loanCnt}권</span>
                                        </c:when>
                                        <c:otherwise>
                                            <span style="color:var(--text-muted);font-size:12px;">-</span>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td class="td-center">${book.regDate}</td>
                                <td class="td-center">
                                    <a href="${contextPath}/admin/book/edit.do?bookId=${book.bookId}"
                                       class="btn-outline btn-sm">수정</a>
                                    <a href="${contextPath}/admin/book/delete.do?bookId=${book.bookId}"
                                       class="btn-red btn-sm"
                                       style="margin-top:4px;text-decoration:none;display:inline-block;"
                                       onclick="return confirm('[${book.title}] 도서를 삭제하시겠습니까?')">
                                        삭제
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
            </tbody>
        </table>
    </div>

    <%-- 페이징 --%>
    <c:if test="${totalPages > 0}">
        <div class="admin-paging">
            <c:if test="${currentPage > 1}">
                <a href="${contextPath}/admin/book/list.do?page=${currentPage-1}&keyword=${keyword}&searchType=${searchType}"
                   class="admin-page-btn">&laquo;</a>
            </c:if>
            <c:forEach begin="1" end="${totalPages}" var="p">
                <a href="${contextPath}/admin/book/list.do?page=${p}&keyword=${keyword}&searchType=${searchType}"
                   class="admin-page-btn ${p == currentPage ? 'active' : ''}">${p}</a>
            </c:forEach>
            <c:if test="${currentPage < totalPages}">
                <a href="${contextPath}/admin/book/list.do?page=${currentPage+1}&keyword=${keyword}&searchType=${searchType}"
                   class="admin-page-btn">&raquo;</a>
            </c:if>
        </div>
    </c:if>

</div>

<%@ include file="/WEB-INF/views/admin/common/footer.jsp" %>
