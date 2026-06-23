<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="sub-banner">
    <div class="sub-banner-inner">
        <div class="sub-banner-left">
            <p class="sub-breadcrumb">홈 <span style="opacity:.4;">›</span> 도서검색</p>
            <h2 class="sub-title">도서검색</h2>
        </div>
    </div>
</div>

<div class="sub-container">

    <%-- ── 검색 박스 ── --%>
    <form action="${contextPath}/book/search.do" method="get" id="searchForm">
        <div class="book-search-box">
            <div class="book-search-tabs">
                <button type="button" class="stab ${searchType == 'all'       || searchType == '' ? 'active' : ''}" data-type="all">통합검색</button>
                <button type="button" class="stab ${searchType == 'title'     ? 'active' : ''}" data-type="title">도서명</button>
                <button type="button" class="stab ${searchType == 'author'    ? 'active' : ''}" data-type="author">저자명</button>
                <button type="button" class="stab ${searchType == 'publisher' ? 'active' : ''}" data-type="publisher">출판사</button>
                <button type="button" class="stab ${searchType == 'isbn'      ? 'active' : ''}" data-type="isbn">ISBN</button>
            </div>
            <%-- 검색 타입 hidden --%>
            <input type="hidden" name="searchType" id="searchTypeInput" value="${searchType}">
            <div class="book-search-row">
                <input type="text" name="keyword" class="book-search-input"
                       placeholder="검색어를 입력하세요" value="${keyword}">
                <button type="submit" class="book-search-btn">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round">
                        <circle cx="11" cy="11" r="7"/><line x1="21" y1="21" x2="16.65" y2="16.65"/>
                    </svg>
                    검색
                </button>
            </div>
            <div class="popular-kw">
                <span class="kw-label">인기검색어</span>
                <span class="kw-tag" onclick="quickSearch('인공지능')"># 인공지능</span>
                <span class="kw-tag" onclick="quickSearch('철학')"># 철학</span>
                <span class="kw-tag" onclick="quickSearch('여행')"># 여행</span>
                <span class="kw-tag" onclick="quickSearch('경제학')"># 경제학</span>
                <span class="kw-tag" onclick="quickSearch('소설')"># 소설</span>
            </div>
        </div>
    </form>

    <%-- ── 목록 영역 ── --%>
    <div class="book-layout">

        <%-- 사이드 필터 (장식용 - 추후 기능 확장 가능) --%>
        <aside class="book-filter">
            <div class="filter-section">
                <p class="filter-title">자료유형</p>
                <label class="filter-check"><input type="checkbox" checked> 단행본</label>
                <label class="filter-check"><input type="checkbox"> 연속간행물</label>
                <label class="filter-check"><input type="checkbox"> 전자책</label>
                <label class="filter-check"><input type="checkbox"> DVD/영상</label>
            </div>
            <div class="filter-section">
                <p class="filter-title">주제분류</p>
                <label class="filter-check"><input type="checkbox" checked> 문학</label>
                <label class="filter-check"><input type="checkbox" checked> 사회과학</label>
                <label class="filter-check"><input type="checkbox"> 자연과학</label>
                <label class="filter-check"><input type="checkbox"> 기술과학</label>
                <label class="filter-check"><input type="checkbox"> 역사/지리</label>
            </div>
            <div class="filter-section">
                <p class="filter-title">발행연도</p>
                <label class="filter-check"><input type="checkbox" checked> 2024년</label>
                <label class="filter-check"><input type="checkbox" checked> 2023년</label>
                <label class="filter-check"><input type="checkbox"> 2022년</label>
                <label class="filter-check"><input type="checkbox"> 2020년 이전</label>
            </div>
        </aside>

        <%-- 검색 결과 --%>
        <div class="book-results">
            <div class="result-header">
                <span class="result-count">
                    총 <strong>${totalCount}</strong>건의 검색결과
                    <c:if test="${keyword != null && keyword != ''}">
                        <span style="color:var(--text-muted);font-weight:400;"> &nbsp;'${keyword}' 검색결과</span>
                    </c:if>
                </span>
                <select class="result-sort">
                    <option>최신순</option>
                    <option>도서명순</option>
                    <option>저자명순</option>
                </select>
            </div>

            <div class="book-list">
                <c:choose>
                    <c:when test="${empty bookList}">
                        <div class="no-result">
                            <svg width="48" height="48" viewBox="0 0 24 24" fill="none" stroke="#c0c0c0" stroke-width="1.2">
                                <circle cx="11" cy="11" r="7"/><line x1="21" y1="21" x2="16.65" y2="16.65"/>
                            </svg>
                            <p>검색된 도서가 없습니다.</p>
                            <span>다른 검색어로 다시 시도해보세요.</span>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <c:forEach var="book" items="${bookList}">
                            <div class="book-row">
                                <div class="book-thumb">
                                    <img src="https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c?w=120&q=80" alt="${book.title} 표지">
                                </div>
                                <div class="book-info">
                                    <a href="${contextPath}/book/detail.do?bookId=${book.bookId}" class="book-row-title">
                                        ${book.title}
                                    </a>
                                    <p class="book-row-meta">
                                        저자 : ${book.author}
                                        &nbsp;|&nbsp; 출판사 : ${book.publisher}
                                        &nbsp;|&nbsp; 발행연도 : ${book.pubYear}
                                    </p>
                                    <p class="book-row-meta">
                                        청구기호 : ${book.callNo}
                                        &nbsp;|&nbsp; 소장위치 : ${book.location}
                                    </p>
                                    <c:choose>
                                        <c:when test="${book.availableCnt > 0}">
                                            <span class="book-status available">대출가능 (${book.availableCnt}/${book.totalCnt})</span>
                                        </c:when>
                                        <c:otherwise>
                                            <span class="book-status unavailable">대출중</span>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                                <div class="book-row-actions">
                                    <a href="${contextPath}/book/detail.do?bookId=${book.bookId}" class="btn-outline-sm">상세보기</a>
                                    <c:if test="${book.availableCnt > 0}">
                                        <a href="${contextPath}/loan/apply.do?bookId=${book.bookId}" class="btn-green-sm">대출신청</a>
                                    </c:if>
                                    <c:if test="${book.availableCnt == 0}">
                                        <a href="#" class="btn-outline-sm">예약신청</a>
                                    </c:if>
                                </div>
                            </div>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
            </div>

            <%-- 페이징 --%>
            <c:if test="${totalPages > 0}">
                <div class="paging">
                    <c:if test="${currentPage > 1}">
                        <a href="${contextPath}/book/search.do?page=${currentPage-1}&keyword=${keyword}&searchType=${searchType}"
                           class="page-btn">&laquo;</a>
                    </c:if>
                    <c:forEach begin="1" end="${totalPages}" var="p">
                        <a href="${contextPath}/book/search.do?page=${p}&keyword=${keyword}&searchType=${searchType}"
                           class="page-btn ${p == currentPage ? 'active' : ''}">${p}</a>
                    </c:forEach>
                    <c:if test="${currentPage < totalPages}">
                        <a href="${contextPath}/book/search.do?page=${currentPage+1}&keyword=${keyword}&searchType=${searchType}"
                           class="page-btn">&raquo;</a>
                    </c:if>
                </div>
            </c:if>

        </div>
    </div>
</div>

<style>
.book-search-box{background:var(--green-pale);border-radius:var(--radius-md);padding:36px 40px;margin-bottom:40px;}
.book-search-tabs{display:flex;gap:6px;margin-bottom:16px;}
.stab{background:none;border:1px solid var(--border);border-radius:50px;padding:6px 18px;font-size:13px;font-family:'Noto Sans KR',sans-serif;color:var(--text-mid);cursor:pointer;transition:all .18s;}
.stab.active,.stab:hover{background:var(--green-deep);color:#fff;border-color:var(--green-deep);}
.book-search-row{display:flex;gap:10px;}
.book-search-input{flex:1;border:none;border-radius:50px;padding:14px 22px;font-size:15px;font-family:'Noto Sans KR',sans-serif;outline:none;box-shadow:var(--shadow-sm);}
.book-search-btn{background:var(--green-deep);color:#fff;border:none;border-radius:50px;padding:0 28px;font-size:14px;font-weight:600;font-family:'Noto Sans KR',sans-serif;cursor:pointer;display:flex;align-items:center;gap:8px;transition:background .18s;}
.book-search-btn:hover{background:var(--green-mid);}
.popular-kw{display:flex;gap:8px;align-items:center;margin-top:14px;flex-wrap:wrap;}
.kw-label{font-size:12px;color:var(--text-muted);font-weight:500;}
.kw-tag{background:#fff;border:1px solid var(--border);color:var(--text-mid);border-radius:50px;font-size:12px;padding:3px 12px;cursor:pointer;transition:all .18s;}
.kw-tag:hover{background:var(--green-deep);color:#fff;border-color:var(--green-deep);}
.book-layout{display:grid;grid-template-columns:220px 1fr;gap:32px;}
.book-filter{background:var(--bg-card);border:1px solid var(--border);border-radius:var(--radius-md);padding:28px;height:fit-content;}
.filter-section{margin-bottom:24px;padding-bottom:24px;border-bottom:1px solid var(--border);}
.filter-section:last-child{border-bottom:none;margin-bottom:0;padding-bottom:0;}
.filter-title{font-size:13px;font-weight:700;color:var(--text-primary);margin-bottom:10px;}
.filter-check{display:flex;align-items:center;gap:8px;font-size:13px;color:var(--text-mid);margin-bottom:8px;cursor:pointer;}
.filter-check input{accent-color:var(--green-deep);}
.result-header{display:flex;justify-content:space-between;align-items:center;margin-bottom:20px;}
.result-count{font-size:14px;color:var(--text-mid);}
.result-count strong{color:var(--green-deep);font-weight:700;}
.result-sort{border:1px solid var(--border);border-radius:var(--radius-sm);padding:6px 12px;font-size:13px;font-family:'Noto Sans KR',sans-serif;color:var(--text-mid);outline:none;cursor:pointer;}
.book-list{display:flex;flex-direction:column;gap:14px;}
.book-row{display:flex;gap:20px;background:var(--bg-card);border:1px solid var(--border);border-radius:var(--radius-md);padding:22px 24px;transition:box-shadow .18s;}
.book-row:hover{box-shadow:var(--shadow-md);}
.book-thumb{width:76px;height:104px;flex-shrink:0;border-radius:8px;overflow:hidden;}
.book-thumb img{width:100%;height:100%;object-fit:cover;}
.book-info{flex:1;padding:2px 0;}
.book-row-title{font-size:15px;font-weight:700;color:var(--text-primary);text-decoration:none;display:block;margin-bottom:8px;transition:color .18s;}
.book-row-title:hover{color:var(--green-deep);}
.book-row-meta{font-size:12px;color:var(--text-muted);margin-bottom:5px;line-height:1.5;}
.book-status{display:inline-block;font-size:11px;font-weight:600;padding:2px 10px;border-radius:50px;margin-top:6px;}
.book-status.available{background:#e8f5e1;color:#2d5a27;}
.book-status.unavailable{background:#fce8e8;color:#a33;}
.book-row-actions{display:flex;flex-direction:column;gap:10px;justify-content:center;min-width:90px;}
.btn-outline-sm{border:1px solid var(--green-mid);color:var(--green-deep);border-radius:var(--radius-sm);padding:7px 16px;font-size:12px;font-weight:600;text-decoration:none;text-align:center;transition:all .18s;white-space:nowrap;display:block;}
.btn-outline-sm:hover{background:var(--green-deep);color:#fff;}
.btn-green-sm{background:var(--green-deep);color:#fff;border:none;border-radius:var(--radius-sm);padding:7px 16px;font-size:12px;font-weight:600;text-decoration:none;text-align:center;transition:background .18s;white-space:nowrap;display:block;}
.btn-green-sm:hover{background:var(--green-mid);}
.paging{display:flex;justify-content:center;gap:6px;margin-top:40px;}
.page-btn{display:flex;align-items:center;justify-content:center;width:36px;height:36px;border:1px solid var(--border);border-radius:var(--radius-sm);font-size:13px;color:var(--text-mid);text-decoration:none;transition:all .18s;}
.page-btn:hover,.page-btn.active{background:var(--green-deep);color:#fff;border-color:var(--green-deep);}
.no-result{display:flex;flex-direction:column;align-items:center;justify-content:center;padding:80px 0;gap:12px;}
.no-result p{font-size:16px;font-weight:600;color:var(--text-muted);}
.no-result span{font-size:13px;color:var(--text-muted);}
</style>

<script>
// 검색 탭 클릭 → hidden input 값 변경
document.querySelectorAll('.stab').forEach(btn => {
    btn.addEventListener('click', () => {
        document.querySelectorAll('.stab').forEach(b => b.classList.remove('active'));
        btn.classList.add('active');
        document.getElementById('searchTypeInput').value = btn.dataset.type;
    });
});

// 인기검색어 클릭
function quickSearch(keyword) {
    document.querySelector('input[name="keyword"]').value = keyword;
    document.getElementById('searchForm').submit();
}
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
