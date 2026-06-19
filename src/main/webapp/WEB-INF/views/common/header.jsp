<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>그린 도서관 - GREEN LIBRARY</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${contextPath}/resources/css/greenlibrary.css">
</head>

<body>
<header>
    <div class="header-inner">
        <a href="${contextPath}/main/main.do" class="logo">
            <!-- SVG 로고 아이콘 -->
            <svg class="logo-icon" viewBox="0 0 36 36" fill="none" xmlns="http://www.w3.org/2000/svg">
                <!-- 책 아이콘 -->
                <rect x="5" y="8" width="12" height="20" rx="2" fill="#4a7c40"/>
                <rect x="6" y="9" width="10" height="18" rx="1.5" fill="#6fa35a"/>
                <rect x="5" y="8" width="2" height="20" rx="1" fill="#2d5a27"/>
                <rect x="18" y="8" width="12" height="20" rx="2" fill="#4a7c40"/>
                <rect x="19" y="9" width="10" height="18" rx="1.5" fill="#85bb6e"/>
                <rect x="19" y="8" width="2" height="20" rx="1" fill="#2d5a27"/>
                <!-- 잎사귀 -->
                <path d="M17 6 C17 6 14 3 11 5 C9 6 10 9 12 9 C14 9 17 8 17 6Z" fill="#6fa35a"/>
                <path d="M17 6 C17 6 20 3 23 5 C25 6 24 9 22 9 C20 9 17 8 17 6Z" fill="#4a7c40"/>
                <line x1="17" y1="6" x2="17" y2="9" stroke="#2d5a27" stroke-width="1" stroke-linecap="round"/>
            </svg>
            <div class="logo-text">
                <span class="main-name">그린 도서관</span>
                <span class="sub-name">GREEN LIBRARY</span>
            </div>
        </a>
        <nav>
            <a href="${contextPath}/book/search.do">도서검색</a>
            <a href="${contextPath}/loan/list.do">대출현황</a>
            <a href="${contextPath}/notice/list.do">공지사항</a>
            <a href="${contextPath}/info/guide.do">이용안내</a>
            <a href="${contextPath}/mypage/main.do">마이페이지</a>
        </nav>
        <div class="header-right">
            <a href="${contextPath}/member/login.do" class="btn-login">
                <!-- 사람 아이콘 -->
                <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <circle cx="12" cy="8" r="4"/><path d="M4 20c0-4 3.6-7 8-7s8 3 8 7"/>
                </svg>
                로그인
            </a>
            <button class="btn-menu" aria-label="메뉴">
                <!-- 햄버거 아이콘 -->
                <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <line x1="3" y1="6" x2="21" y2="6"/><line x1="3" y1="12" x2="21" y2="12"/><line x1="3" y1="18" x2="21" y2="18"/>
                </svg>
            </button>
        </div>
    </div>
</header>
</body>

