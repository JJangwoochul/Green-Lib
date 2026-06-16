<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<!-- ══════════ HEADER ══════════ -->
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<!-- ══════════ HERO ══════════ -->
<section class="hero">
    <div class="hero-bg"></div>
    <div class="hero-content">
        <h1 class="hero-title">숲처럼 깊은 지식,<br>당신의 내일을 키웁니다</h1>
        <p class="hero-sub">그린 도서관에서 꿈과 지식을 만나보세요.</p>
        <div class="search-wrap">
            <input type="text" placeholder="도서명, 저자명으로 검색하세요">
            <button class="search-btn" aria-label="검색">
                <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round">
                    <circle cx="11" cy="11" r="7"/><line x1="21" y1="21" x2="16.65" y2="16.65"/>
                </svg>
            </button>
        </div>
        <div class="popular-tags">
            <span class="tag-label">인기검색어</span>
            <span class="tag"># 인공지능</span>
            <span class="tag"># 철학</span>
            <span class="tag"># 여행</span>
            <span class="tag"># 경제학</span>
            <span class="tag"># 소설</span>
        </div>
    </div>
</section>

<!-- ══════════ QUICK MENU ══════════ -->
<%@ include file="/WEB-INF/views/common/quickMenu.jsp" %>


<!-- ══════════ CONTENT ══════════ -->
<section class="content-section">

    <!-- 공지사항 -->
    <div class="card">
        <div class="card-header">
            <span class="card-title">공지사항</span>
            <a href="#" class="card-more">더보기</a>
        </div>
        <div class="notice-list">
            <a href="#" class="notice-item">
                <span class="notice-text">· 5월 휴관일 및 운영시간 안내</span>
                <span class="notice-date">2024-05-01</span>
            </a>
            <a href="#" class="notice-item">
                <span class="notice-text">· 도서관 시스템 점검 안내</span>
                <span class="notice-date">2024-04-30</span>
            </a>
            <a href="#" class="notice-item">
                <span class="notice-text">· [행사] 숲속 인문학 강연 안내</span>
                <span class="notice-date">2024-04-28</span>
            </a>
            <a href="#" class="notice-item">
                <span class="notice-text">· 희망도서 신청 안내</span>
                <span class="notice-date">2024-04-25</span>
            </a>
            <a href="#" class="notice-item">
                <span class="notice-text">· 신착도서 목록 안내</span>
                <span class="notice-date">2024-04-20</span>
            </a>
        </div>
    </div>

    <!-- 신착도서 -->
    <div class="card new-books">
        <div class="card-header">
            <span class="card-title">신착도서</span>
            <a href="#" class="card-more">더보기</a>
        </div>
        <div class="books-grid">
            <div class="book-card">
                <div class="book-cover">
                    <img src="https://images.unsplash.com/photo-1542601906990-b4d3fb778b09?w=200&q=80" alt="숲의 시간 표지">
                </div>
                <div class="book-name">숲의 시간</div>
                <div class="book-author">김민정</div>
            </div>
            <div class="book-card">
                <div class="book-cover">
                    <img src="https://images.unsplash.com/photo-1569932245098-b04e4bab12f8?w=200&q=80" alt="지구를 위한 질문 표지">
                </div>
                <div class="book-name">지구를 위한 질문</div>
                <div class="book-author">이승우</div>
            </div>
            <div class="book-card">
                <div class="book-cover">
                    <img src="https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?w=200&q=80" alt="오늘도 성장 중 표지">
                </div>
                <div class="book-name">오늘도, 성장 중</div>
                <div class="book-author">박지연</div>
            </div>
            <div class="book-card">
                <div class="book-cover">
                    <img src="https://images.unsplash.com/photo-1487088678257-3a541e6e3922?w=200&q=80" alt="마음의 정말 표지">
                </div>
                <div class="book-name">마음의 정말</div>
                <div class="book-author">최민호</div>
            </div>
        </div>
        <div class="dots">
            <span class="dot active"></span>
            <span class="dot"></span>
            <span class="dot"></span>
        </div>
    </div>

    <!-- 오늘도 좋은 하루 카드 -->
    <%-- <div class="greeting-card">
        <p class="greeting-title">오늘도<br>좋은 하루 되세요</p>
        <p class="greeting-sub">책과 함께하는 여유로운 하루,<br>푸른숲 도서관이 함께합니다.</p>

        <!-- 카드 하단 이미지 장식 -->
        <img src="https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c?w=300&q=80"
             alt="책과 커피"
             style="position:absolute;bottom:0;right:0;width:130px;height:110px;object-fit:cover;border-radius:0 0 14px 0;opacity:.5;">
    </div> --%>
    <img src="${contextPath}/resources/image/sub.png" alt="책과 커피" style="width:280px;border-radius:var(--radius-md);display:flex;flex-direction:column;align-items:flex-start;overflow:hidden;min-height:220px;">

</section>

<!-- ══════════ FOOTER ══════════ -->
<%@ include file="/WEB-INF/views/common/footer.jsp" %>


<script>
    // 슬라이드 닷 인터랙션
    document.querySelectorAll('.dot').forEach((dot, i, dots) => {
        dot.addEventListener('click', () => {
            dots.forEach(d => d.classList.remove('active'));
            dot.classList.add('active');
        });
    });
</script>
