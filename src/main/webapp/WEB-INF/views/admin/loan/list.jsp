<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="currentMenu" value="loan" scope="request"/>
<%@ include file="/WEB-INF/views/admin/common/header.jsp" %>

<div class="admin-page-header">
    <div>
        <h1 class="admin-page-title">대출 현황</h1>
        <p class="admin-breadcrumb"><a href="${contextPath}/admin/main.do">대시보드</a> &gt; 대출 관리 &gt; 대출 현황</p>
    </div>
    
</div>

<div class="admin-card">
    <p style="font-size:14px;color:var(--text-muted);text-align:center;padding:60px 0;">
        🚧 DB 연동 후 구현 예정입니다.<br><br>
        <span style="font-size:12px;">테이블 생성 완료 후 MyBatis 연동을 진행할게요.</span>
    </p>
</div>

<%@ include file="/WEB-INF/views/admin/common/footer.jsp" %>
