<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="sub-banner">
    <div class="sub-banner-inner">
        <p class="sub-breadcrumb">홈 &gt; 도서검색 &gt; 도서상세</p>
        <h2 class="sub-title">도서상세</h2>
    </div>
</div>

<div class="sub-container">
    <div class="detail-layout">
        <!-- 표지 이미지 -->
        <div class="detail-cover">
            <img src="https://images.unsplash.com/photo-1542601906990-b4d3fb778b09?w=280&q=80" alt="도서표지">
            <div class="detail-cover-actions">
                <a href="${contextPath}/loan/apply.do?bookId=1" class="btn-green-full">대출신청</a>
                <a href="#" class="btn-outline-full">예약신청</a>
                <a href="#" class="btn-outline-full">희망도서신청</a>
            </div>
        </div>
        <!-- 상세 정보 -->
        <div class="detail-info">
            <span class="detail-badge">단행본</span>
            <h1 class="detail-book-title">숲의 시간 : 자연이 전하는 이야기</h1>
            <p class="detail-author">김민정 지음</p>
            <table class="detail-table">
                <tr><th>출판사</th><td>숲빛출판</td></tr>
                <tr><th>발행연도</th><td>2024</td></tr>
                <tr><th>페이지</th><td>312p</td></tr>
                <tr><th>청구기호</th><td>811.37-김38ㅅ</td></tr>
                <tr><th>ISBN</th><td>978-89-1234-567-8</td></tr>
                <tr><th>언어</th><td>한국어</td></tr>
                <tr><th>주제분류</th><td>문학 &gt; 한국문학 &gt; 소설</td></tr>
            </table>

            <div class="detail-hold-box">
                <div class="detail-hold-item">
                    <span class="hold-label">소장</span>
                    <span class="hold-val">3권</span>
                </div>
                <div class="detail-hold-item">
                    <span class="hold-label">대출가능</span>
                    <span class="hold-val green">2권</span>
                </div>
                <div class="detail-hold-item">
                    <span class="hold-label">대출중</span>
                    <span class="hold-val red">1권</span>
                </div>
                <div class="detail-hold-item">
                    <span class="hold-label">예약</span>
                    <span class="hold-val">0명</span>
                </div>
            </div>
        </div>
    </div>

    <!-- 소장위치 테이블 -->
    <div class="detail-section">
        <h3 class="section-heading">소장위치 정보</h3>
        <table class="info-table">
            <thead><tr><th>도서관</th><th>자료실</th><th>청구기호</th><th>대출상태</th><th>반납예정일</th></tr></thead>
            <tbody>
                <tr><td>푸른숲 도서관</td><td>1층 일반자료실</td><td>811.37-김38ㅅ</td><td><span class="book-status available">대출가능</span></td><td>-</td></tr>
                <tr><td>푸른숲 도서관</td><td>1층 일반자료실</td><td>811.37-김38ㅅ c.2</td><td><span class="book-status available">대출가능</span></td><td>-</td></tr>
                <tr><td>푸른숲 도서관</td><td>1층 일반자료실</td><td>811.37-김38ㅅ c.3</td><td><span class="book-status unavailable">대출중</span></td><td>2024-05-20</td></tr>
            </tbody>
        </table>
    </div>

    <!-- 책소개 -->
    <div class="detail-section">
        <h3 class="section-heading">책 소개</h3>
        <p class="detail-desc">숲은 우리에게 무엇을 이야기하고 있을까요? 이 책은 도시에서 지친 현대인들이 자연과 다시 연결될 수 있는 방법을 이야기합니다. 저자 김민정은 3년간 전국의 숲을 걸으며 기록한 이야기와 사진을 담아 독자들에게 자연의 언어를 전달합니다. 나무와 바람, 계곡과 이슬 속에서 우리가 잃어버린 삶의 리듬을 되찾는 여정이 시작됩니다.</p>
    </div>

    <div class="detail-back">
        <a href="${contextPath}/book/search.do" class="btn-outline-sm">← 목록으로</a>
    </div>
</div>

<style>
/* ── 도서상세 레이아웃 ── */
.detail-layout {
    display: grid;
    grid-template-columns: 260px 1fr;
    gap: 56px;
    margin-bottom: 60px;
    align-items: start;
}

/* 표지 */
.detail-cover img {
    width: 100%;
    border-radius: var(--radius-md);
    box-shadow: 0 8px 32px rgba(45,90,39,.18);
    display: block;
}
.detail-cover-actions {
    display: flex;
    flex-direction: column;
    gap: 10px;
    margin-top: 20px;
}
.btn-green-full {
    background: var(--green-deep); color: #fff; border: none;
    border-radius: var(--radius-sm); padding: 14px;
    font-size: 14px; font-weight: 700; font-family: 'Noto Sans KR', sans-serif;
    text-align: center; text-decoration: none; display: block;
    transition: background .18s; cursor: pointer;
}
.btn-green-full:hover { background: var(--green-mid); }
.btn-outline-full {
    border: 1.5px solid var(--green-mid); color: var(--green-deep);
    border-radius: var(--radius-sm); padding: 13px;
    font-size: 14px; font-weight: 600;
    text-align: center; text-decoration: none; display: block;
    transition: all .18s; background: #fff;
}
.btn-outline-full:hover { background: var(--green-pale); }

/* 도서 정보 */
.detail-info { padding-top: 4px; }
.detail-badge {
    background: var(--green-pale); color: var(--green-deep);
    font-size: 12px; font-weight: 600;
    padding: 4px 14px; border-radius: 50px;
    display: inline-block; margin-bottom: 14px;
}
.detail-book-title {
    font-size: 24px; font-weight: 700; color: var(--text-primary);
    line-height: 1.45; margin-bottom: 8px; letter-spacing: -.3px;
}
.detail-author {
    font-size: 14px; color: var(--text-muted);
    margin-bottom: 28px; font-weight: 400;
}

/* 상세 테이블 */
.detail-table { width: 100%; border-collapse: collapse; margin-bottom: 28px; }
.detail-table th {
    width: 100px; padding: 11px 16px;
    text-align: left; font-size: 13px; font-weight: 600;
    color: var(--text-muted); background: var(--green-pale);
    border: 1px solid var(--border); vertical-align: middle;
}
.detail-table td {
    padding: 11px 16px; font-size: 14px;
    color: var(--text-primary); border: 1px solid var(--border);
    line-height: 1.5;
}

/* 소장/대출 현황 박스 */
.detail-hold-box {
    display: flex; gap: 0;
    background: var(--bg-card); border: 1px solid var(--border);
    border-radius: var(--radius-md); overflow: hidden;
}
.detail-hold-item {
    text-align: center; flex: 1;
    padding: 22px 16px;
    border-right: 1px solid var(--border);
}
.detail-hold-item:last-child { border-right: none; }
.hold-label {
    display: block; font-size: 12px;
    color: var(--text-muted); margin-bottom: 8px; font-weight: 500;
}
.hold-val {
    display: block; font-size: 22px;
    font-weight: 700; color: var(--text-primary);
}
.hold-val.green { color: var(--green-deep); }
.hold-val.red   { color: #c0392b; }

/* 하단 섹션들 */
.detail-section { margin-bottom: 48px; }
.section-heading {
    font-size: 16px; font-weight: 700; color: var(--text-primary);
    padding-bottom: 12px;
    border-bottom: 2px solid var(--green-deep);
    margin-bottom: 20px;
}

/* 소장위치 테이블 */
.info-table { width: 100%; border-collapse: collapse; }
.info-table th {
    background: var(--green-pale); padding: 13px 18px;
    font-size: 13px; font-weight: 600; color: var(--text-mid);
    border: 1px solid var(--border); text-align: left;
}
.info-table td {
    padding: 13px 18px; font-size: 13px;
    color: var(--text-primary); border: 1px solid var(--border);
}
.info-table tr:hover td { background: #f4faf0; }
.book-status {
    display: inline-block; font-size: 11px; font-weight: 600;
    padding: 3px 12px; border-radius: 50px;
}
.book-status.available   { background: #e8f5e1; color: #2d5a27; }
.book-status.unavailable { background: #fce8e8; color: #a33; }

/* 책소개 */
.detail-desc {
    font-size: 14px; color: var(--text-mid);
    line-height: 2.0; word-break: keep-all;
}

/* 목록 버튼 */
.detail-back { margin-top: 8px; padding-top: 32px; border-top: 1px solid var(--border); }
.btn-outline-sm {
    border: 1px solid var(--green-mid); color: var(--green-deep);
    border-radius: var(--radius-sm); padding: 10px 24px;
    font-size: 13px; font-weight: 600;
    text-decoration: none; display: inline-block; transition: all .18s;
}
.btn-outline-sm:hover { background: var(--green-deep); color: #fff; }
</style>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>


<!-- 커밋메세지 테스트 -->