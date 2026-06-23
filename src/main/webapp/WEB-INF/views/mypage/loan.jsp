<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="mypageMenu" value="loan" scope="request"/>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="sub-banner">
    <div class="sub-banner-inner">
        <div class="sub-banner-left">
            <p class="sub-breadcrumb">홈 <span style="opacity:.4;">›</span> 대출현황</p>
            <h2 class="sub-title">대출현황</h2>
        </div>
    </div>
</div>

<div class="sub-container">
    <div class="mypage-layout">
        <%@ include file="/WEB-INF/views/mypage/sidebar.jsp" %>
        <div class="mypage-content">
            <!-- 탭 -->
            <div class="loan-tabs">
                <button class="ltab active">대출중 도서 <span class="ltab-count">3</span></button>
                <button class="ltab">반납완료 <span class="ltab-count">12</span></button>
                <button class="ltab">예약현황 <span class="ltab-count">1</span></button>
                <button class="ltab">연체내역 <span class="ltab-count">0</span></button>
            </div>

            <!-- 대출 요약 카드 -->
            <div class="loan-summary">
                <div class="loan-sum-card">
                    <span class="lsc-label">대출 가능 권수</span>
                    <span class="lsc-val green">2권</span>
                    <span class="lsc-sub">최대 5권</span>
                </div>
                <div class="loan-sum-card">
                    <span class="lsc-label">현재 대출중</span>
                    <span class="lsc-val">3권</span>
                    <span class="lsc-sub">반납기한 내</span>
                </div>
                <div class="loan-sum-card">
                    <span class="lsc-label">연체 도서</span>
                    <span class="lsc-val">0권</span>
                    <span class="lsc-sub">연체 없음</span>
                </div>
                <div class="loan-sum-card">
                    <span class="lsc-label">대출 정지</span>
                    <span class="lsc-val">-</span>
                    <span class="lsc-sub">정지 없음</span>
                </div>
            </div>

            <!-- 대출 목록 -->
            <div class="loan-list">
                <div class="loan-item">
                    <div class="loan-book-thumb">
                        <img src="https://images.unsplash.com/photo-1542601906990-b4d3fb778b09?w=100&q=80" alt="표지">
                    </div>
                    <div class="loan-book-info">
                        <a href="${contextPath}/book/detail.do?bookId=1" class="loan-book-title">숲의 시간 : 자연이 전하는 이야기</a>
                        <p class="loan-book-meta">김민정 저 &nbsp;|&nbsp; 숲빛출판, 2024</p>
                        <p class="loan-book-meta">청구기호 : 811.37-김38ㅅ</p>
                    </div>
                    <div class="loan-dates">
                        <div><span class="date-label">대출일</span><span class="date-val">2024-04-28</span></div>
                        <div><span class="date-label">반납예정일</span><span class="date-val">2024-05-12</span></div>
                    </div>
                    <div class="loan-dday">
                        <span class="dday-badge safe">D-14</span>
                        <button class="btn-renew">연장</button>
                    </div>
                </div>
                <div class="loan-item">
                    <div class="loan-book-thumb">
                        <img src="https://images.unsplash.com/photo-1569932245098-b04e4bab12f8?w=100&q=80" alt="표지">
                    </div>
                    <div class="loan-book-info">
                        <a href="${contextPath}/book/detail.do?bookId=2" class="loan-book-title">지구를 위한 질문</a>
                        <p class="loan-book-meta">이승우 저 &nbsp;|&nbsp; 녹색지식, 2024</p>
                        <p class="loan-book-meta">청구기호 : 539.9-이57ㅈ</p>
                    </div>
                    <div class="loan-dates">
                        <div><span class="date-label">대출일</span><span class="date-val">2024-04-25</span></div>
                        <div><span class="date-label">반납예정일</span><span class="date-val">2024-05-09</span></div>
                    </div>
                    <div class="loan-dday">
                        <span class="dday-badge warning">D-7</span>
                        <button class="btn-renew">연장</button>
                    </div>
                </div>
                <div class="loan-item">
                    <div class="loan-book-thumb">
                        <img src="https://images.unsplash.com/photo-1487088678257-3a541e6e3922?w=100&q=80" alt="표지">
                    </div>
                    <div class="loan-book-info">
                        <a href="${contextPath}/book/detail.do?bookId=4" class="loan-book-title">마음의 정말</a>
                        <p class="loan-book-meta">최민호 저 &nbsp;|&nbsp; 마음터, 2023</p>
                        <p class="loan-book-meta">청구기호 : 189-최28ㅁ</p>
                    </div>
                    <div class="loan-dates">
                        <div><span class="date-label">대출일</span><span class="date-val">2024-04-20</span></div>
                        <div><span class="date-label">반납예정일</span><span class="date-val">2024-05-04</span></div>
                    </div>
                    <div class="loan-dday">
                        <span class="dday-badge safe">D-2</span>
                        <button class="btn-renew">연장</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    .loan-tabs{display:flex;gap:4px;margin-bottom:28px;border-bottom:2px solid var(--border);}
    .ltab{background:none;border:none;padding:12px 20px;font-size:14px;font-weight:500;font-family:'Noto Sans KR',sans-serif;color:var(--text-muted);cursor:pointer;border-bottom:2px solid transparent;margin-bottom:-2px;transition:all .18s;display:flex;align-items:center;gap:6px;}
    .ltab.active{color:var(--green-deep);border-bottom-color:var(--green-deep);font-weight:700;}
    .ltab:hover{color:var(--green-mid);}
    .ltab-count{background:var(--green-pale);color:var(--green-deep);font-size:11px;font-weight:700;padding:1px 7px;border-radius:50px;}
    .ltab.active .ltab-count{background:var(--green-deep);color:#fff;}
    .loan-summary{display:grid;grid-template-columns:repeat(4,1fr);gap:20px;margin-bottom:36px;}
    .loan-sum-card{background:var(--bg-card);border:1px solid var(--border);border-radius:var(--radius-md);padding:28px 20px;text-align:center;}
    .lsc-label{display:block;font-size:12px;color:var(--text-muted);margin-bottom:8px;}
    .lsc-val{display:block;font-size:24px;font-weight:700;color:var(--text-primary);margin-bottom:4px;}
    .lsc-val.green{color:var(--green-deep);}
    .lsc-sub{display:block;font-size:11px;color:var(--text-muted);}
    .loan-list{display:flex;flex-direction:column;gap:16px;}
    .loan-item{display:flex;align-items:center;gap:24px;background:var(--bg-card);border:1px solid var(--border);border-radius:var(--radius-md);padding:24px 28px;transition:box-shadow .18s;}
    .loan-item:hover{box-shadow:var(--shadow-md);}
    .loan-book-thumb{width:64px;height:88px;flex-shrink:0;border-radius:8px;overflow:hidden;}
    .loan-book-thumb img{width:100%;height:100%;object-fit:cover;}
    .loan-book-info{flex:1;}
    .loan-book-title{font-size:15px;font-weight:700;color:var(--text-primary);text-decoration:none;display:block;margin-bottom:5px;}
    .loan-book-title:hover{color:var(--green-deep);}
    .loan-book-meta{font-size:12px;color:var(--text-muted);margin-bottom:3px;}
    .loan-dates{display:flex;flex-direction:column;gap:10px;min-width:160px;}
    .date-label{font-size:11px;color:var(--text-muted);margin-right:6px;}
    .date-val{font-size:13px;color:var(--text-primary);font-weight:500;}
    .loan-dday{display:flex;flex-direction:column;align-items:center;gap:10px;min-width:70px;}
    .dday-badge{font-size:13px;font-weight:700;padding:4px 12px;border-radius:50px;}
    .dday-badge.safe{background:#e8f5e1;color:#2d5a27;}
    .dday-badge.warning{background:#fff7e1;color:#c07800;}
    .dday-badge.danger{background:#fce8e8;color:#c0392b;}
    .btn-renew{background:var(--green-deep);color:#fff;border:none;border-radius:var(--radius-sm);padding:7px 16px;font-size:12px;font-weight:600;font-family:'Noto Sans KR',sans-serif;cursor:pointer;transition:background .18s;}
    .btn-renew:hover{background:var(--green-mid);}
</style>

<script>
document.querySelectorAll('.ltab').forEach(tab=>{
    tab.addEventListener('click',()=>{
        document.querySelectorAll('.ltab').forEach(t=>t.classList.remove('active'));
        tab.classList.add('active');
    });
});
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
