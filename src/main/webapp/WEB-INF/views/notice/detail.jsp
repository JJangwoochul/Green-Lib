<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="sub-banner">
    <div class="sub-banner-inner">
        <p class="sub-breadcrumb">홈 &gt; 공지사항 &gt; 상세보기</p>
        <h2 class="sub-title">공지사항</h2>
    </div>
</div>

<div class="sub-container">
    <div class="notice-detail-wrap">
        <div class="nd-header">
            <span class="nd-category">공지</span>
            <h1 class="nd-title">5월 휴관일 및 운영시간 안내</h1>
            <div class="nd-meta">
                <span>작성자 : 관리자</span>
                <span>작성일 : 2024-05-01</span>
                <span>조회수 : 248</span>
            </div>
        </div>

        <div class="nd-body">
            <p>안녕하세요. 푸른숲 도서관입니다.</p>
            <br>
            <p>5월 휴관일 및 운영시간을 아래와 같이 안내해 드립니다.</p>
            <br>
            <h4>■ 5월 휴관일</h4>
            <ul>
                <li>5월 1일 (수) - 근로자의 날 (법정 공휴일)</li>
                <li>5월 5일 (일) - 어린이날</li>
                <li>5월 6일 (월) - 어린이날 대체 공휴일</li>
                <li>5월 15일 (수) - 스승의 날</li>
            </ul>
            <br>
            <h4>■ 정기 운영시간</h4>
            <ul>
                <li>평일 (월~금) : 오전 9시 ~ 오후 9시</li>
                <li>토요일 : 오전 9시 ~ 오후 5시</li>
                <li>일요일 및 공휴일 : 휴관</li>
            </ul>
            <br>
            <p>이용에 불편을 드려 죄송하며, 더 나은 서비스로 찾아뵙겠습니다.</p>
            <p>감사합니다.</p>
        </div>

        <!-- 이전/다음 글 -->
        <div class="nd-nav">
            <div class="nd-nav-item">
                <span class="nd-nav-label">▲ 이전글</span>
                <a href="${contextPath}/notice/detail.do?noticeId=16" class="nd-nav-link">도서관 시스템 점검 안내 (5월 3일 오전 9시~12시)</a>
            </div>
            <div class="nd-nav-item">
                <span class="nd-nav-label">▼ 다음글</span>
                <a href="${contextPath}/notice/detail.do?noticeId=14" class="nd-nav-link">[행사] 숲속 인문학 강연 - "책과 나무, 그리고 삶"</a>
            </div>
        </div>

        <div class="nd-actions">
            <a href="${contextPath}/notice/list.do" class="btn-outline-sm">← 목록으로</a>
        </div>
    </div>
</div>

<style>
.notice-detail-wrap{max-width:820px;margin:0 auto;}
.nd-header{border-bottom:2px solid var(--green-deep);padding-bottom:20px;margin-bottom:0;}
.nd-category{background:var(--green-deep);color:#fff;font-size:12px;font-weight:700;padding:2px 10px;border-radius:4px;display:inline-block;margin-bottom:10px;}
.nd-title{font-size:22px;font-weight:700;color:var(--text-primary);line-height:1.5;margin-bottom:14px;}
.nd-meta{display:flex;gap:24px;font-size:12px;color:var(--text-muted);padding-bottom:4px;}
.nd-body{padding:40px 0;border-bottom:1px solid var(--border);font-size:14px;color:var(--text-mid);line-height:2.1;}
.nd-body h4{font-size:14px;font-weight:700;color:var(--text-primary);margin-bottom:8px;}
.nd-body ul{padding-left:20px;margin-bottom:8px;}
.nd-body li{margin-bottom:4px;}
.nd-nav{border-bottom:1px solid var(--border);margin-bottom:28px;}
.nd-nav-item{display:flex;align-items:center;gap:20px;padding:14px 0;border-top:1px solid var(--border);}
.nd-nav-label{font-size:12px;color:var(--text-muted);flex-shrink:0;width:60px;}
.nd-nav-link{font-size:13px;color:var(--text-primary);text-decoration:none;transition:color .18s;}
.nd-nav-link:hover{color:var(--green-deep);}
.nd-actions{text-align:center;padding-top:8px;}
.btn-outline-sm{border:1px solid var(--green-mid);color:var(--green-deep);border-radius:var(--radius-sm);padding:9px 24px;font-size:13px;font-weight:600;text-decoration:none;display:inline-block;transition:all .18s;}
.btn-outline-sm:hover{background:var(--green-deep);color:#fff;}
</style>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
