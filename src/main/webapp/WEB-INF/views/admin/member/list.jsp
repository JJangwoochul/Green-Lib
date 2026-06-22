<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="currentMenu" value="member" scope="request"/>
<%@ include file="/WEB-INF/views/admin/common/header.jsp" %>

<div class="admin-page-header">
    <div>
        <h1 class="admin-page-title">회원 관리</h1>
        <p class="admin-breadcrumb"><a href="${contextPath}/admin/main/main.do">대시보드</a> &gt; 회원 관리</p>
    </div>
</div>

<%-- 상태 탭 --%>
<div class="mem-tabs">
    <a href="#" class="mtab active">전체 <span class="mtab-cnt">342</span></a>
    <a href="#" class="mtab">대출정지 <span class="mtab-cnt">3</span></a>
    <a href="#" class="mtab">연체중 <span class="mtab-cnt red">5</span></a>
</div>

<div class="admin-card">
    <div class="admin-search-bar">
        <select class="admin-search-select">
            <option>전체</option><option>이름</option><option>아이디</option><option>이메일</option>
        </select>
        <input type="text" class="admin-search-input" placeholder="검색어 입력">
        <button class="btn-green btn-sm">검색</button>
        <a href="#" class="btn-outline btn-sm">초기화</a>
        <span style="font-size:12px;color:var(--text-muted);margin-left:auto;">총 <strong>342</strong>명</span>
    </div>

    <div class="admin-table-wrap">
        <table class="admin-table">
            <thead>
                <tr>
                    <th class="td-center" style="width:60px;">번호</th>
                    <th style="width:80px;">이름</th>
                    <th style="width:110px;">아이디</th>
                    <th>이메일</th>
                    <th style="width:120px;">연락처</th>
                    <th style="width:70px;" class="td-center">대출중</th>
                    <th style="width:70px;" class="td-center">연체횟수</th>
                    <th style="width:70px;" class="td-center">상태</th>
                    <th style="width:100px;" class="td-center">가입일</th>
                    <th style="width:120px;" class="td-center">관리</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="td-center" style="color:var(--text-muted);">1</td>
                    <td>홍길동</td>
                    <td style="font-size:12px;">hong123</td>
                    <td style="font-size:12px;">hong@email.com</td>
                    <td style="font-size:12px;">010-1234-5678</td>
                    <td class="td-center"><span class="badge badge-blue">3권</span></td>
                    <td class="td-center">0회</td>
                    <td class="td-center"><span class="badge badge-green">정상</span></td>
                    <td class="td-center">2024-01-15</td>
                    <td class="td-center">
                        <a href="${contextPath}/admin/member/detail.do?memberId=1" class="btn-outline btn-sm">상세</a>
                    </td>
                </tr>
                <tr>
                    <td class="td-center" style="color:var(--text-muted);">2</td>
                    <td>김영희</td>
                    <td style="font-size:12px;">kim456</td>
                    <td style="font-size:12px;">kim@email.com</td>
                    <td style="font-size:12px;">010-9876-5432</td>
                    <td class="td-center"><span class="badge badge-blue">1권</span></td>
                    <td class="td-center">2회</td>
                    <td class="td-center"><span class="badge badge-green">정상</span></td>
                    <td class="td-center">2024-02-03</td>
                    <td class="td-center">
                        <a href="${contextPath}/admin/member/detail.do?memberId=2" class="btn-outline btn-sm">상세</a>
                    </td>
                </tr>
                <tr style="background:#fdf5f5;">
                    <td class="td-center" style="color:var(--text-muted);">3</td>
                    <td>이철수</td>
                    <td style="font-size:12px;">lee789</td>
                    <td style="font-size:12px;">lee@email.com</td>
                    <td style="font-size:12px;">010-5555-1234</td>
                    <td class="td-center"><span class="badge badge-blue">2권</span></td>
                    <td class="td-center" style="color:#c0392b;font-weight:700;">3회</td>
                    <td class="td-center"><span class="badge badge-red">정지</span></td>
                    <td class="td-center">2024-01-22</td>
                    <td class="td-center">
                        <a href="${contextPath}/admin/member/detail.do?memberId=3" class="btn-outline btn-sm">상세</a>
                        <a href="#" class="btn-green btn-sm" style="margin-top:4px;text-decoration:none;"
                           onclick="return confirm('정지를 해제하시겠습니까?')">해제</a>
                    </td>
                </tr>
                <tr>
                    <td class="td-center" style="color:var(--text-muted);">4</td>
                    <td>박민준</td>
                    <td style="font-size:12px;">park001</td>
                    <td style="font-size:12px;">park@email.com</td>
                    <td style="font-size:12px;">010-2222-3333</td>
                    <td class="td-center">-</td>
                    <td class="td-center">0회</td>
                    <td class="td-center"><span class="badge badge-green">정상</span></td>
                    <td class="td-center">2024-03-10</td>
                    <td class="td-center">
                        <a href="${contextPath}/admin/member/detail.do?memberId=4" class="btn-outline btn-sm">상세</a>
                        <a href="#" class="btn-red btn-sm" style="margin-top:4px;text-decoration:none;display:inline-flex;"
                           onclick="return confirm('대출정지 처리하시겠습니까?')">정지</a>
                    </td>
                </tr>
                <tr>
                    <td class="td-center" style="color:var(--text-muted);">5</td>
                    <td>최수연</td>
                    <td style="font-size:12px;">choi22</td>
                    <td style="font-size:12px;">choi@email.com</td>
                    <td style="font-size:12px;">010-7777-8888</td>
                    <td class="td-center"><span class="badge badge-blue">1권</span></td>
                    <td class="td-center">1회</td>
                    <td class="td-center"><span class="badge badge-green">정상</span></td>
                    <td class="td-center">2024-02-28</td>
                    <td class="td-center">
                        <a href="${contextPath}/admin/member/detail.do?memberId=5" class="btn-outline btn-sm">상세</a>
                        <a href="#" class="btn-red btn-sm" style="margin-top:4px;text-decoration:none;display:inline-flex;"
                           onclick="return confirm('대출정지 처리하시겠습니까?')">정지</a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

    <div class="admin-paging">
        <a href="#" class="admin-page-btn">&laquo;</a>
        <a href="#" class="admin-page-btn active">1</a>
        <a href="#" class="admin-page-btn">2</a>
        <a href="#" class="admin-page-btn">3</a>
        <a href="#" class="admin-page-btn">&raquo;</a>
    </div>
</div>

<style>
.mem-tabs{display:flex;gap:4px;margin-bottom:20px;border-bottom:2px solid var(--border);}
.mtab{padding:10px 20px;font-size:14px;font-weight:500;color:var(--text-muted);text-decoration:none;border-bottom:2px solid transparent;margin-bottom:-2px;transition:all .18s;display:inline-flex;align-items:center;gap:6px;}
.mtab:hover{color:var(--green-mid);}
.mtab.active{color:var(--green-deep);border-bottom-color:var(--green-deep);font-weight:700;}
.mtab-cnt{background:var(--green-pale);color:var(--green-deep);font-size:11px;font-weight:700;padding:1px 7px;border-radius:50px;}
.mtab-cnt.red{background:#fce8e8;color:#c0392b;}
</style>

<%@ include file="/WEB-INF/views/admin/common/footer.jsp" %>
