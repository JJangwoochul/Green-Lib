<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="sub-banner">
    <div class="sub-banner-inner">
        <p class="sub-breadcrumb">홈 &gt; 마이페이지</p>
        <h2 class="sub-title">마이페이지</h2>
    </div>
</div>

<div class="sub-container">
    <div class="mypage-layout">
        <!-- 사이드 -->
        <aside class="mypage-side">
            <div class="my-profile-card">
                <div class="my-avatar">
                    <svg width="36" height="36" viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="1.5">
                        <circle cx="12" cy="8" r="4"/><path d="M4 20c0-4 3.6-7 8-7s8 3 8 7"/>
                    </svg>
                </div>
                <p class="my-name">홍길동 님</p>
                <p class="my-id">greenlibrary@email.com</p>
            </div>
            <ul class="mypage-menu">
                <li class="active"><a href="${contextPath}/mypage/main.do">마이페이지 홈</a></li>
                <li><a href="${contextPath}/loan/list.do">대출현황</a></li>
                <li><a href="${contextPath}/mypage/wishlist.do">관심도서</a></li>
                <li><a href="${contextPath}/mypage/history.do">이용내역</a></li>
                <li><a href="${contextPath}/mypage/edit.do">개인정보수정</a></li>
            </ul>
        </aside>

        <!-- 본문 -->
        <div class="mypage-content">
            <!-- 요약 카드 -->
            <div class="my-summary">
                <div class="my-sum-card">
                    <span class="msc-icon">📚</span>
                    <span class="msc-num">3</span>
                    <span class="msc-label">대출중</span>
                    <a href="${contextPath}/loan/list.do" class="msc-link">바로가기 →</a>
                </div>
                <div class="my-sum-card">
                    <span class="msc-icon">⏰</span>
                    <span class="msc-num">1</span>
                    <span class="msc-label">반납 임박</span>
                    <a href="${contextPath}/loan/list.do" class="msc-link">바로가기 →</a>
                </div>
                <div class="my-sum-card">
                    <span class="msc-icon">🔖</span>
                    <span class="msc-num">0</span>
                    <span class="msc-label">예약중</span>
                    <a href="${contextPath}/loan/list.do" class="msc-link">바로가기 →</a>
                </div>
                <div class="my-sum-card">
                    <span class="msc-icon">❤️</span>
                    <span class="msc-num">7</span>
                    <span class="msc-label">관심도서</span>
                    <a href="${contextPath}/mypage/wishlist.do" class="msc-link">바로가기 →</a>
                </div>
            </div>

            <!-- 현재 대출 도서 -->
            <div class="my-section">
                <div class="my-section-header">
                    <h3 class="my-section-title">현재 대출 도서</h3>
                    <a href="${contextPath}/loan/list.do" class="my-more">전체보기 →</a>
                </div>
                <div class="my-loan-list">
                    <div class="my-loan-item">
                        <img src="https://images.unsplash.com/photo-1542601906990-b4d3fb778b09?w=80&q=80" alt="표지" class="my-loan-img">
                        <div class="my-loan-info">
                            <p class="my-loan-title">숲의 시간</p>
                            <p class="my-loan-meta">반납예정 2024-05-12</p>
                        </div>
                        <span class="dday-badge safe">D-14</span>
                    </div>
                    <div class="my-loan-item">
                        <img src="https://images.unsplash.com/photo-1569932245098-b04e4bab12f8?w=80&q=80" alt="표지" class="my-loan-img">
                        <div class="my-loan-info">
                            <p class="my-loan-title">지구를 위한 질문</p>
                            <p class="my-loan-meta">반납예정 2024-05-09</p>
                        </div>
                        <span class="dday-badge warning">D-7</span>
                    </div>
                    <div class="my-loan-item">
                        <img src="https://images.unsplash.com/photo-1487088678257-3a541e6e3922?w=80&q=80" alt="표지" class="my-loan-img">
                        <div class="my-loan-info">
                            <p class="my-loan-title">마음의 정말</p>
                            <p class="my-loan-meta">반납예정 2024-05-04</p>
                        </div>
                        <span class="dday-badge safe">D-2</span>
                    </div>
                </div>
            </div>

            <!-- 최근 이용내역 -->
            <div class="my-section">
                <div class="my-section-header">
                    <h3 class="my-section-title">최근 이용내역</h3>
                    <a href="${contextPath}/mypage/history.do" class="my-more">전체보기 →</a>
                </div>
                <table class="my-history-table">
                    <thead><tr><th>도서명</th><th>대출일</th><th>반납일</th><th>상태</th></tr></thead>
                    <tbody>
                        <tr><td>인공지능과 미래 사회</td><td>2024-04-01</td><td>2024-04-14</td><td><span class="loan-done">반납완료</span></td></tr>
                        <tr><td>철학의 즐거움</td><td>2024-03-15</td><td>2024-03-29</td><td><span class="loan-done">반납완료</span></td></tr>
                        <tr><td>여행자의 시선</td><td>2024-03-01</td><td>2024-03-15</td><td><span class="loan-done">반납완료</span></td></tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<style>
.mypage-layout{display:grid;grid-template-columns:210px 1fr;gap:36px;}
.my-profile-card{background:var(--green-deep);border-radius:var(--radius-md);padding:28px 20px;text-align:center;margin-bottom:14px;}
.my-avatar{width:56px;height:56px;background:rgba(255,255,255,.25);border-radius:50%;display:flex;align-items:center;justify-content:center;margin:0 auto 10px;}
.my-name{color:#fff;font-size:15px;font-weight:700;margin-bottom:3px;}
.my-id{color:rgba(255,255,255,.7);font-size:11px;}
.mypage-menu{list-style:none;background:var(--bg-card);border:1px solid var(--border);border-radius:var(--radius-md);overflow:hidden;}
.mypage-menu li a{display:block;padding:14px 18px;font-size:13px;color:var(--text-mid);text-decoration:none;border-bottom:1px solid var(--border);transition:all .18s;}
.mypage-menu li:last-child a{border-bottom:none;}
.mypage-menu li a:hover{background:var(--green-pale);color:var(--green-deep);}
.mypage-menu li.active a{background:var(--green-pale);color:var(--green-deep);font-weight:700;border-left:3px solid var(--green-deep);}
.my-summary{display:grid;grid-template-columns:repeat(4,1fr);gap:16px;margin-bottom:36px;}
.my-sum-card{background:var(--bg-card);border:1px solid var(--border);border-radius:var(--radius-md);padding:26px 20px;text-align:center;}
.msc-icon{display:block;font-size:22px;margin-bottom:6px;}
.msc-num{display:block;font-size:24px;font-weight:700;color:var(--green-deep);margin-bottom:2px;}
.msc-label{display:block;font-size:12px;color:var(--text-muted);margin-bottom:10px;}
.msc-link{font-size:11px;color:var(--green-mid);text-decoration:none;}
.my-section{margin-bottom:36px;}
.my-section-header{display:flex;justify-content:space-between;align-items:center;margin-bottom:16px;}
.my-section-title{font-size:15px;font-weight:700;color:var(--text-primary);}
.my-more{font-size:12px;color:var(--text-muted);text-decoration:none;}
.my-more:hover{color:var(--green-deep);}
.my-loan-list{display:flex;flex-direction:column;gap:12px;}
.my-loan-item{display:flex;align-items:center;gap:16px;background:var(--bg-card);border:1px solid var(--border);border-radius:var(--radius-md);padding:18px 20px;}
.my-loan-img{width:42px;height:58px;border-radius:5px;object-fit:cover;flex-shrink:0;}
.my-loan-info{flex:1;}
.my-loan-title{font-size:13px;font-weight:600;color:var(--text-primary);margin-bottom:3px;}
.my-loan-meta{font-size:11px;color:var(--text-muted);}
.dday-badge{font-size:12px;font-weight:700;padding:3px 10px;border-radius:50px;flex-shrink:0;}
.dday-badge.safe{background:#e8f5e1;color:#2d5a27;}
.dday-badge.warning{background:#fff7e1;color:#c07800;}
.my-history-table{width:100%;border-collapse:collapse;}
.my-history-table th{background:var(--green-pale);padding:13px 18px;font-size:12px;font-weight:600;color:var(--text-mid);border:1px solid var(--border);text-align:left;}
.my-history-table td{padding:13px 18px;font-size:13px;color:var(--text-primary);border:1px solid var(--border);}
.loan-done{background:#f0f0f0;color:#666;font-size:11px;font-weight:600;padding:2px 8px;border-radius:50px;}
</style>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
