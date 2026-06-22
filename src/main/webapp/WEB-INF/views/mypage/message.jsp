<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="mypageMenu" value="message" scope="request"/>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="sub-banner">
    <div class="sub-banner-inner">
        <p class="sub-breadcrumb">홈 &gt; 쪽지함</p>
        <h2 class="sub-title">받은 쪽지함</h2>
    </div>
</div>

<div class="sub-container">
    <div class="mypage-layout">
        <%@ include file="/WEB-INF/views/mypage/sidebar.jsp" %>

        <div class="mypage-content">

            <%-- 쪽지 필터 탭 --%>
            <div class="msg-filter-tabs">
                <button class="mftab active" data-filter="all">전체</button>
                <button class="mftab" data-filter="unread">안읽음</button>
                <button class="mftab" data-filter="loan">대출/반납</button>
                <button class="mftab" data-filter="overdue">연체알림</button>
                <button class="mftab" data-filter="wish">희망도서</button>
            </div>

            <%-- 일괄 읽음 처리 --%>
            <div style="display:flex;justify-content:flex-end;margin-bottom:14px;">
                <button class="msg-read-all-btn" onclick="alert('모두 읽음 처리되었습니다.')">
                    모두 읽음 처리
                </button>
            </div>

            <%-- 쪽지 목록 --%>
            <div class="msg-list">

                <%-- 안읽음 --%>
                <div class="msg-item unread" data-type="loan">
                    <div class="msg-item-left">
                        <span class="msg-type-badge loan">대출안내</span>
                        <div class="msg-unread-dot"></div>
                    </div>
                    <div class="msg-item-body" onclick="openMsg(this)">
                        <p class="msg-item-title">📚 [대출안내] 도서 대출이 완료되었습니다.</p>
                        <p class="msg-item-preview">숲의 시간 / 대출일: 2024-04-28 / 반납예정일: 2024-05-12</p>
                        <div class="msg-item-detail" style="display:none;">
                            <div class="msg-detail-box">
                                <p>안녕하세요, 푸른숲 도서관입니다.</p>
                                <br>
                                <p>아래 도서의 대출이 완료되었습니다.</p>
                                <br>
                                <table class="msg-detail-table">
                                    <tr><th>도서명</th><td>숲의 시간 : 자연이 전하는 이야기</td></tr>
                                    <tr><th>저자</th><td>김민정</td></tr>
                                    <tr><th>대출일</th><td>2024-04-28</td></tr>
                                    <tr><th>반납예정일</th><td>2024-05-12</td></tr>
                                    <tr><th>대출위치</th><td>1층 일반자료실</td></tr>
                                </table>
                                <br>
                                <p style="color:var(--text-muted);font-size:12px;">
                                    반납 기한을 꼭 지켜주세요. 연체 시 대출이 제한될 수 있습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <span class="msg-item-date">2024-04-28</span>
                </div>

                <div class="msg-item unread" data-type="overdue">
                    <div class="msg-item-left">
                        <span class="msg-type-badge overdue">연체알림</span>
                        <div class="msg-unread-dot"></div>
                    </div>
                    <div class="msg-item-body" onclick="openMsg(this)">
                        <p class="msg-item-title">⏰ [반납안내] 반납예정일이 7일 남았습니다.</p>
                        <p class="msg-item-preview">지구를 위한 질문 / 반납예정일: 2024-05-09</p>
                        <div class="msg-item-detail" style="display:none;">
                            <div class="msg-detail-box">
                                <p>안녕하세요, 푸른숲 도서관입니다.</p>
                                <br>
                                <p>대출하신 도서의 반납예정일이 <strong>7일</strong> 남았습니다.</p>
                                <br>
                                <table class="msg-detail-table">
                                    <tr><th>도서명</th><td>지구를 위한 질문</td></tr>
                                    <tr><th>반납예정일</th><td>2024-05-09</td></tr>
                                </table>
                                <br>
                                <p style="color:var(--text-muted);font-size:12px;">
                                    마이페이지 &gt; 대출현황에서 연장 신청이 가능합니다. (1회)
                                </p>
                            </div>
                        </div>
                    </div>
                    <span class="msg-item-date">2024-05-02</span>
                </div>

                <div class="msg-item unread" data-type="wish">
                    <div class="msg-item-left">
                        <span class="msg-type-badge wish">희망도서</span>
                        <div class="msg-unread-dot"></div>
                    </div>
                    <div class="msg-item-body" onclick="openMsg(this)">
                        <p class="msg-item-title">✅ [희망도서] 신청하신 도서가 승인되었습니다.</p>
                        <p class="msg-item-preview">파친코 / 승인일: 2024-05-01</p>
                        <div class="msg-item-detail" style="display:none;">
                            <div class="msg-detail-box">
                                <p>안녕하세요, 푸른숲 도서관입니다.</p>
                                <br>
                                <p>신청하신 희망도서가 <strong style="color:var(--green-deep);">승인</strong>되었습니다.</p>
                                <br>
                                <table class="msg-detail-table">
                                    <tr><th>도서명</th><td>파친코</td></tr>
                                    <tr><th>승인일</th><td>2024-05-01</td></tr>
                                    <tr><th>비고</th><td>입고 후 도서관 앱에서 검색 가능합니다.</td></tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <span class="msg-item-date">2024-05-01</span>
                </div>

                <div class="msg-item" data-type="loan">
                    <div class="msg-item-left">
                        <span class="msg-type-badge loan">대출안내</span>
                        <div class="msg-unread-dot" style="opacity:0;"></div>
                    </div>
                    <div class="msg-item-body" onclick="openMsg(this)">
                        <p class="msg-item-title" style="color:var(--text-muted);font-weight:500;">📖 [반납완료] 마음의 정말 반납이 완료되었습니다.</p>
                        <p class="msg-item-preview">마음의 정말 / 반납일: 2024-04-15</p>
                        <div class="msg-item-detail" style="display:none;">
                            <div class="msg-detail-box">
                                <p>반납이 정상 처리되었습니다. 감사합니다.</p>
                                <br>
                                <table class="msg-detail-table">
                                    <tr><th>도서명</th><td>마음의 정말</td></tr>
                                    <tr><th>반납일</th><td>2024-04-15</td></tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <span class="msg-item-date">2024-04-15</span>
                </div>

                <div class="msg-item" data-type="loan">
                    <div class="msg-item-left">
                        <span class="msg-type-badge loan">대출안내</span>
                        <div class="msg-unread-dot" style="opacity:0;"></div>
                    </div>
                    <div class="msg-item-body" onclick="openMsg(this)">
                        <p class="msg-item-title" style="color:var(--text-muted);font-weight:500;">📚 [대출안내] 철학의 즐거움 대출이 완료되었습니다.</p>
                        <p class="msg-item-preview">철학의 즐거움 / 대출일: 2024-03-15</p>
                        <div class="msg-item-detail" style="display:none;">
                            <div class="msg-detail-box">
                                <p>대출이 완료되었습니다.</p>
                                <br>
                                <table class="msg-detail-table">
                                    <tr><th>도서명</th><td>철학의 즐거움</td></tr>
                                    <tr><th>대출일</th><td>2024-03-15</td></tr>
                                    <tr><th>반납예정일</th><td>2024-03-29</td></tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <span class="msg-item-date">2024-03-15</span>
                </div>

            </div><%-- /.msg-list --%>

        </div><%-- /.mypage-content --%>
    </div><%-- /.mypage-layout --%>
</div><%-- /.sub-container --%>

<style>
/* ── 필터 탭 ── */
.msg-filter-tabs{display:flex;gap:6px;margin-bottom:16px;flex-wrap:wrap;}
.mftab{background:none;border:1px solid var(--border);border-radius:50px;padding:6px 18px;font-size:13px;font-family:'Noto Sans KR',sans-serif;color:var(--text-mid);cursor:pointer;transition:all .18s;}
.mftab.active,.mftab:hover{background:var(--green-deep);color:#fff;border-color:var(--green-deep);}

/* ── 일괄 읽음 버튼 ── */
.msg-read-all-btn{background:none;border:1px solid var(--border);border-radius:var(--radius-sm);padding:6px 14px;font-size:12px;color:var(--text-muted);cursor:pointer;font-family:'Noto Sans KR',sans-serif;transition:all .18s;}
.msg-read-all-btn:hover{border-color:var(--green-mid);color:var(--green-deep);}

/* ── 쪽지 목록 ── */
.msg-list{display:flex;flex-direction:column;gap:8px;}
.msg-item{display:flex;align-items:flex-start;gap:14px;background:var(--bg-card);border:1px solid var(--border);border-radius:var(--radius-md);padding:16px 20px;transition:box-shadow .18s;}
.msg-item.unread{background:#f7fbf4;border-color:#c8e0c0;}
.msg-item:hover{box-shadow:var(--shadow-sm);}
.msg-item-left{display:flex;flex-direction:column;align-items:center;gap:8px;flex-shrink:0;}
.msg-unread-dot{width:7px;height:7px;border-radius:50%;background:var(--green-deep);}

/* ── 쪽지 유형 배지 ── */
.msg-type-badge{font-size:10px;font-weight:700;padding:2px 8px;border-radius:4px;white-space:nowrap;}
.msg-type-badge.loan{background:#e6f1fb;color:#185fa5;}
.msg-type-badge.overdue{background:#fce8e8;color:#c0392b;}
.msg-type-badge.wish{background:#e8f5e1;color:#2d5a27;}

/* ── 쪽지 본문 ── */
.msg-item-body{flex:1;cursor:pointer;min-width:0;}
.msg-item-title{font-size:13px;font-weight:700;color:var(--text-primary);margin-bottom:4px;line-height:1.4;}
.msg-item-preview{font-size:12px;color:var(--text-muted);white-space:nowrap;overflow:hidden;text-overflow:ellipsis;}
.msg-item-date{font-size:11px;color:var(--text-muted);flex-shrink:0;white-space:nowrap;margin-top:2px;}

/* ── 쪽지 상세 내용 ── */
.msg-detail-box{margin-top:14px;padding:16px;background:#fff;border:1px solid var(--border);border-radius:var(--radius-sm);font-size:13px;color:var(--text-mid);line-height:1.8;}
.msg-detail-table{width:100%;border-collapse:collapse;margin:8px 0;}
.msg-detail-table th{width:90px;padding:8px 12px;background:var(--green-pale);font-size:12px;font-weight:600;color:var(--text-muted);border:1px solid var(--border);text-align:left;}
.msg-detail-table td{padding:8px 12px;font-size:12px;color:var(--text-primary);border:1px solid var(--border);}
</style>

<script>
// 쪽지 클릭 → 상세 펼치기/접기
function openMsg(el) {
    const detail  = el.querySelector('.msg-item-detail');
    const preview = el.querySelector('.msg-item-preview');
    const item    = el.closest('.msg-item');
    const isOpen  = detail.style.display !== 'none';

    if (isOpen) {
        detail.style.display  = 'none';
        preview.style.display = 'block';
    } else {
        detail.style.display  = 'block';
        preview.style.display = 'none';
        // 읽음 처리 (안읽음 스타일 제거)
        item.classList.remove('unread');
        const dot = item.querySelector('.msg-unread-dot');
        if (dot) dot.style.opacity = '0';
    }
}

// 필터 탭 클릭
document.querySelectorAll('.mftab').forEach(tab => {
    tab.addEventListener('click', () => {
        document.querySelectorAll('.mftab').forEach(t => t.classList.remove('active'));
        tab.classList.add('active');

        const filter = tab.dataset.filter;
        document.querySelectorAll('.msg-item').forEach(item => {
            if (filter === 'all') {
                item.style.display = 'flex';
            } else if (filter === 'unread') {
                item.style.display = item.classList.contains('unread') ? 'flex' : 'none';
            } else {
                item.style.display = item.dataset.type === filter ? 'flex' : 'none';
            }
        });
    });
});
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
