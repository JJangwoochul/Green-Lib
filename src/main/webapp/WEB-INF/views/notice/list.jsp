<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="sub-banner">
    <div class="sub-banner-inner">
        <div class="sub-banner-left">
            <p class="sub-breadcrumb">홈 <span style="opacity:.4;">›</span> 공지사항</p>
            <h2 class="sub-title">공지사항</h2>
        </div>
    </div>
</div>

<div class="sub-container">
    <!-- 검색 -->
    <div class="notice-search-row">
        <select class="ns-select">
            <option>제목+내용</option><option>제목</option><option>내용</option>
        </select>
        <input type="text" class="ns-input" placeholder="검색어를 입력하세요">
        <button class="ns-btn">검색</button>
    </div>

    <!-- 카테고리 탭 -->
    <div class="notice-cats">
        <button class="ncat active">전체</button>
        <button class="ncat">공지</button>
        <button class="ncat">행사/강연</button>
        <button class="ncat">도서안내</button>
        <button class="ncat">휴관안내</button>
    </div>

    <!-- 목록 -->
    <table class="notice-table">
        <colgroup>
            <col style="width:70px"><col><col style="width:80px"><col style="width:110px">
        </colgroup>
        <thead>
            <tr><th>번호</th><th>제목</th><th>작성자</th><th>작성일</th></tr>
        </thead>
        <tbody>
            <tr class="notice-fixed">
                <td class="td-center"><span class="notice-badge">공지</span></td>
                <td>
                    <a href="${contextPath}/notice/detail.do?noticeId=1" class="notice-link">
                        2024년 도서관 연간 운영 일정 안내
                    </a>
                </td>
                <td class="td-center">관리자</td>
                <td class="td-center">2024-01-02</td>
            </tr>
            <tr class="notice-fixed">
                <td class="td-center"><span class="notice-badge">공지</span></td>
                <td>
                    <a href="${contextPath}/notice/detail.do?noticeId=2" class="notice-link">
                        도서관 이용 규정 개정 안내
                    </a>
                </td>
                <td class="td-center">관리자</td>
                <td class="td-center">2024-01-15</td>
            </tr>
            <tr>
                <td class="td-center" style="color:var(--text-muted);">15</td>
                <td>
                    <a href="${contextPath}/notice/detail.do?noticeId=15" class="notice-link">
                        5월 휴관일 및 운영시간 안내
                    </a>
                    <span class="new-badge">N</span>
                </td>
                <td class="td-center">관리자</td>
                <td class="td-center">2024-05-01</td>
            </tr>
            <tr>
                <td class="td-center" style="color:var(--text-muted);">14</td>
                <td>
                    <a href="${contextPath}/notice/detail.do?noticeId=14" class="notice-link">
                        도서관 시스템 점검 안내 (5월 3일 오전 9시~12시)
                    </a>
                    <span class="new-badge">N</span>
                </td>
                <td class="td-center">관리자</td>
                <td class="td-center">2024-04-30</td>
            </tr>
            <tr>
                <td class="td-center" style="color:var(--text-muted);">13</td>
                <td>
                    <a href="${contextPath}/notice/detail.do?noticeId=13" class="notice-link">
                        [행사] 숲속 인문학 강연 - "책과 나무, 그리고 삶"
                    </a>
                </td>
                <td class="td-center">관리자</td>
                <td class="td-center">2024-04-28</td>
            </tr>
            <tr>
                <td class="td-center" style="color:var(--text-muted);">12</td>
                <td>
                    <a href="${contextPath}/notice/detail.do?noticeId=12" class="notice-link">
                        희망도서 신청 기간 안내 (4월 ~ 5월)
                    </a>
                </td>
                <td class="td-center">관리자</td>
                <td class="td-center">2024-04-25</td>
            </tr>
            <tr>
                <td class="td-center" style="color:var(--text-muted);">11</td>
                <td>
                    <a href="${contextPath}/notice/detail.do?noticeId=11" class="notice-link">
                        4월 신착도서 목록 안내
                    </a>
                </td>
                <td class="td-center">관리자</td>
                <td class="td-center">2024-04-20</td>
            </tr>
            <tr>
                <td class="td-center" style="color:var(--text-muted);">10</td>
                <td>
                    <a href="${contextPath}/notice/detail.do?noticeId=10" class="notice-link">
                        어린이날 특별 프로그램 안내
                    </a>
                </td>
                <td class="td-center">관리자</td>
                <td class="td-center">2024-04-18</td>
            </tr>
            <tr>
                <td class="td-center" style="color:var(--text-muted);">9</td>
                <td>
                    <a href="${contextPath}/notice/detail.do?noticeId=9" class="notice-link">
                        도서 반납 기간 연장 한시적 시행 안내
                    </a>
                </td>
                <td class="td-center">관리자</td>
                <td class="td-center">2024-04-10</td>
            </tr>
            <tr>
                <td class="td-center" style="color:var(--text-muted);">8</td>
                <td>
                    <a href="${contextPath}/notice/detail.do?noticeId=8" class="notice-link">
                        [강연] 봄날의 독서 테라피 - 4월 20일
                    </a>
                </td>
                <td class="td-center">관리자</td>
                <td class="td-center">2024-04-05</td>
            </tr>
        </tbody>
    </table>

    <div class="paging">
        <a href="#" class="page-btn">&laquo;</a>
        <a href="#" class="page-btn active">1</a>
        <a href="#" class="page-btn">2</a>
        <a href="#" class="page-btn">&raquo;</a>
    </div>
</div>

<style>
.notice-search-row{display:flex;gap:8px;margin-bottom:16px;justify-content:flex-end;}
.ns-select{border:1px solid var(--border);border-radius:var(--radius-sm);padding:8px 12px;font-size:13px;font-family:'Noto Sans KR',sans-serif;color:var(--text-mid);outline:none;}
.ns-input{border:1px solid var(--border);border-radius:var(--radius-sm);padding:8px 14px;font-size:13px;font-family:'Noto Sans KR',sans-serif;outline:none;width:220px;transition:border .18s;}
.ns-input:focus{border-color:var(--green-mid);}
.ns-btn{background:var(--green-deep);color:#fff;border:none;border-radius:var(--radius-sm);padding:8px 20px;font-size:13px;font-weight:600;font-family:'Noto Sans KR',sans-serif;cursor:pointer;transition:background .18s;}
.ns-btn:hover{background:var(--green-mid);}
.notice-cats{display:flex;gap:6px;margin-bottom:16px;}
.ncat{background:none;border:1px solid var(--border);border-radius:50px;padding:6px 18px;font-size:13px;font-family:'Noto Sans KR',sans-serif;color:var(--text-mid);cursor:pointer;transition:all .18s;}
.ncat.active,.ncat:hover{background:var(--green-deep);color:#fff;border-color:var(--green-deep);}
.notice-table{width:100%;border-collapse:collapse;margin-bottom:24px;}
.notice-table th{background:var(--green-pale);padding:12px 16px;font-size:13px;font-weight:600;color:var(--text-mid);border-top:2px solid var(--green-deep);border-bottom:1px solid var(--border);text-align:center;}
.notice-table td{padding:13px 16px;font-size:13px;color:var(--text-primary);border-bottom:1px solid var(--border);}
.notice-table tr:hover td{background:#fafdf8;}
.notice-fixed td{background:#f4faf0;}
.td-center{text-align:center;}
.notice-badge{background:var(--green-deep);color:#fff;font-size:11px;font-weight:700;padding:2px 8px;border-radius:4px;}
.notice-link{text-decoration:none;color:var(--text-primary);transition:color .18s;}
.notice-link:hover{color:var(--green-deep);}
.new-badge{background:#e8f5e1;color:var(--green-deep);font-size:10px;font-weight:700;padding:1px 5px;border-radius:3px;margin-left:4px;vertical-align:middle;}
.paging{display:flex;justify-content:center;gap:6px;}
.page-btn{display:flex;align-items:center;justify-content:center;width:36px;height:36px;border:1px solid var(--border);border-radius:var(--radius-sm);font-size:13px;color:var(--text-mid);text-decoration:none;transition:all .18s;}
.page-btn:hover,.page-btn.active{background:var(--green-deep);color:#fff;border-color:var(--green-deep);}
</style>

<script>
document.querySelectorAll('.ncat').forEach(btn => {
    btn.addEventListener('click', () => {
        document.querySelectorAll('.ncat').forEach(b => b.classList.remove('active'));
        btn.classList.add('active');
    });
});
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
