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
            <a href="${contextPath}/notice/list.do">공지사항</a>
            <a href="${contextPath}/info/guide.do">이용안내</a>
            <a href="${contextPath}/mypage/main.do">마이페이지</a>
        </nav>
        <div class="header-right">
            <%-- 쪽지 아이콘 (로그인 시 표시) --%>
            <div class="msg-wrap" id="msgWrap">
                <button class="msg-btn" id="msgBtn" aria-label="쪽지함" onclick="toggleMsgDrop()">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                        <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"/>
                        <polyline points="22,6 12,13 2,6"/>
                    </svg>
                    <%-- 안 읽은 쪽지 배지 (쪽지 있을 때만 표시) --%>
                    <span class="msg-badge" id="msgBadge">3</span>
                </button>

                <%-- 쪽지 드롭다운 --%>
                <div class="msg-dropdown" id="msgDropdown">
                    <div class="msg-drop-header">
                        <span class="msg-drop-title">받은 쪽지함</span>
                        <a href="${contextPath}/mypage/message.do" class="msg-drop-all">전체보기</a>
                    </div>
                    <ul class="msg-drop-list">
                        <li class="msg-drop-item unread">
                            <div class="msg-drop-dot"></div>
                            <div class="msg-drop-body">
                                <p class="msg-drop-text">📚 [대출안내] 숲의 시간 대출이 완료되었습니다.</p>
                                <span class="msg-drop-date">2024-04-28</span>
                            </div>
                        </li>
                        <li class="msg-drop-item unread">
                            <div class="msg-drop-dot"></div>
                            <div class="msg-drop-body">
                                <p class="msg-drop-text">⏰ [반납안내] 지구를 위한 질문 반납예정일이 7일 남았습니다.</p>
                                <span class="msg-drop-date">2024-05-02</span>
                            </div>
                        </li>
                        <li class="msg-drop-item unread">
                            <div class="msg-drop-dot"></div>
                            <div class="msg-drop-body">
                                <p class="msg-drop-text">✅ [희망도서] 파친코 신청이 승인되었습니다.</p>
                                <span class="msg-drop-date">2024-05-01</span>
                            </div>
                        </li>
                        <li class="msg-drop-item">
                            <div class="msg-drop-dot" style="opacity:0;"></div>
                            <div class="msg-drop-body">
                                <p class="msg-drop-text" style="color:var(--text-muted);">📖 [반납완료] 마음의 정말 반납이 완료되었습니다.</p>
                                <span class="msg-drop-date">2024-04-15</span>
                            </div>
                        </li>
                    </ul>
                    <a href="${contextPath}/mypage/message.do" class="msg-drop-footer">
                        쪽지함으로 이동 →
                    </a>
                </div>
            </div>

            <a href="${contextPath}/member/login.do" class="btn-login">
                <!-- 사람 아이콘 -->
                <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <circle cx="12" cy="8" r="4"/><path d="M4 20c0-4 3.6-7 8-7s8 3 8 7"/>
                </svg>
                로그인
            </a>
            <%-- <button class="btn-menu" aria-label="메뉴">
                <!-- 햄버거 아이콘 -->
                <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <line x1="3" y1="6" x2="21" y2="6"/><line x1="3" y1="12" x2="21" y2="12"/><line x1="3" y1="18" x2="21" y2="18"/>
                </svg>
            </button> --%>
        </div>
    </div>
</header>

<style>
/* ── 쪽지 아이콘 ── */
.msg-wrap {
    position: relative;
}
.msg-btn {
    background: none; border: none; cursor: pointer;
    display: flex; align-items: center; justify-content: center;
    width: 36px; height: 36px;
    border-radius: var(--radius-sm);
    color: var(--text-mid);
    position: relative;
    transition: background .18s;
}
.msg-btn:hover { background: var(--green-pale); color: var(--green-deep); }
.msg-badge {
    position: absolute; top: 2px; right: 2px;
    background: #c0392b; color: #fff;
    font-size: 9px; font-weight: 700;
    min-width: 16px; height: 16px;
    border-radius: 50%;
    display: flex; align-items: center; justify-content: center;
    padding: 0 3px;
    line-height: 1;
}

/* ── 쪽지 드롭다운 ── */
.msg-dropdown {
    display: none;
    position: absolute; top: calc(100% + 10px); right: 0;
    width: 340px;
    background: #fff;
    border: 1px solid var(--border);
    border-radius: var(--radius-md);
    box-shadow: 0 8px 32px rgba(0,0,0,.12);
    z-index: 999;
    overflow: hidden;
}
.msg-dropdown.show { display: block; }
.msg-drop-header {
    display: flex; align-items: center; justify-content: space-between;
    padding: 14px 18px;
    border-bottom: 1px solid var(--border);
    background: var(--green-pale);
}
.msg-drop-title { font-size: 13px; font-weight: 700; color: var(--green-deep); }
.msg-drop-all   { font-size: 11px; color: var(--text-muted); text-decoration: none; }
.msg-drop-all:hover { color: var(--green-deep); }
.msg-drop-list  { list-style: none; }
.msg-drop-item  {
    display: flex; align-items: flex-start; gap: 10px;
    padding: 12px 18px;
    border-bottom: 1px solid #f5f5f5;
    cursor: pointer;
    transition: background .15s;
}
.msg-drop-item:hover { background: #fafdf8; }
.msg-drop-item.unread { background: #f7fbf4; }
.msg-drop-dot {
    width: 7px; height: 7px;
    border-radius: 50%;
    background: var(--green-deep);
    flex-shrink: 0;
    margin-top: 5px;
}
.msg-drop-body  { flex: 1; min-width: 0; }
.msg-drop-text  {
    font-size: 12px; color: var(--text-primary);
    line-height: 1.5; margin-bottom: 3px;
    white-space: nowrap; overflow: hidden; text-overflow: ellipsis;
}
.msg-drop-date  { font-size: 10px; color: var(--text-muted); }
.msg-drop-footer {
    display: block; text-align: center;
    padding: 12px;
    font-size: 12px; font-weight: 600;
    color: var(--green-deep);
    text-decoration: none;
    border-top: 1px solid var(--border);
    background: var(--bg-card);
    transition: background .15s;
}
.msg-drop-footer:hover { background: var(--green-pale); }
</style>

<script>
function toggleMsgDrop() {
    document.getElementById('msgDropdown').classList.toggle('show');
}
// 드롭다운 외부 클릭 시 닫기
document.addEventListener('click', function(e) {
    const wrap = document.getElementById('msgWrap');
    if (wrap && !wrap.contains(e.target)) {
        const drop = document.getElementById('msgDropdown');
        if (drop) drop.classList.remove('show');
    }
});
</script>

