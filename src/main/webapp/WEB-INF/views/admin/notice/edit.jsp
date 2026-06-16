<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="currentMenu" value="notice" scope="request"/>
<%@ include file="/WEB-INF/views/admin/common/header.jsp" %>

<div class="admin-page-header">
    <div>
        <h1 class="admin-page-title">공지사항 수정</h1>
        <p class="admin-breadcrumb"><a href="${contextPath}/admin/main.do">대시보드</a> &gt; <a href="${contextPath}/admin/notice/list.do">공지사항</a> &gt; 수정</p>
    </div>
</div>

<div class="admin-card">
    <form action="${contextPath}/admin/notice/editProc.do" method="post">
        <input type="hidden" name="noticeId" value="${param.noticeId}">
        <div class="admin-form-grid">
            <div class="admin-form-group">
                <label class="admin-form-label">분류 <span class="required">*</span></label>
                <select name="category" class="admin-form-select">
                    <option value="공지" selected>공지</option>
                    <option value="행사강연">행사/강연</option>
                    <option value="도서안내">도서안내</option>
                    <option value="휴관안내">휴관안내</option>
                </select>
            </div>
            <div class="admin-form-group">
                <label class="admin-form-label">상단 고정</label>
                <div style="display:flex;align-items:center;gap:8px;padding-top:6px;">
                    <input type="checkbox" name="isFixed" value="Y" id="isFixed" checked style="accent-color:var(--green-deep);width:16px;height:16px;">
                    <label for="isFixed" style="font-size:13px;color:var(--text-mid);cursor:pointer;">상단에 고정합니다</label>
                </div>
            </div>
            <div class="admin-form-group full">
                <label class="admin-form-label">제목 <span class="required">*</span></label>
                <input type="text" name="title" class="admin-form-input" value="5월 휴관일 및 운영시간 안내">
            </div>
            <div class="admin-form-group full">
                <label class="admin-form-label">내용 <span class="required">*</span></label>
                <textarea name="content" class="admin-form-textarea" style="min-height:320px;">5월 휴관일 및 운영시간을 안내해 드립니다.</textarea>
            </div>
        </div>
        <div class="admin-form-actions">
            <a href="${contextPath}/admin/notice/list.do" class="btn-outline">취소</a>
            <button type="submit" class="btn-green">저장하기</button>
        </div>
    </form>
</div>

<%@ include file="/WEB-INF/views/admin/common/footer.jsp" %>
