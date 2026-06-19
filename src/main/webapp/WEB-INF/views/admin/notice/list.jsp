<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="currentMenu" value="notice" scope="request"/>

<%@ include file="/WEB-INF/views/admin/common/header.jsp" %>

<div class="admin-page-header">
    <div>
        <h1 class="admin-page-title">공지사항 관리</h1>
        <p class="admin-breadcrumb"><a href="${contextPath}/admin/main/main.do">대시보드</a> &gt; 공지사항</p>
    </div>
    <a href="${contextPath}/admin/notice/write.do" class="btn-green">
        <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><line x1="12" y1="5" x2="12" y2="19"/><line x1="5" y1="12" x2="19" y2="12"/></svg>
        공지 등록
    </a>
</div>

<div class="admin-card">
    <!-- 검색 -->
    <div class="admin-search-bar">
        <select class="admin-search-select">
            <option>전체</option><option>공지</option><option>행사강연</option><option>도서안내</option><option>휴관안내</option>
        </select>
        <select class="admin-search-select">
            <option>제목+내용</option><option>제목</option><option>내용</option>
        </select>
        <input type="text" class="admin-search-input" placeholder="검색어 입력">
        <button class="btn-green btn-sm">검색</button>
        <span style="font-size:12px;color:var(--text-muted);margin-left:auto;">총 <strong>15</strong>건</span>
    </div>

    <div class="admin-table-wrap">
        <table class="admin-table">
            <thead>
                <tr>
                    <th style="width:60px;" class="td-center">번호</th>
                    <th style="width:80px;" class="td-center">분류</th>
                    <th>제목</th>
                    <th style="width:80px;" class="td-center">고정</th>
                    <th style="width:80px;" class="td-center">조회수</th>
                    <th style="width:110px;" class="td-center">작성일</th>
                    <th style="width:120px;" class="td-center">관리</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="td-center" style="color:var(--text-muted);">15</td>
                    <td class="td-center"><span class="badge badge-green">공지</span></td>
                    <td><a href="${contextPath}/admin/notice/detail.do?noticeId=15" style="text-decoration:none;color:var(--text-primary);">5월 휴관일 및 운영시간 안내</a></td>
                    <td class="td-center"><span class="badge badge-amber">고정</span></td>
                    <td class="td-center">248</td>
                    <td class="td-center">2024-05-01</td>
                    <td class="td-center">
                        <a href="${contextPath}/admin/notice/edit.do?noticeId=15" class="btn-outline btn-sm">수정</a>
                        <button onclick="deleteNotice(15)" class="btn-red btn-sm" style="margin-top:4px;">삭제</button>
                    </td>
                </tr>
                <tr>
                    <td class="td-center" style="color:var(--text-muted);">14</td>
                    <td class="td-center"><span class="badge badge-blue">행사</span></td>
                    <td><a href="${contextPath}/admin/notice/detail.do?noticeId=14" style="text-decoration:none;color:var(--text-primary);">[행사] 숲속 인문학 강연 안내</a></td>
                    <td class="td-center"><span style="color:var(--text-muted);font-size:12px;">-</span></td>
                    <td class="td-center">132</td>
                    <td class="td-center">2024-04-28</td>
                    <td class="td-center">
                        <a href="${contextPath}/admin/notice/edit.do?noticeId=14" class="btn-outline btn-sm">수정</a>
                        <button onclick="deleteNotice(14)" class="btn-red btn-sm" style="margin-top:4px;">삭제</button>
                    </td>
                </tr>
                <tr>
                    <td class="td-center" style="color:var(--text-muted);">13</td>
                    <td class="td-center"><span class="badge badge-green">공지</span></td>
                    <td><a href="${contextPath}/admin/notice/detail.do?noticeId=13" style="text-decoration:none;color:var(--text-primary);">도서관 시스템 점검 안내</a></td>
                    <td class="td-center"><span style="color:var(--text-muted);font-size:12px;">-</span></td>
                    <td class="td-center">189</td>
                    <td class="td-center">2024-04-30</td>
                    <td class="td-center">
                        <a href="${contextPath}/admin/notice/edit.do?noticeId=13" class="btn-outline btn-sm">수정</a>
                        <button onclick="deleteNotice(13)" class="btn-red btn-sm" style="margin-top:4px;">삭제</button>
                    </td>
                </tr>
                <tr>
                    <td class="td-center" style="color:var(--text-muted);">12</td>
                    <td class="td-center"><span class="badge badge-amber">도서</span></td>
                    <td><a href="${contextPath}/admin/notice/detail.do?noticeId=12" style="text-decoration:none;color:var(--text-primary);">4월 신착도서 목록 안내</a></td>
                    <td class="td-center"><span style="color:var(--text-muted);font-size:12px;">-</span></td>
                    <td class="td-center">97</td>
                    <td class="td-center">2024-04-20</td>
                    <td class="td-center">
                        <a href="${contextPath}/admin/notice/edit.do?noticeId=12" class="btn-outline btn-sm">수정</a>
                        <button onclick="deleteNotice(12)" class="btn-red btn-sm" style="margin-top:4px;">삭제</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

    <div class="admin-paging">
        <a href="#" class="admin-page-btn">&laquo;</a>
        <a href="#" class="admin-page-btn active">1</a>
        <a href="#" class="admin-page-btn">2</a>
        <a href="#" class="admin-page-btn">&raquo;</a>
    </div>
</div>

<script>
function deleteNotice(id) {
    if (confirm('정말 삭제하시겠습니까?')) {
        alert('삭제 기능은 DB 연동 후 구현됩니다. (ID: ' + id + ')');
    }
}
</script>

<%@ include file="/WEB-INF/views/admin/common/footer.jsp" %>
