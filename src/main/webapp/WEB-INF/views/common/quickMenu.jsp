<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
 
<body>    
<div class="quick-section">
    <div class="quick-card">
        <a href="#" class="quick-item">
            <!-- 도서검색 아이콘 -->
            <svg class="quick-icon" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                <rect x="8" y="10" width="22" height="28" rx="3" fill="#e8f2e4" stroke="#4a7c40" stroke-width="1.8"/>
                <line x1="13" y1="18" x2="25" y2="18" stroke="#4a7c40" stroke-width="1.5" stroke-linecap="round"/>
                <line x1="13" y1="23" x2="25" y2="23" stroke="#4a7c40" stroke-width="1.5" stroke-linecap="round"/>
                <line x1="13" y1="28" x2="20" y2="28" stroke="#4a7c40" stroke-width="1.5" stroke-linecap="round"/>
                <circle cx="32" cy="32" r="7" fill="none" stroke="#2d5a27" stroke-width="2"/>
                <line x1="37" y1="37" x2="41" y2="41" stroke="#2d5a27" stroke-width="2" stroke-linecap="round"/>
            </svg>
            <div class="quick-text">
                <strong>도서검색</strong>
                <span>원하는 도서를<br>검색해 보세요</span>
            </div>
            <span class="quick-arrow">→</span>
        </a>
        <a href="#" class="quick-item">
            <!-- 대출조회 아이콘 -->
            <svg class="quick-icon" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                <rect x="7" y="12" width="16" height="24" rx="2.5" fill="#e8f2e4" stroke="#4a7c40" stroke-width="1.8"/>
                <rect x="7" y="12" width="4" height="24" rx="2" fill="#4a7c40"/>
                <rect x="19" y="12" width="16" height="24" rx="2.5" fill="#d4e8cc" stroke="#4a7c40" stroke-width="1.8"/>
                <rect x="19" y="12" width="4" height="24" rx="2" fill="#4a7c40"/>
                <path d="M30 28 L38 24 L38 34 Z" fill="#2d5a27"/>
            </svg>
            <div class="quick-text">
                <strong>대출조회</strong>
                <span>나의 대출 현황을<br>확인하세요</span>
            </div>
            <span class="quick-arrow">→</span>
        </a>
        <a href="#" class="quick-item">
            <!-- 희망도서신청 아이콘 -->
            <svg class="quick-icon" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                <rect x="8" y="8" width="28" height="32" rx="3" fill="#e8f2e4" stroke="#4a7c40" stroke-width="1.8"/>
                <line x1="14" y1="20" x2="30" y2="20" stroke="#4a7c40" stroke-width="1.5" stroke-linecap="round"/>
                <line x1="14" y1="27" x2="24" y2="27" stroke="#4a7c40" stroke-width="1.5" stroke-linecap="round"/>
                <circle cx="34" cy="34" r="8" fill="#2d5a27"/>
                <line x1="34" y1="30" x2="34" y2="38" stroke="white" stroke-width="2" stroke-linecap="round"/>
                <line x1="30" y1="34" x2="38" y2="34" stroke="white" stroke-width="2" stroke-linecap="round"/>
            </svg>
            <div class="quick-text">
                <strong>희망도서신청</strong>
                <span>읽고 싶은 도서를<br>신청하세요</span>
            </div>
            <span class="quick-arrow">→</span>
        </a>
        <a href="#" class="quick-item">
            <!-- 공지사항 아이콘 -->
            <svg class="quick-icon" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M24 10 C24 10 12 14 12 22 L12 30 C12 31.1 12.9 32 14 32 L34 32 C35.1 32 36 31.1 36 30 L36 22 C36 14 24 10 24 10Z" fill="#e8f2e4" stroke="#4a7c40" stroke-width="1.8" stroke-linejoin="round"/>
                <rect x="12" y="30" width="24" height="3" rx="1.5" fill="#4a7c40"/>
                <rect x="21" y="35" width="6" height="3" rx="1.5" fill="#4a7c40"/>
                <circle cx="24" cy="21" r="2" fill="#2d5a27"/>
                <line x1="24" y1="24" x2="24" y2="28" stroke="#2d5a27" stroke-width="2" stroke-linecap="round"/>
            </svg>
            <div class="quick-text">
                <strong>공지사항</strong>
                <span>도서관의 새로운 소식을<br>확인하세요</span>
            </div>
            <span class="quick-arrow">→</span>
        </a>
    </div>
</div>
</body>
</html>
 
