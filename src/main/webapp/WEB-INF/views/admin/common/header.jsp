<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>푸른숲 도서관 관리자</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${contextPath}/resources/css/admin.css">
</head>
<body>

<!-- 상단 헤더 -->
<header class="admin-header">
    <div class="admin-header-left">
        <button class="sidebar-toggle" id="sidebarToggle" aria-label="메뉴 열기/닫기">
            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <line x1="3" y1="6" x2="21" y2="6"/><line x1="3" y1="12" x2="21" y2="12"/><line x1="3" y1="18" x2="21" y2="18"/>
            </svg>
        </button>
        <a href="${contextPath}/admin/main.do" class="admin-logo">
            <svg width="28" height="28" viewBox="0 0 36 36" fill="none">
                <rect x="5" y="8" width="12" height="20" rx="2" fill="#4a7c40"/>
                <rect x="6" y="9" width="10" height="18" rx="1.5" fill="#6fa35a"/>
                <rect x="5" y="8" width="2" height="20" rx="1" fill="#2d5a27"/>
                <rect x="18" y="8" width="12" height="20" rx="2" fill="#4a7c40"/>
                <rect x="19" y="9" width="10" height="18" rx="1.5" fill="#85bb6e"/>
                <rect x="19" y="8" width="2" height="20" rx="1" fill="#2d5a27"/>
                <path d="M17 6 C17 6 14 3 11 5 C9 6 10 9 12 9 C14 9 17 8 17 6Z" fill="#6fa35a"/>
                <path d="M17 6 C17 6 20 3 23 5 C25 6 24 9 22 9 C20 9 17 8 17 6Z" fill="#4a7c40"/>
            </svg>
            <div>
                <span class="admin-logo-name">푸른숲 도서관</span>
                <span class="admin-logo-badge">ADMIN</span>
            </div>
        </a>
    </div>
    <div class="admin-header-right">
        <a href="${contextPath}/main/main.do" class="header-icon-btn" title="사용자 화면으로">
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"/>
                <polyline points="15 3 21 3 21 9"/><line x1="10" y1="14" x2="21" y2="3"/>
            </svg>
        </a>
        <div class="admin-user-info">
            <div class="admin-avatar">관</div>
            <div>
                <p class="admin-user-name">관리자</p>
                <p class="admin-user-role">ADMIN</p>
            </div>
        </div>
        <a href="${contextPath}/member/login.do" class="header-logout-btn">로그아웃</a>
    </div>
</header>

<!-- 사이드바 -->
<aside class="admin-sidebar" id="adminSidebar">
    <nav class="sidebar-nav">

        <div class="sidebar-section-label">대시보드</div>
        <a href="${contextPath}/admin/main.do" class="sidebar-link ${currentMenu == 'dashboard' ? 'active' : ''}">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <rect x="3" y="3" width="7" height="7"/><rect x="14" y="3" width="7" height="7"/>
                <rect x="14" y="14" width="7" height="7"/><rect x="3" y="14" width="7" height="7"/>
            </svg>
            대시보드
        </a>

        <div class="sidebar-section-label">도서 관리</div>
        <a href="${contextPath}/admin/book/list.do" class="sidebar-link ${currentMenu == 'book' ? 'active' : ''}">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20"/><path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z"/>
            </svg>
            도서 목록
        </a>
        <a href="${contextPath}/admin/book/write.do" class="sidebar-link ${currentMenu == 'bookWrite' ? 'active' : ''}">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <line x1="12" y1="5" x2="12" y2="19"/><line x1="5" y1="12" x2="19" y2="12"/>
            </svg>
            도서 등록
        </a>

        <div class="sidebar-section-label">대출 관리</div>
        <a href="${contextPath}/admin/loan/list.do" class="sidebar-link ${currentMenu == 'loan' ? 'active' : ''}">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <polyline points="9 11 12 14 22 4"/><path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"/>
            </svg>
            대출 현황
        </a>
        <a href="${contextPath}/admin/loan/overdue.do" class="sidebar-link ${currentMenu == 'overdue' ? 'active' : ''}">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <circle cx="12" cy="12" r="10"/><line x1="12" y1="8" x2="12" y2="12"/><line x1="12" y1="16" x2="12.01" y2="16"/>
            </svg>
            연체 관리
        </a>

        <div class="sidebar-section-label">회원 관리</div>
        <a href="${contextPath}/admin/member/list.do" class="sidebar-link ${currentMenu == 'member' ? 'active' : ''}">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"/><circle cx="9" cy="7" r="4"/>
                <path d="M23 21v-2a4 4 0 0 0-3-3.87"/><path d="M16 3.13a4 4 0 0 1 0 7.75"/>
            </svg>
            회원 목록
        </a>

        <div class="sidebar-section-label">게시판 관리</div>
        <a href="${contextPath}/admin/notice/list.do" class="sidebar-link ${currentMenu == 'notice' ? 'active' : ''}">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/>
                <polyline points="14 2 14 8 20 8"/><line x1="16" y1="13" x2="8" y2="13"/><line x1="16" y1="17" x2="8" y2="17"/>
            </svg>
            공지사항
        </a>
        <a href="${contextPath}/admin/wish/list.do" class="sidebar-link ${currentMenu == 'wish' ? 'active' : ''}">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"/>
            </svg>
            희망도서 신청
        </a>

    </nav>
</aside>

<!-- 콘텐츠 래퍼 시작 -->
<div class="admin-content-wrap">
