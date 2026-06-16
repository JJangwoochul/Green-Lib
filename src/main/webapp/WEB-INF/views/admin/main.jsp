<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="currentMenu" value="dashboard" scope="request"/>
<%@ include file="/WEB-INF/views/admin/common/header.jsp" %>

<!-- 페이지 헤더 -->
<div class="admin-page-header">
    <div>
        <h1 class="admin-page-title">대시보드</h1>
        <p class="admin-breadcrumb">관리자 홈 &gt; 대시보드</p>
    </div>
    <span style="font-size:12px;color:var(--text-muted);">2024년 05월 01일 기준</span>
</div>

<!-- 통계 카드 4개 -->
<div class="stat-grid">
    <div class="stat-card green">
        <div class="stat-label">전체 도서</div>
        <div class="stat-value">1,248</div>
        <div class="stat-sub">이번달 신규 +12권</div>
        <div class="stat-icon">
            <svg width="52" height="52" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.2">
                <path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20"/><path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z"/>
            </svg>
        </div>
    </div>
    <div class="stat-card blue">
        <div class="stat-label">대출중</div>
        <div class="stat-value">87</div>
        <div class="stat-sub">전체 회원 대출 건수</div>
        <div class="stat-icon">
            <svg width="52" height="52" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.2">
                <polyline points="9 11 12 14 22 4"/><path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"/>
            </svg>
        </div>
    </div>
    <div class="stat-card amber">
        <div class="stat-label">연체 중</div>
        <div class="stat-value">5</div>
        <div class="stat-sub">즉시 확인 필요</div>
        <div class="stat-icon">
            <svg width="52" height="52" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.2">
                <circle cx="12" cy="12" r="10"/><line x1="12" y1="8" x2="12" y2="12"/><line x1="12" y1="16" x2="12.01" y2="16"/>
            </svg>
        </div>
    </div>
    <div class="stat-card green">
        <div class="stat-label">전체 회원</div>
        <div class="stat-value">342</div>
        <div class="stat-sub">이번달 신규 +8명</div>
        <div class="stat-icon">
            <svg width="52" height="52" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.2">
                <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"/><circle cx="9" cy="7" r="4"/>
            </svg>
        </div>
    </div>
</div>

<!-- 하단 2단 그리드 -->
<div class="dash-grid">

    <!-- 최근 대출 현황 -->
    <div class="admin-card">
        <div class="admin-card-title">
            <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><polyline points="9 11 12 14 22 4"/><path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"/></svg>
            최근 대출 현황
            <a href="${contextPath}/admin/loan/list.do" style="margin-left:auto;font-size:11px;color:var(--text-muted);text-decoration:none;font-weight:400;">전체보기 →</a>
        </div>
        <div class="admin-table-wrap">
            <table class="admin-table">
                <thead>
                    <tr><th>회원명</th><th>도서명</th><th>대출일</th><th>반납예정일</th><th>상태</th></tr>
                </thead>
                <tbody>
                    <tr><td>홍길동</td><td>숲의 시간</td><td>2024-04-28</td><td>2024-05-12</td><td><span class="badge badge-green">대출중</span></td></tr>
                    <tr><td>김영희</td><td>지구를 위한 질문</td><td>2024-04-25</td><td>2024-05-09</td><td><span class="badge badge-green">대출중</span></td></tr>
                    <tr><td>이철수</td><td>마음의 정말</td><td>2024-04-10</td><td>2024-04-24</td><td><span class="badge badge-red">연체</span></td></tr>
                    <tr><td>박민준</td><td>인공지능과 미래</td><td>2024-04-20</td><td>2024-05-04</td><td><span class="badge badge-green">대출중</span></td></tr>
                    <tr><td>최수연</td><td>철학의 즐거움</td><td>2024-04-15</td><td>2024-04-29</td><td><span class="badge badge-gray">반납완료</span></td></tr>
                </tbody>
            </table>
        </div>
    </div>

    <!-- 최근 공지사항 -->
    <div class="admin-card">
        <div class="admin-card-title">
            <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
            최근 공지사항
            <a href="${contextPath}/admin/notice/list.do" style="margin-left:auto;font-size:11px;color:var(--text-muted);text-decoration:none;font-weight:400;">전체보기 →</a>
        </div>
        <div class="admin-table-wrap">
            <table class="admin-table">
                <thead>
                    <tr><th>분류</th><th>제목</th><th>작성일</th><th>조회</th></tr>
                </thead>
                <tbody>
                    <tr>
                        <td><span class="badge badge-green">공지</span></td>
                        <td><a href="${contextPath}/admin/notice/detail.do?noticeId=1" style="text-decoration:none;color:var(--text-primary);">5월 휴관일 안내</a></td>
                        <td>2024-05-01</td><td>248</td>
                    </tr>
                    <tr>
                        <td><span class="badge badge-blue">행사</span></td>
                        <td><a href="${contextPath}/admin/notice/detail.do?noticeId=2" style="text-decoration:none;color:var(--text-primary);">[행사] 숲속 인문학 강연</a></td>
                        <td>2024-04-28</td><td>132</td>
                    </tr>
                    <tr>
                        <td><span class="badge badge-green">공지</span></td>
                        <td><a href="${contextPath}/admin/notice/detail.do?noticeId=3" style="text-decoration:none;color:var(--text-primary);">도서관 시스템 점검 안내</a></td>
                        <td>2024-04-30</td><td>189</td>
                    </tr>
                    <tr>
                        <td><span class="badge badge-amber">도서</span></td>
                        <td><a href="${contextPath}/admin/notice/detail.do?noticeId=4" style="text-decoration:none;color:var(--text-primary);">4월 신착도서 목록</a></td>
                        <td>2024-04-20</td><td>97</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div style="margin-top:16px;text-align:right;">
            <a href="${contextPath}/admin/notice/write.do" class="btn-green btn-sm">
                <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><line x1="12" y1="5" x2="12" y2="19"/><line x1="5" y1="12" x2="19" y2="12"/></svg>
                공지 등록
            </a>
        </div>
    </div>

    <!-- 희망도서 신청 현황 -->
    <div class="admin-card">
        <div class="admin-card-title">
            <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"/></svg>
            희망도서 신청 현황
            <a href="${contextPath}/admin/wish/list.do" style="margin-left:auto;font-size:11px;color:var(--text-muted);text-decoration:none;font-weight:400;">전체보기 →</a>
        </div>
        <div style="display:grid;grid-template-columns:repeat(3,1fr);gap:12px;margin-bottom:16px;">
            <div style="text-align:center;padding:16px;background:var(--amber-pale);border-radius:var(--radius-sm);">
                <p style="font-size:22px;font-weight:700;color:var(--amber);">8</p>
                <p style="font-size:11px;color:var(--amber);margin-top:4px;">대기중</p>
            </div>
            <div style="text-align:center;padding:16px;background:#e8f5e1;border-radius:var(--radius-sm);">
                <p style="font-size:22px;font-weight:700;color:#2d5a27;">24</p>
                <p style="font-size:11px;color:#2d5a27;margin-top:4px;">승인완료</p>
            </div>
            <div style="text-align:center;padding:16px;background:var(--red-pale);border-radius:var(--radius-sm);">
                <p style="font-size:22px;font-weight:700;color:var(--red);">3</p>
                <p style="font-size:11px;color:var(--red);margin-top:4px;">반려</p>
            </div>
        </div>
        <div class="admin-table-wrap">
            <table class="admin-table">
                <thead><tr><th>신청자</th><th>도서명</th><th>신청일</th><th>상태</th></tr></thead>
                <tbody>
                    <tr><td>홍길동</td><td>파친코</td><td>2024-04-30</td><td><span class="badge badge-amber">대기중</span></td></tr>
                    <tr><td>김영희</td><td>채식주의자</td><td>2024-04-29</td><td><span class="badge badge-amber">대기중</span></td></tr>
                    <tr><td>이철수</td><td>82년생 김지영</td><td>2024-04-28</td><td><span class="badge badge-green">승인</span></td></tr>
                </tbody>
            </table>
        </div>
    </div>

    <!-- 빠른 메뉴 -->
    <div class="admin-card">
        <div class="admin-card-title">
            <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="3" y="3" width="7" height="7"/><rect x="14" y="3" width="7" height="7"/><rect x="14" y="14" width="7" height="7"/><rect x="3" y="14" width="7" height="7"/></svg>
            빠른 메뉴
        </div>
        <div style="display:grid;grid-template-columns:1fr 1fr;gap:12px;">
            <a href="${contextPath}/admin/book/write.do" style="display:flex;align-items:center;gap:12px;padding:16px;border:1px solid var(--border);border-radius:var(--radius-sm);text-decoration:none;color:var(--text-primary);transition:all .15s;" onmouseover="this.style.borderColor='#4a7c40';this.style.background='#f4faf0'" onmouseout="this.style.borderColor='var(--border)';this.style.background=''">
                <div style="width:36px;height:36px;background:var(--green-pale);border-radius:var(--radius-sm);display:flex;align-items:center;justify-content:center;color:var(--green-deep);">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20"/><path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z"/></svg>
                </div>
                <div><p style="font-size:13px;font-weight:600;">도서 등록</p><p style="font-size:11px;color:var(--text-muted);">새 도서 추가</p></div>
            </a>
            <a href="${contextPath}/admin/notice/write.do" style="display:flex;align-items:center;gap:12px;padding:16px;border:1px solid var(--border);border-radius:var(--radius-sm);text-decoration:none;color:var(--text-primary);transition:all .15s;" onmouseover="this.style.borderColor='#4a7c40';this.style.background='#f4faf0'" onmouseout="this.style.borderColor='var(--border)';this.style.background=''">
                <div style="width:36px;height:36px;background:var(--green-pale);border-radius:var(--radius-sm);display:flex;align-items:center;justify-content:center;color:var(--green-deep);">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/><polyline points="14 2 14 8 20 8"/></svg>
                </div>
                <div><p style="font-size:13px;font-weight:600;">공지 등록</p><p style="font-size:11px;color:var(--text-muted);">공지사항 작성</p></div>
            </a>
            <a href="${contextPath}/admin/member/list.do" style="display:flex;align-items:center;gap:12px;padding:16px;border:1px solid var(--border);border-radius:var(--radius-sm);text-decoration:none;color:var(--text-primary);transition:all .15s;" onmouseover="this.style.borderColor='#4a7c40';this.style.background='#f4faf0'" onmouseout="this.style.borderColor='var(--border)';this.style.background=''">
                <div style="width:36px;height:36px;background:var(--green-pale);border-radius:var(--radius-sm);display:flex;align-items:center;justify-content:center;color:var(--green-deep);">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"/><circle cx="9" cy="7" r="4"/></svg>
                </div>
                <div><p style="font-size:13px;font-weight:600;">회원 관리</p><p style="font-size:11px;color:var(--text-muted);">회원 목록 조회</p></div>
            </a>
            <a href="${contextPath}/admin/loan/overdue.do" style="display:flex;align-items:center;gap:12px;padding:16px;border:1px solid var(--border);border-radius:var(--radius-sm);text-decoration:none;color:var(--text-primary);transition:all .15s;" onmouseover="this.style.borderColor='#c0392b';this.style.background='#fdf5f5'" onmouseout="this.style.borderColor='var(--border)';this.style.background=''">
                <div style="width:36px;height:36px;background:var(--red-pale);border-radius:var(--radius-sm);display:flex;align-items:center;justify-content:center;color:var(--red);">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"/><line x1="12" y1="8" x2="12" y2="12"/><line x1="12" y1="16" x2="12.01" y2="16"/></svg>
                </div>
                <div><p style="font-size:13px;font-weight:600;">연체 관리</p><p style="font-size:11px;color:var(--red);">5건 확인 필요</p></div>
            </a>
        </div>
    </div>

</div>

<%@ include file="/WEB-INF/views/admin/common/footer.jsp" %>
