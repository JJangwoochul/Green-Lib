<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="currentMenu" value="notice" scope="request"/>
<%@ include file="/WEB-INF/views/admin/common/header.jsp" %>

<div class="admin-page-header">
    <div>
        <h1 class="admin-page-title">공지사항 등록</h1>
        <p class="admin-breadcrumb"><a href="${contextPath}/admin/main.do">대시보드</a> &gt; <a href="${contextPath}/admin/notice/list.do">공지사항</a> &gt; 등록</p>
    </div>
</div>

<div class="admin-card">
    <form action="${contextPath}/admin/notice/writeProc.do" method="post">
        <div class="admin-form-grid">
            <div class="admin-form-group">
                <label class="admin-form-label">분류 <span class="required">*</span></label>
                <select name="category" class="admin-form-select">
                    <option value="공지">공지</option>
                    <option value="행사강연">행사/강연</option>
                    <option value="도서안내">도서안내</option>
                    <option value="휴관안내">휴관안내</option>
                </select>
            </div>
            <div class="admin-form-group">
                <label class="admin-form-label">상단 고정</label>
                <div style="display:flex;align-items:center;gap:8px;padding-top:6px;">
                    <input type="checkbox" name="isFixed" value="Y" id="isFixed" style="accent-color:var(--green-deep);width:16px;height:16px;">
                    <label for="isFixed" style="font-size:13px;color:var(--text-mid);cursor:pointer;">상단에 고정합니다</label>
                </div>
            </div>
            <div class="admin-form-group full">
                <label class="admin-form-label">제목 <span class="required">*</span></label>
                <input type="text" name="title" class="admin-form-input" placeholder="제목을 입력하세요" maxlength="200">
            </div>
            <div class="admin-form-group full">
                <label class="admin-form-label">내용 <span class="required">*</span></label>
                <textarea name="content" class="admin-form-textarea" style="min-height:320px;" placeholder="내용을 입력하세요"></textarea>
            </div>
        </div>
        <div class="admin-form-actions">
            <a href="${contextPath}/admin/notice/list.do" class="btn-outline">취소</a>
            <button type="submit" class="btn-green">등록하기</button>
        </div>
    </form>
</div>

<%@ include file="/WEB-INF/views/admin/common/footer.jsp" %>
