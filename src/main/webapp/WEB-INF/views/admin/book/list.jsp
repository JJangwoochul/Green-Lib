<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="currentMenu" value="book" scope="request"/>
<%@ include file="/WEB-INF/views/admin/common/header.jsp" %>

<div class="admin-page-header">
    <div>
        <h1 class="admin-page-title">도서 목록</h1>
        <p class="admin-breadcrumb"><a href="${contextPath}/admin/main.do">대시보드</a> &gt; 도서 관리 &gt; 도서 목록</p>
    </div>
    <a href="${contextPath}/admin/book/write.do" class="btn-green"><svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><line x1="12" y1="5" x2="12" y2="19"/><line x1="5" y1="12" x2="19" y2="12"/></svg> 도서 등록</a>
</div>

<div class="admin-card">
    <p style="font-size:14px;color:var(--text-muted);text-align:center;padding:60px 0;">
        🚧 DB 연동 후 구현 예정입니다.<br><br>
        <span style="font-size:12px;">테이블 생성 완료 후 MyBatis 연동을 진행할게요.</span>
    </p>
</div>

<%@ include file="/WEB-INF/views/admin/common/footer.jsp" %>
