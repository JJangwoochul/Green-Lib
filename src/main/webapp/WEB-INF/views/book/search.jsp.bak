<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="sub-banner">
    <div class="sub-banner-inner">
        <p class="sub-breadcrumb">홈 &gt; 도서검색</p>
        <h2 class="sub-title">도서검색</h2>
    </div>
</div>

<div class="sub-container">
    <div class="book-search-box">
        <div class="book-search-tabs">
            <button class="stab active">통합검색</button>
            <button class="stab">도서명</button>
            <button class="stab">저자명</button>
            <button class="stab">출판사</button>
            <button class="stab">ISBN</button>
        </div>
        <div class="book-search-row">
            <input type="text" class="book-search-input" placeholder="검색어를 입력하세요">
            <button class="book-search-btn">
                <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round">
                    <circle cx="11" cy="11" r="7"/><line x1="21" y1="21" x2="16.65" y2="16.65"/>
                </svg>
                검색
            </button>
        </div>
        <div class="popular-kw">
            <span class="kw-label">인기검색어</span>
            <span class="kw-tag"># 인공지능</span>
            <span class="kw-tag"># 철학</span>
            <span class="kw-tag"># 여행</span>
            <span class="kw-tag"># 경제학</span>
            <span class="kw-tag"># 소설</span>
        </div>
    </div>

    <div class="book-layout">
        <aside class="book-filter">
            <div class="filter-section">
                <p class="filter-title">자료유형</p>
                <label class="filter-check"><input type="checkbox" checked> 단행본</label>
                <label class="filter-check"><input type="checkbox" checked> 연속간행물</label>
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

        <div class="book-results">
            <div class="result-header">
                <span class="result-count">총 <strong>128</strong>건의 검색결과</span>
                <select class="result-sort">
                    <option>관련도순</option><option>최신순</option><option>저자명순</option><option>제목순</option>
                </select>
            </div>
            <div class="book-list">
                <div class="book-row">
                    <div class="book-thumb"><img src="https://images.unsplash.com/photo-1542601906990-b4d3fb778b09?w=120&q=80" alt="표지"></div>
                    <div class="book-info">
                        <a href="${contextPath}/book/detail.do?bookId=1" class="book-row-title">숲의 시간 : 자연이 전하는 이야기</a>
                        <p class="book-row-meta">저자 : 김민정 &nbsp;|&nbsp; 출판사 : 숲빛출판 &nbsp;|&nbsp; 발행연도 : 2024</p>
                        <p class="book-row-meta">청구기호 : 811.37-김38ㅅ &nbsp;|&nbsp; 소장위치 : 1층 일반자료실</p>
                        <span class="book-status available">대출가능</span>
                    </div>
                    <div class="book-row-actions">
                        <a href="${contextPath}/book/detail.do?bookId=1" class="btn-outline-sm">상세보기</a>
                        <a href="${contextPath}/loan/apply.do?bookId=1" class="btn-green-sm">대출신청</a>
                    </div>
                </div>
                <div class="book-row">
                    <div class="book-thumb"><img src="https://images.unsplash.com/photo-1569932245098-b04e4bab12f8?w=120&q=80" alt="표지"></div>
                    <div class="book-info">
                        <a href="${contextPath}/book/detail.do?bookId=2" class="book-row-title">지구를 위한 질문</a>
                        <p class="book-row-meta">저자 : 이승우 &nbsp;|&nbsp; 출판사 : 녹색지식 &nbsp;|&nbsp; 발행연도 : 2024</p>
                        <p class="book-row-meta">청구기호 : 539.9-이57ㅈ &nbsp;|&nbsp; 소장위치 : 2층 과학자료실</p>
                        <span class="book-status available">대출가능</span>
                    </div>
                    <div class="book-row-actions">
                        <a href="${contextPath}/book/detail.do?bookId=2" class="btn-outline-sm">상세보기</a>
                        <a href="${contextPath}/loan/apply.do?bookId=2" class="btn-green-sm">대출신청</a>
                    </div>
                </div>
                <div class="book-row">
                    <div class="book-thumb"><img src="https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?w=120&q=80" alt="표지"></div>
                    <div class="book-info">
                        <a href="${contextPath}/book/detail.do?bookId=3" class="book-row-title">오늘도, 성장 중</a>
                        <p class="book-row-meta">저자 : 박지연 &nbsp;|&nbsp; 출판사 : 미래숲 &nbsp;|&nbsp; 발행연도 : 2023</p>
                        <p class="book-row-meta">청구기호 : 325.211-박38ㅇ &nbsp;|&nbsp; 소장위치 : 1층 일반자료실</p>
                        <span class="book-status unavailable">대출중 (반납예정 2024-05-15)</span>
                    </div>
                    <div class="book-row-actions">
                        <a href="${contextPath}/book/detail.do?bookId=3" class="btn-outline-sm">상세보기</a>
                        <a href="#" class="btn-outline-sm">예약신청</a>
                    </div>
                </div>
                <div class="book-row">
                    <div class="book-thumb"><img src="https://images.unsplash.com/photo-1487088678257-3a541e6e3922?w=120&q=80" alt="표지"></div>
                    <div class="book-info">
                        <a href="${contextPath}/book/detail.do?bookId=4" class="book-row-title">마음의 정말</a>
                        <p class="book-row-meta">저자 : 최민호 &nbsp;|&nbsp; 출판사 : 마음터 &nbsp;|&nbsp; 발행연도 : 2023</p>
                        <p class="book-row-meta">청구기호 : 189-최28ㅁ &nbsp;|&nbsp; 소장위치 : 2층 인문자료실</p>
                        <span class="book-status available">대출가능</span>
                    </div>
                    <div class="book-row-actions">
                        <a href="${contextPath}/book/detail.do?bookId=4" class="btn-outline-sm">상세보기</a>
                        <a href="${contextPath}/loan/apply.do?bookId=4" class="btn-green-sm">대출신청</a>
                    </div>
                </div>
                <div class="book-row">
                    <div class="book-thumb"><img src="https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c?w=120&q=80" alt="표지"></div>
                    <div class="book-info">
                        <a href="${contextPath}/book/detail.do?bookId=5" class="book-row-title">인공지능과 미래 사회</a>
                        <p class="book-row-meta">저자 : 정해원 &nbsp;|&nbsp; 출판사 : 테크비전 &nbsp;|&nbsp; 발행연도 : 2024</p>
                        <p class="book-row-meta">청구기호 : 004.73-정12ㅇ &nbsp;|&nbsp; 소장위치 : 2층 과학자료실</p>
                        <span class="book-status available">대출가능</span>
                    </div>
                    <div class="book-row-actions">
                        <a href="${contextPath}/book/detail.do?bookId=5" class="btn-outline-sm">상세보기</a>
                        <a href="${contextPath}/loan/apply.do?bookId=5" class="btn-green-sm">대출신청</a>
                    </div>
                </div>
            </div>
            <div class="paging">
                <a href="#" class="page-btn">&laquo;</a>
                <a href="#" class="page-btn active">1</a>
                <a href="#" class="page-btn">2</a>
                <a href="#" class="page-btn">3</a>
                <a href="#" class="page-btn">4</a>
                <a href="#" class="page-btn">5</a>
                <a href="#" class="page-btn">&raquo;</a>
            </div>
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
.book-results{}
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
</style>
<script>
document.querySelectorAll('.stab').forEach(btn=>{
    btn.addEventListener('click',()=>{
        document.querySelectorAll('.stab').forEach(b=>b.classList.remove('active'));
        btn.classList.add('active');
    });
});
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
