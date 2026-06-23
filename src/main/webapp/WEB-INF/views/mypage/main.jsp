<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="mypageMenu" value="main" scope="request"/>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="sub-banner">
    <div class="sub-banner-inner">
        <div class="sub-banner-left">
            <p class="sub-breadcrumb">홈 <span style="opacity:.4;">›</span> 마이페이지</p>
            <h2 class="sub-title">마이페이지</h2>
        </div>
    </div>
</div>

<div class="sub-container">
    <div class="mypage-layout">
        <%@ include file="/WEB-INF/views/mypage/sidebar.jsp" %>

        <div class="mypage-content">

            <!-- 요약 카드 -->
            <div class="my-summary">
                <div class="my-sum-card">
                    <span class="msc-icon">📚</span>
                    <span class="msc-num">3</span>
                    <span class="msc-label">대출중</span>
                    <a href="${contextPath}/mypage/loan.do" class="msc-link">바로가기 →</a>
                </div>
                <div class="my-sum-card">
                    <span class="msc-icon">⏰</span>
                    <span class="msc-num">1</span>
                    <span class="msc-label">반납 임박</span>
                    <a href="${contextPath}/mypage/loan.do" class="msc-link">바로가기 →</a>
                </div>
                <div class="my-sum-card">
                    <span class="msc-icon">🔖</span>
                    <span class="msc-num">2</span>
                    <span class="msc-label">예약중</span>
                    <a href="${contextPath}/mypage/loan.do" class="msc-link">바로가기 →</a>
                </div>
                <div class="my-sum-card">
                    <span class="msc-icon">❤️</span>
                    <span class="msc-num">7</span>
                    <span class="msc-label">관심도서</span>
                    <a href="${contextPath}/mypage/interest.do" class="msc-link">바로가기 →</a>
                </div>
            </div>

            <!-- 현재 대출 도서 -->
            <div class="my-section">
                <div class="my-section-header">
                    <h3 class="my-section-title">현재 대출 도서</h3>
                    <a href="${contextPath}/mypage/loan.do" class="my-more">전체보기 →</a>
                </div>
                <div class="my-loan-list">
                    <div class="my-loan-item">
                        <img src="https://images.unsplash.com/photo-1542601906990-b4d3fb778b09?w=80&q=80" alt="표지" class="my-loan-img">
                        <div class="my-loan-info">
                            <a href="${contextPath}/book/detail.do?bookId=1" class="my-loan-title-link">숲의 시간 : 자연이 전하는 이야기</a>
                            <p class="my-loan-meta">김민정 저 | 숲빛출판</p>
                            <p class="my-loan-meta">반납예정일 : 2024-05-12</p>
                        </div>
                        <span class="dday-badge safe">D-14</span>
                    </div>
                    <div class="my-loan-item">
                        <img src="https://images.unsplash.com/photo-1569932245098-b04e4bab12f8?w=80&q=80" alt="표지" class="my-loan-img">
                        <div class="my-loan-info">
                            <a href="${contextPath}/book/detail.do?bookId=2" class="my-loan-title-link">지구를 위한 질문</a>
                            <p class="my-loan-meta">이승우 저 | 녹색지식</p>
                            <p class="my-loan-meta">반납예정일 : 2024-05-09</p>
                        </div>
                        <span class="dday-badge warning">D-7</span>
                    </div>
                    <div class="my-loan-item">
                        <img src="https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c?w=80&q=80" alt="표지" class="my-loan-img">
                        <div class="my-loan-info">
                            <a href="${contextPath}/book/detail.do?bookId=3" class="my-loan-title-link">마음의 정말</a>
                            <p class="my-loan-meta">최민호 저 | 마음터</p>
                            <p class="my-loan-meta">반납예정일 : 2024-05-04</p>
                        </div>
                        <span class="dday-badge safe">D-2</span>
                    </div>
                </div>
            </div>

            <!-- 최근 반납 내역 -->
            <div class="my-section">
                <div class="my-section-header">
                    <h3 class="my-section-title">최근 반납 내역</h3>
                    <a href="${contextPath}/mypage/loan.do?statusSearch=RETURNED" class="my-more">전체보기 →</a>
                </div>
                <table class="my-history-table">
                    <thead>
                        <tr><th>도서명</th><th>대출일</th><th>반납일</th><th>상태</th></tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>인공지능과 미래 사회</td>
                            <td>2024-04-01</td>
                            <td>2024-04-14</td>
                            <td><span class="loan-done">반납완료</span></td>
                        </tr>
                        <tr>
                            <td>철학의 즐거움</td>
                            <td>2024-03-15</td>
                            <td>2024-03-29</td>
                            <td><span class="loan-done">반납완료</span></td>
                        </tr>
                        <tr>
                            <td>여행자의 시선</td>
                            <td>2024-03-01</td>
                            <td>2024-03-15</td>
                            <td><span class="loan-done">반납완료</span></td>
                        </tr>
                    </tbody>
                </table>
            </div>

        </div>
    </div>
</div>

<style>
.my-summary{display:grid;grid-template-columns:repeat(4,1fr);gap:16px;margin-bottom:32px;}
.my-sum-card{background:var(--bg-card);border:1px solid var(--border);border-radius:var(--radius-md);padding:22px 16px;text-align:center;transition:box-shadow .18s;}
.my-sum-card:hover{box-shadow:var(--shadow-md);}
.msc-icon{display:block;font-size:24px;margin-bottom:8px;}
.msc-num{display:block;font-size:26px;font-weight:700;color:var(--green-deep);margin-bottom:4px;}
.msc-label{display:block;font-size:12px;color:var(--text-muted);margin-bottom:10px;}
.msc-link{font-size:11px;color:var(--green-mid);text-decoration:none;}
.msc-link:hover{color:var(--green-deep);}
.my-section{margin-bottom:32px;}
.my-section-header{display:flex;justify-content:space-between;align-items:center;margin-bottom:14px;padding-bottom:10px;border-bottom:2px solid var(--green-deep);}
.my-section-title{font-size:15px;font-weight:700;color:var(--text-primary);}
.my-more{font-size:12px;color:var(--text-muted);text-decoration:none;}
.my-more:hover{color:var(--green-deep);}
.my-loan-list{display:flex;flex-direction:column;gap:10px;}
.my-loan-item{display:flex;align-items:center;gap:16px;background:var(--bg-card);border:1px solid var(--border);border-radius:var(--radius-md);padding:16px 18px;transition:box-shadow .18s;}
.my-loan-item:hover{box-shadow:var(--shadow-sm);}
.my-loan-img{width:44px;height:60px;border-radius:5px;object-fit:cover;flex-shrink:0;}
.my-loan-info{flex:1;min-width:0;}
.my-loan-title-link{font-size:13px;font-weight:600;color:var(--text-primary);text-decoration:none;display:block;margin-bottom:3px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;}
.my-loan-title-link:hover{color:var(--green-deep);}
.my-loan-meta{font-size:11px;color:var(--text-muted);margin-bottom:2px;}
.dday-badge{font-size:12px;font-weight:700;padding:4px 12px;border-radius:50px;flex-shrink:0;white-space:nowrap;}
.dday-badge.safe{background:#e8f5e1;color:#2d5a27;}
.dday-badge.warning{background:#fff7e1;color:#c07800;}
.dday-badge.danger{background:#fce8e8;color:#c0392b;}
.my-history-table{width:100%;border-collapse:collapse;}
.my-history-table th{background:var(--green-pale);padding:11px 16px;font-size:12px;font-weight:600;color:var(--text-mid);border:1px solid var(--border);text-align:left;}
.my-history-table td{padding:11px 16px;font-size:13px;color:var(--text-primary);border:1px solid var(--border);}
.my-history-table tr:hover td{background:#fafdf8;}
.loan-done{background:#f0f0f0;color:#666;font-size:11px;font-weight:600;padding:2px 10px;border-radius:50px;}
</style>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
