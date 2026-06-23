<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="sub-banner">
    <div class="sub-banner-inner">
        <div class="sub-banner-left">
            <p class="sub-breadcrumb">홈 <span style="opacity:.4;">›</span> 회원가입</p>
            <h2 class="sub-title">회원가입</h2>
        </div>
    </div>
</div>

<div class="sub-container">
    <div class="join-wrap">

        <%-- 단계 표시 --%>
        <div class="join-steps">
            <div class="step done">
                <span class="step-num">✓</span>
                <span class="step-txt">약관동의</span>
            </div>
            <div class="step-line done"></div>
            <div class="step done">
                <span class="step-num">✓</span>
                <span class="step-txt">정보입력</span>
            </div>
            <div class="step-line done"></div>
            <div class="step active">
                <span class="step-num">3</span>
                <span class="step-txt">가입완료</span>
            </div>
        </div>

        <%-- 완료 카드 --%>
        <div class="join-card" style="text-align:center;padding:60px 44px;">

            <%-- 체크 아이콘 애니메이션 --%>
            <div class="complete-icon-wrap">
                <svg class="complete-check" viewBox="0 0 80 80" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <circle cx="40" cy="40" r="38" stroke="#2d5a27" stroke-width="3" fill="#e8f5e1"/>
                    <polyline points="22,42 35,55 58,28" stroke="#2d5a27" stroke-width="4"
                              stroke-linecap="round" stroke-linejoin="round"
                              class="check-line"/>
                </svg>
            </div>

            <h2 class="complete-title">회원가입이 완료되었습니다!</h2>
            <p class="complete-sub">
                푸른숲 도서관 회원이 되신 것을 환영합니다.<br>
                지금 바로 로그인하고 다양한 서비스를 이용해보세요.
            </p>

            <%-- 버튼 --%>
            <div style="display:flex;gap:12px;justify-content:center;margin-top:36px;">
                <a href="${contextPath}/main/main.do" class="join-btn-prev"
                   style="padding:13px 32px;">메인으로</a>
                <a href="${contextPath}/member/login.do" class="join-btn-next"
                   style="padding:13px 36px;text-decoration:none;display:inline-block;">
                    로그인하기
                </a>
            </div>

        </div>
    </div>
</div>

<style>
/* 체크 아이콘 */
.complete-icon-wrap { display: flex; justify-content: center; margin-bottom: 28px; }
.complete-check     { width: 80px; height: 80px; animation: popIn .4s ease; }
@keyframes popIn {
    0%   { transform: scale(0); opacity: 0; }
    70%  { transform: scale(1.1); }
    100% { transform: scale(1);  opacity: 1; }
}
.check-line {
    stroke-dasharray: 60;
    stroke-dashoffset: 60;
    animation: drawCheck .4s ease .3s forwards;
}
@keyframes drawCheck {
    to { stroke-dashoffset: 0; }
}

/* 텍스트 */
.complete-title { font-size: 22px; font-weight: 700; color: var(--green-deep); margin-bottom: 12px; }
.complete-sub   { font-size: 14px; color: var(--text-mid); line-height: 1.8; margin-bottom: 28px; }

/* 가입 정보 요약 */
.complete-info-box {
    background: var(--green-pale); border-radius: var(--radius-md);
    padding: 20px 28px; margin-bottom: 28px; text-align: left;
}
.complete-info-row {
    display: flex; gap: 16px; padding: 8px 0;
    border-bottom: 1px solid rgba(45,90,39,.1);
}
.complete-info-row:last-child { border-bottom: none; }
.ci-label { width: 60px; font-size: 13px; font-weight: 600; color: var(--text-muted); flex-shrink: 0; }
.ci-val   { font-size: 13px; color: var(--text-primary); font-weight: 500; }

/* 혜택 안내 */
.complete-benefit {
    display: grid; grid-template-columns: repeat(4, 1fr);
    gap: 12px; margin-bottom: 8px;
}
.benefit-item {
    background: var(--bg-card); border: 1px solid var(--border);
    border-radius: var(--radius-md); padding: 18px 8px;
    transition: box-shadow .18s;
}
.benefit-item:hover { box-shadow: var(--shadow-sm); }
.benefit-icon { display: block; font-size: 24px; margin-bottom: 8px; }
.benefit-text { font-size: 12px; color: var(--text-mid); line-height: 1.5; }

/* 버튼 재사용 */
.join-btn-next {
    background: var(--green-deep); color: #fff; border: none;
    border-radius: var(--radius-sm); font-size: 14px; font-weight: 700;
    font-family: 'Noto Sans KR', sans-serif; cursor: pointer; transition: background .18s;
}
.join-btn-next:hover { background: var(--green-mid); }
.join-btn-prev {
    border: 1px solid var(--border); color: var(--text-mid); background: none;
    border-radius: var(--radius-sm); font-size: 14px; font-weight: 500;
    font-family: 'Noto Sans KR', sans-serif; cursor: pointer;
    text-decoration: none; display: inline-block; transition: all .18s;
}
.join-btn-prev:hover { border-color: var(--green-mid); color: var(--green-deep); }
</style>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
