<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="sub-banner">
    <div class="sub-banner-inner">
        <div class="sub-banner-left">
            <p class="sub-breadcrumb">홈 <span style="opacity:.4;">›</span> 이용안내</p>
            <h2 class="sub-title">이용안내</h2>
        </div>
    </div>
</div>

<div class="sub-container">
    <!-- 사이드 + 본문 -->
    <div class="info-layout">
        <aside class="info-side">
            <ul class="info-side-menu">
                <li class="active"><a href="${contextPath}/info/guide.do">이용안내</a></li>
                <li><a href="${contextPath}/info/hours.do">운영시간</a></li>
                <li><a href="${contextPath}/info/location.do">오시는 길</a></li>
            </ul>
        </aside>

        <div class="info-content">
            <!-- 대출/반납 안내 -->
            <section class="info-section">
                <h3 class="info-section-title">대출·반납 안내</h3>
                <table class="guide-table">
                    <tbody>
                        <tr><th>대출 자격</th><td>푸른숲 도서관 회원으로 등록된 분</td></tr>
                        <tr><th>대출 권수</th><td>1인당 최대 <strong>5권</strong></td></tr>
                        <tr><th>대출 기간</th><td><strong>14일</strong> (1회 연장 가능, 7일 추가)</td></tr>
                        <tr><th>연장 방법</th><td>홈페이지 &gt; 마이페이지 &gt; 대출현황에서 연장 가능</td></tr>
                        <tr><th>반납 방법</th><td>도서관 방문 반납 또는 무인반납기 이용</td></tr>
                    </tbody>
                </table>
            </section>

            <!-- 연체 안내 -->
            <section class="info-section">
                <h3 class="info-section-title">연체 안내</h3>
                <table class="guide-table">
                    <tbody>
                        <tr><th>연체 패널티</th><td>연체 1일당 <strong>1일</strong> 대출 정지 (최대 30일)</td></tr>
                        <tr><th>연체료</th><td>별도 연체료 없음</td></tr>
                        <tr><th>대출 정지</th><td>연체 중에는 대출·연장 불가</td></tr>
                    </tbody>
                </table>
            </section>

            <!-- 자료실 안내 -->
            <section class="info-section">
                <h3 class="info-section-title">자료실 안내</h3>
                <div class="room-grid">
                    <div class="room-card">
                        <div class="room-floor">1F</div>
                        <strong>일반자료실</strong>
                        <p>소설, 에세이, 일반도서</p>
                        <p class="room-time">09:00 ~ 21:00</p>
                    </div>
                    <div class="room-card">
                        <div class="room-floor">2F</div>
                        <strong>인문·사회자료실</strong>
                        <p>철학, 역사, 사회과학</p>
                        <p class="room-time">09:00 ~ 21:00</p>
                    </div>
                    <div class="room-card">
                        <div class="room-floor">2F</div>
                        <strong>과학·기술자료실</strong>
                        <p>자연과학, IT, 공학</p>
                        <p class="room-time">09:00 ~ 21:00</p>
                    </div>
                    <div class="room-card">
                        <div class="room-floor">3F</div>
                        <strong>어린이자료실</strong>
                        <p>유아, 아동, 청소년</p>
                        <p class="room-time">09:00 ~ 18:00</p>
                    </div>
                    <div class="room-card">
                        <div class="room-floor">3F</div>
                        <strong>디지털자료실</strong>
                        <p>전자책, 영상자료</p>
                        <p class="room-time">09:00 ~ 18:00</p>
                    </div>
                    <div class="room-card">
                        <div class="room-floor">B1</div>
                        <strong>세미나·독서실</strong>
                        <p>그룹 스터디, 개인열람</p>
                        <p class="room-time">08:00 ~ 22:00</p>
                    </div>
                </div>
            </section>

            <!-- 이용 수칙 -->
            <section class="info-section">
                <h3 class="info-section-title">이용 수칙</h3>
                <ul class="rule-list">
                    <li>도서관 내에서는 조용히 이용해 주세요.</li>
                    <li>음식물 반입은 지정된 휴게 공간에서만 가능합니다.</li>
                    <li>대출 도서는 반드시 대출 처리 후 반출하세요.</li>
                    <li>분실 및 훼손 시 동일 도서 또는 동등 가치의 도서로 변상하셔야 합니다.</li>
                    <li>스마트폰 등 전자기기는 무음 모드로 사용해 주세요.</li>
                </ul>
            </section>
        </div>
    </div>
</div>

<style>
.info-layout{display:grid;grid-template-columns:190px 1fr;gap:40px;}
.info-side{height:fit-content;}
.info-side-menu{list-style:none;background:var(--bg-card);border:1px solid var(--border);border-radius:var(--radius-md);overflow:hidden;}
.info-side-menu li a{display:block;padding:14px 20px;font-size:13px;color:var(--text-mid);text-decoration:none;border-bottom:1px solid var(--border);transition:all .18s;}
.info-side-menu li:last-child a{border-bottom:none;}
.info-side-menu li a:hover{background:var(--green-pale);color:var(--green-deep);}
.info-side-menu li.active a{background:var(--green-deep);color:#fff;font-weight:700;}
.info-section{margin-bottom:48px;}
.info-section-title{font-size:16px;font-weight:700;color:var(--text-primary);padding-bottom:12px;border-bottom:2px solid var(--green-deep);margin-bottom:20px;}
.guide-table{width:100%;border-collapse:collapse;}
.guide-table th{width:140px;padding:14px 20px;background:var(--green-pale);font-size:13px;font-weight:600;color:var(--text-mid);border:1px solid var(--border);text-align:left;}
.guide-table td{padding:14px 20px;font-size:13px;color:var(--text-primary);border:1px solid var(--border);}
.guide-table strong{color:var(--green-deep);}
.room-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:20px;}
.room-card{background:var(--bg-card);border:1px solid var(--border);border-radius:var(--radius-md);padding:28px 20px;text-align:center;}
.room-floor{background:var(--green-deep);color:#fff;font-size:12px;font-weight:700;width:32px;height:32px;border-radius:50%;display:flex;align-items:center;justify-content:center;margin:0 auto 10px;}
.room-card strong{display:block;font-size:14px;color:var(--text-primary);margin-bottom:5px;}
.room-card p{font-size:12px;color:var(--text-muted);margin-bottom:3px;}
.room-time{color:var(--green-mid) !important;font-weight:500 !important;}
.rule-list{padding-left:20px;}
.rule-list li{font-size:13px;color:var(--text-mid);line-height:1.9;margin-bottom:4px;}
</style>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
