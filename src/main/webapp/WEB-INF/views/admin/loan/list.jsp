<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="currentMenu" value="loan" scope="request"/>


<%@ include file="/WEB-INF/views/admin/common/header.jsp" %>

<div class="admin-page-header">
    <div>
        <h1 class="admin-page-title">대출 관리</h1>
        <p class="admin-breadcrumb">
            <a href="${contextPath}/admin/main/main.do">대시보드</a> &gt; 대출 관리
        </p>
    </div>
</div>

<%-- 상태 탭 --%>
<div class="loan-admin-tabs">
    <a href="${contextPath}/admin/loan/list.do?statusSearch=LOANED"
       class="lat ${statusSearch == 'LOANED' ? 'active' : ''}">
        대출중
    </a>
    <a href="${contextPath}/admin/loan/list.do?statusSearch=RETURNED"
       class="lat ${statusSearch == 'RETURNED' ? 'active' : ''}">
        반납완료
    </a>
    <a href="${contextPath}/admin/loan/list.do?statusSearch=OVERDUE"
       class="lat ${statusSearch == 'OVERDUE' ? 'active' : ''}">
        연체중
    </a>
</div>

<div class="admin-card">

    <%-- 검색 --%>
    <form action="${contextPath}/admin/loan/list.do" method="get">
        <input type="hidden" name="statusSearch" value="${statusSearch}">
        <div class="admin-search-bar">
            <select name="searchType" class="admin-search-select">
                <option value="all"      ${searchType == 'all'      ? 'selected' : ''}>전체</option>
                <option value="userName" ${searchType == 'userName' ? 'selected' : ''}>회원명</option>
                <option value="title"    ${searchType == 'title'    ? 'selected' : ''}>도서명</option>
            </select>
            <input type="text" name="keyword" class="admin-search-input"
                   placeholder="검색어 입력" value="${keyword}">
            <button type="submit" class="btn-green btn-sm">검색</button>
            <a href="${contextPath}/admin/loan/list.do?statusSearch=${statusSearch}"
               class="btn-outline btn-sm">초기화</a>
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
                    <th style="width:90px;">회원명</th>
                    <th>도서명</th>
                    <th style="width:100px;" class="td-center">청구기호</th>
                    <th style="width:100px;" class="td-center">대출일</th>
                    <th style="width:100px;" class="td-center">반납예정일</th>
                    <th style="width:70px;" class="td-center">연장</th>
                    <th style="width:60px;" class="td-center">상태</th>
                    <th style="width:150px;" class="td-center">관리</th>
                </tr>
            </thead>
            <tbody>
                <c:choose>
                    <c:when test="${empty loanList}">
                        <tr>
                            <td colspan="9"
                                style="text-align:center;padding:40px;color:var(--text-muted);">
                                조회된 대출 내역이 없습니다.
                            </td>
                        </tr>
                    </c:when>
                    <c:otherwise>
                        <c:forEach var="loan" items="${loanList}">
                            <tr>
                                <td class="td-center"
                                    style="color:var(--text-muted);">${loan.loanId}</td>
                                <td>
                                    ${loan.userName}
                                    <span style="font-size:11px;color:var(--text-muted);
                                                 display:block;">${loan.userId}</span>
                                </td>
                                <td>
                                    ${loan.title}
                                    <span style="font-size:11px;color:var(--text-muted);
                                                 display:block;">${loan.author}</span>
                                </td>
                                <td class="td-center"
                                    style="font-size:12px;">${loan.callNo}</td>
                                <td class="td-center">${loan.loanDate}</td>
                                <td class="td-center">
                                    ${loan.dueDate}
                                </td>
                                <td class="td-center">
                                    ${loan.extendCnt}회
                                </td>
                                <td class="td-center">
                                    <c:choose>
                                        <c:when test="${loan.status == 'LOANED'}">
                                            <span class="badge badge-green">대출중</span>
                                        </c:when>
                                        <c:when test="${loan.status == 'RETURNED'}">
                                            <span class="badge badge-gray">반납완료</span>
                                        </c:when>
                                        <c:when test="${loan.status == 'OVERDUE'}">
                                            <span class="badge badge-red">연체중</span>
                                        </c:when>
                                    </c:choose>
                                </td>
                                <td class="td-center">
                                    <%-- 대출중 → 반납처리 + 연체처리 버튼 --%>
                                    <c:if test="${loan.status == 'LOANED'}">
                                        <a href="${contextPath}/admin/loan/return.do?loanId=${loan.loanId}"
                                           class="btn-green btn-sm"
                                           onclick="return confirm('${loan.userName}님의 [${loan.title}] 반납처리 하시겠습니까?')">
                                            반납처리
                                        </a>
                                        <a href="${contextPath}/admin/loan/overdue.do?loanId=${loan.loanId}"
                                           class="btn-red btn-sm"
                                           style="margin-top:4px; display:inline-flex; text-decoration: none;"
                                           onclick="return confirm('연체처리 하시겠습니까?')">
                                            연체처리
                                        </a>
                                    </c:if>
                                    <%-- 연체중 → 반납처리만 --%>
                                    <c:if test="${loan.status == 'OVERDUE'}">
                                        <a href="${contextPath}/admin/loan/return.do?loanId=${loan.loanId}"
                                           class="btn-green btn-sm"
                                           onclick="return confirm('${loan.userName}님의 [${loan.title}] 반납처리 하시겠습니까?')">
                                            반납처리
                                        </a>
                                    </c:if>
                                    <%-- 반납완료 → 버튼 없음 --%>
                                    <c:if test="${loan.status == 'RETURNED'}">
                                        <span style="font-size:12px;color:var(--text-muted);">
                                            ${loan.returnDate}
                                        </span>
                                    </c:if>
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
                <a href="${contextPath}/admin/loan/list.do?page=${currentPage-1}&statusSearch=${statusSearch}&keyword=${keyword}&searchType=${searchType}"
                   class="admin-page-btn">&laquo;</a>
            </c:if>
            <c:forEach begin="1" end="${totalPages}" var="p">
                <a href="${contextPath}/admin/loan/list.do?page=${p}&statusSearch=${statusSearch}&keyword=${keyword}&searchType=${searchType}"
                   class="admin-page-btn ${p == currentPage ? 'active' : ''}">${p}</a>
            </c:forEach>
            <c:if test="${currentPage < totalPages}">
                <a href="${contextPath}/admin/loan/list.do?page=${currentPage+1}&statusSearch=${statusSearch}&keyword=${keyword}&searchType=${searchType}"
                   class="admin-page-btn">&raquo;</a>
            </c:if>
        </div>
    </c:if>

</div>

<style>
.loan-admin-tabs {
    display: flex; gap: 4px;
    margin-bottom: 20px;
    border-bottom: 2px solid var(--border);
}
.lat {
    padding: 10px 24px; font-size: 14px; font-weight: 500;
    color: var(--text-muted); text-decoration: none;
    border-bottom: 2px solid transparent; margin-bottom: -2px;
    transition: all .18s;
}
.lat:hover { color: var(--green-mid); }
.lat.active {
    color: var(--green-deep);
    border-bottom-color: var(--green-deep);
    font-weight: 700;
}
</style>

<%@ include file="/WEB-INF/views/admin/common/footer.jsp" %>
