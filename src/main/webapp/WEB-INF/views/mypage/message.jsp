<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="mypageMenu" value="message" scope="request"/>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="sub-banner">
    <div class="sub-banner-inner">
        <div class="sub-banner-left">
            <p class="sub-breadcrumb">홈 <span style="opacity:.4;">›</span> 쪽지함</p>
            <h2 class="sub-title">받은 쪽지함</h2>
        </div>
    </div>
</div>

<div class="sub-container">
    <div class="mypage-layout">
        <%@ include file="/WEB-INF/views/mypage/sidebar.jsp" %>

        <div class="mypage-content">

            <%-- 필터 탭 + 읽음처리 --%>
            <div class="msg-top-row">
                <div class="msg-filter-tabs">
                    <button class="mftab active" data-filter="all">전체</button>
                    <button class="mftab" data-filter="unread">안읽음 <span class="mftab-cnt">3</span></button>
                    <button class="mftab" data-filter="mb-loan">대출/반납</button>
                    <button class="mftab" data-filter="mb-overdue">연체알림</button>
                    <button class="mftab" data-filter="mb-wish">희망도서</button>
                </div>
                <button class="msg-read-all-btn" onclick="readAll()">모두 읽음 처리</button>
            </div>

            <%-- 쪽지 테이블 --%>
            <table class="msg-table">
                <colgroup>
                    <col style="width:100px">
                    <col style="width:auto">
                    <col style="width:110px">
                </colgroup>
                <thead>
                    <tr>
                        <th class="td-center">유형</th>
                        <th>내용</th>
                        <th class="td-center">날짜</th>
                    </tr>
                </thead>
                <tbody>

                    <%-- 안읽음 --%>
                    <tr class="msg-row unread" data-type="mb-loan">
                        <td class="td-center"><span class="msg-badge mb-loan">대출안내</span></td>
                        <td class="msg-title-cell" onclick="toggleMsg(this)">
                            <div class="msg-title-row">
                                <span class="msg-unread-dot"></span>
                                <span class="msg-title">[대출안내] 도서 대출이 완료되었습니다.</span>
                            </div>
                            <p class="msg-preview">숲의 시간 / 대출일: 2024-04-28 / 반납예정일: 2024-05-12</p>
                            <div class="msg-detail" style="display:none;">
                                <p>안녕하세요, 푸른숲 도서관입니다.<br>아래 도서의 대출이 완료되었습니다.</p>
                                <div class="msg-detail-table">
                                    <div class="mdt-row"><span class="mdt-label">도서명</span><span class="mdt-val">숲의 시간 : 자연이 전하는 이야기</span></div>
                                    <div class="mdt-row"><span class="mdt-label">저자</span><span class="mdt-val">김민정</span></div>
                                    <div class="mdt-row"><span class="mdt-label">대출일</span><span class="mdt-val">2024-04-28</span></div>
                                    <div class="mdt-row"><span class="mdt-label">반납예정일</span><span class="mdt-val">2024-05-12</span></div>
                                    <div class="mdt-row"><span class="mdt-label">소장위치</span><span class="mdt-val">1층 일반자료실</span></div>
                                </div>
                                <p class="msg-detail-note">반납 기한을 꼭 지켜주세요. 연체 시 대출이 제한될 수 있습니다.</p>
                            </div>
                        </td>
                        <td class="td-center msg-date">2024-04-28</td>
                    </tr>

                    <tr class="msg-row unread" data-type="mb-overdue">
                        <td class="td-center"><span class="msg-badge mb-overdue">연체알림</span></td>
                        <td class="msg-title-cell" onclick="toggleMsg(this)">
                            <div class="msg-title-row">
                                <span class="msg-unread-dot"></span>
                                <span class="msg-title">[반납안내] 반납예정일이 7일 남았습니다.</span>
                            </div>
                            <p class="msg-preview">지구를 위한 질문 / 반납예정일: 2024-05-09</p>
                            <div class="msg-detail" style="display:none;">
                                <p>대출하신 도서의 반납예정일이 <strong>7일</strong> 남았습니다.</p>
                                <div class="msg-detail-table">
                                    <div class="mdt-row"><span class="mdt-label">도서명</span><span class="mdt-val">지구를 위한 질문</span></div>
                                    <div class="mdt-row"><span class="mdt-label">반납예정일</span><span class="mdt-val" style="color:#c0392b;font-weight:700;">2024-05-09</span></div>
                                </div>
                                <p class="msg-detail-note">마이페이지 › 대출현황에서 연장 신청이 가능합니다. (1회)</p>
                            </div>
                        </td>
                        <td class="td-center msg-date">2024-05-02</td>
                    </tr>

                    <tr class="msg-row unread" data-type="mb-wish">
                        <td class="td-center"><span class="msg-badge mb-wish">희망도서</span></td>
                        <td class="msg-title-cell" onclick="toggleMsg(this)">
                            <div class="msg-title-row">
                                <span class="msg-unread-dot"></span>
                                <span class="msg-title">[희망도서] 신청하신 도서가 승인되었습니다.</span>
                            </div>
                            <p class="msg-preview">파친코 / 승인일: 2024-05-01</p>
                            <div class="msg-detail" style="display:none;">
                                <p>신청하신 희망도서가 <strong style="color:var(--green-deep);">승인</strong>되었습니다.</p>
                                <div class="msg-detail-table">
                                    <div class="mdt-row"><span class="mdt-label">도서명</span><span class="mdt-val">파친코</span></div>
                                    <div class="mdt-row"><span class="mdt-label">승인일</span><span class="mdt-val">2024-05-01</span></div>
                                    <div class="mdt-row"><span class="mdt-label">비고</span><span class="mdt-val">입고 후 도서 검색이 가능합니다.</span></div>
                                </div>
                            </div>
                        </td>
                        <td class="td-center msg-date">2024-05-01</td>
                    </tr>

                    <%-- 읽음 --%>
                    <tr class="msg-row" data-type="mb-loan">
                        <td class="td-center"><span class="msg-badge mb-loan">대출안내</span></td>
                        <td class="msg-title-cell" onclick="toggleMsg(this)">
                            <div class="msg-title-row">
                                <span class="msg-unread-dot" style="opacity:0;"></span>
                                <span class="msg-title read">[반납완료] 마음의 정말 반납이 완료되었습니다.</span>
                            </div>
                            <p class="msg-preview">마음의 정말 / 반납일: 2024-04-15</p>
                            <div class="msg-detail" style="display:none;">
                                <p>반납이 정상 처리되었습니다. 감사합니다.</p>
                                <div class="msg-detail-table">
                                    <div class="mdt-row"><span class="mdt-label">도서명</span><span class="mdt-val">마음의 정말</span></div>
                                    <div class="mdt-row"><span class="mdt-label">반납일</span><span class="mdt-val">2024-04-15</span></div>
                                </div>
                            </div>
                        </td>
                        <td class="td-center msg-date">2024-04-15</td>
                    </tr>

                    <tr class="msg-row" data-type="mb-loan">
                        <td class="td-center"><span class="msg-badge mb-loan">대출안내</span></td>
                        <td class="msg-title-cell" onclick="toggleMsg(this)">
                            <div class="msg-title-row">
                                <span class="msg-unread-dot" style="opacity:0;"></span>
                                <span class="msg-title read">[대출안내] 철학의 즐거움 대출이 완료되었습니다.</span>
                            </div>
                            <p class="msg-preview">철학의 즐거움 / 대출일: 2024-03-15</p>
                            <div class="msg-detail" style="display:none;">
                                <p>대출이 완료되었습니다.</p>
                                <div class="msg-detail-table">
                                    <div class="mdt-row"><span class="mdt-label">도서명</span><span class="mdt-val">철학의 즐거움</span></div>
                                    <div class="mdt-row"><span class="mdt-label">대출일</span><span class="mdt-val">2024-03-15</span></div>
                                    <div class="mdt-row"><span class="mdt-label">반납예정일</span><span class="mdt-val">2024-03-29</span></div>
                                </div>
                            </div>
                        </td>
                        <td class="td-center msg-date">2024-03-15</td>
                    </tr>

                </tbody>
            </table>

            <%-- 페이징 --%>
            <div class="paging" style="margin-top:24px;">
                <a href="#" class="page-btn">&laquo;</a>
                <a href="#" class="page-btn active">1</a>
                <a href="#" class="page-btn">2</a>
                <a href="#" class="page-btn">&raquo;</a>
            </div>

        </div>
    </div>
</div>

<style>
/* 상단 필터 + 버튼 행 */
.msg-top-row { display:flex; align-items:center; justify-content:space-between; margin-bottom:16px; }
.msg-filter-tabs { display:flex; gap:6px; flex-wrap:wrap; }
.mftab { background:none; border:1px solid var(--border); border-radius:50px;
    padding:5px 16px; font-size:13px; font-family:'Noto Sans KR',sans-serif;
    color:var(--text-mid); cursor:pointer; transition:all .18s;
    display:inline-flex; align-items:center; gap:5px; }
.mftab.active, .mftab:hover { background:var(--green-deep); color:#fff; border-color:var(--green-deep); }
.mftab-cnt { background:rgba(255,255,255,.3); border-radius:50px;
    font-size:10px; font-weight:700; padding:0 5px; }
.mftab.active .mftab-cnt { background:rgba(255,255,255,.25); }
.msg-read-all-btn { background:none; border:1px solid var(--border); border-radius:var(--radius-sm);
    padding:6px 14px; font-size:12px; color:var(--text-muted); cursor:pointer;
    font-family:'Noto Sans KR',sans-serif; white-space:nowrap; transition:all .18s; }
.msg-read-all-btn:hover { border-color:var(--green-mid); color:var(--green-deep); }

/* 테이블 */
.msg-table { width:100%; border-collapse:collapse; /*table-layout:fixed;*/ }
.msg-table th { background:var(--green-pale); padding:11px 16px; font-size:12px;
    font-weight:600; color:var(--text-mid);
    border-top:2px solid var(--green-deep);
    border-bottom:1px solid var(--border);
    text-align:center; }
.msg-table th:last-child { border-right:none; }
.msg-row td { padding:13px 16px; border-bottom:1px solid var(--border);
    vertical-align:middle; }
.msg-row td:last-child { border-right:none; }
.msg-row.unread { background:#f7fbf4; }
.msg-row.unread td { border-bottom-color:#e0f0d8; }
.msg-row:hover td { background:#f0faf0; cursor:pointer; }
.td-center { text-align:center; }

/* 유형 배지 */
.msg-badge { font-size:10px; font-weight:700; padding:4px 9px;
    border-radius:4px; white-space:nowrap; display:inline-block; }
.msg-badge.mb-loan    { background:#e6f1fb; color:#185fa5; }
.msg-badge.mb-overdue { background:#fce8e8; color:#c0392b; }
.msg-badge.mb-wish    { background:#e8f5e1; color:#2d5a27; }

/* 제목 셀 */
.msg-title-cell { cursor:pointer; }
.msg-title-row  { display:flex; align-items:center; gap:8px; margin-bottom:3px; }
.msg-unread-dot { width:7px; height:7px; border-radius:50%;
    background:var(--green-deep); flex-shrink:0; }
.msg-title      { font-size:13px; font-weight:700; color:var(--text-primary); }
.msg-title.read { font-weight:500; color:var(--text-muted); }
.msg-preview    { font-size:12px; color:var(--text-muted); padding-left:15px;
    white-space:nowrap; overflow:hidden; text-overflow:ellipsis; }
.msg-date       { font-size:12px; color:var(--text-muted); white-space:nowrap; }

/* 펼쳐지는 상세 */
.msg-detail { margin-top:12px; padding:16px; background:#fff;
    border:1px solid var(--border); border-radius:var(--radius-sm);
    font-size:13px; color:var(--text-mid); line-height:1.8; }
.msg-detail-table { width:100%; margin:10px 0; }
.mdt-row { display:flex; border-bottom:1px solid var(--border); }
.mdt-row:first-child { border-top:1px solid var(--border); }
.mdt-label { width:90px; flex-shrink:0; padding:8px 12px; background:var(--green-pale);
    font-size:12px; font-weight:600; color:var(--text-muted);
    border-right:1px solid var(--border); }
.mdt-val { flex:1; padding:8px 12px; font-size:12px; color:var(--text-primary); }
.msg-detail-note { font-size:11px; color:var(--text-muted); margin-top:8px; }

/* 페이징 */
.paging { display:flex; justify-content:center; gap:6px; }
.page-btn { display:flex; align-items:center; justify-content:center;
    width:36px; height:36px; border:1px solid var(--border);
    border-radius:var(--radius-sm); font-size:13px; color:var(--text-mid);
    text-decoration:none; transition:all .18s; }
.page-btn:hover, .page-btn.active { background:var(--green-deep); color:#fff; border-color:var(--green-deep); }
</style>

<script>
// 행 클릭 → 상세 펼치기/접기
function toggleMsg(cell) {
    const row     = cell.closest('tr');
    const detail  = cell.querySelector('.msg-detail');
    const preview = cell.querySelector('.msg-preview');
    const dot     = cell.querySelector('.msg-unread-dot');
    const title   = cell.querySelector('.msg-title');
    const isOpen  = detail.style.display !== 'none';

    if (isOpen) {
        detail.style.display  = 'none';
        preview.style.display = 'block';
    } else {
        detail.style.display  = 'block';
        preview.style.display = 'none';
        // 읽음 처리
        row.classList.remove('unread');
        if (dot)   dot.style.opacity = '0';
        if (title) title.classList.add('read');
    }
}

// 필터 탭
document.querySelectorAll('.mftab').forEach(tab => {
    tab.addEventListener('click', () => {
        document.querySelectorAll('.mftab').forEach(t => t.classList.remove('active'));
        tab.classList.add('active');
        const filter = tab.dataset.filter;
        document.querySelectorAll('.msg-row').forEach(row => {
            if (filter === 'all') {
                row.style.display = '';
            } else if (filter === 'unread') {
                row.style.display = row.classList.contains('unread') ? '' : 'none';
            } else {
                row.style.display = row.dataset.type === filter ? '' : 'none';
            }
        });
    });
});

// 모두 읽음
function readAll() {
    document.querySelectorAll('.msg-row.unread').forEach(row => {
        row.classList.remove('unread');
        const dot   = row.querySelector('.msg-unread-dot');
        const title = row.querySelector('.msg-title');
        if (dot)   dot.style.opacity = '0';
        if (title) title.classList.add('read');
    });
    document.querySelector('.mftab-cnt') &&
        (document.querySelector('.mftab-cnt').textContent = '0');
    alert('모두 읽음 처리되었습니다.');
}
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
