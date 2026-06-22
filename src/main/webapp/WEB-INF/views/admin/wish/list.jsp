<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="currentMenu" value="wish" scope="request"/>
<%@ include file="/WEB-INF/views/admin/common/header.jsp" %>

<div class="admin-page-header">
    <div>
        <h1 class="admin-page-title">희망도서 관리</h1>
        <p class="admin-breadcrumb"><a href="${contextPath}/admin/main/main.do">대시보드</a> &gt; 희망도서 관리</p>
    </div>
</div>

<%-- 상태 탭 --%>
<div class="wish-admin-tabs">
    <a href="#" class="wtab active">대기중 <span class="wtab-cnt amber">8</span></a>
    <a href="#" class="wtab">승인완료 <span class="wtab-cnt">24</span></a>
    <a href="#" class="wtab">반려 <span class="wtab-cnt">3</span></a>
</div>

<div class="admin-card">
    <div class="admin-search-bar">
        <select class="admin-search-select">
            <option>전체</option><option>도서명</option><option>신청자</option>
        </select>
        <input type="text" class="admin-search-input" placeholder="검색어 입력">
        <button class="btn-green btn-sm">검색</button>
        <a href="#" class="btn-outline btn-sm">초기화</a>
        <span style="font-size:12px;color:var(--text-muted);margin-left:auto;">총 <strong>8</strong>건</span>
    </div>

    <div class="admin-table-wrap">
        <table class="admin-table">
            <thead>
                <tr>
                    <th class="td-center" style="width:60px;">번호</th>
                    <th style="width:80px;">신청자</th>
                    <th>도서명</th>
                    <th style="width:90px;">저자</th>
                    <th style="width:90px;">출판사</th>
                    <th style="width:90px;">ISBN</th>
                    <th style="width:105px;" class="td-center">신청일</th>
                    <th style="width:60px;" class="td-center">상태</th>
                    <th style="width:160px;" class="td-center">관리</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="td-center" style="color:var(--text-muted);">8</td>
                    <td>홍길동</td>
                    <td>
                        파친코
                        <span style="display:block;font-size:11px;color:var(--text-muted);">사유: 꼭 읽고 싶은 책입니다.</span>
                    </td>
                    <td style="font-size:12px;">이민진</td>
                    <td style="font-size:12px;">문학사상</td>
                    <td style="font-size:11px;">9791187512905</td>
                    <td class="td-center">2024-04-30</td>
                    <td class="td-center"><span class="badge badge-amber">대기</span></td>
                    <td class="td-center">
                        <a href="#" class="btn-green btn-sm" onclick="return confirm('승인하시겠습니까?')">승인</a>
                        <a href="#" class="btn-red btn-sm" style="margin-left:4px;text-decoration:none;display:inline-block;"
                           onclick="return confirm('반려하시겠습니까?')">반려</a>
                    </td>
                </tr>
                <tr>
                    <td class="td-center" style="color:var(--text-muted);">7</td>
                    <td>김영희</td>
                    <td>
                        채식주의자
                        <span style="display:block;font-size:11px;color:var(--text-muted);">사유: 노벨문학상 수상작을 읽고 싶습니다.</span>
                    </td>
                    <td style="font-size:12px;">한강</td>
                    <td style="font-size:12px;">창비</td>
                    <td style="font-size:11px;">9788936434267</td>
                    <td class="td-center">2024-04-29</td>
                    <td class="td-center"><span class="badge badge-amber">대기</span></td>
                    <td class="td-center">
                        <a href="#" class="btn-green btn-sm" onclick="return confirm('승인하시겠습니까?')">승인</a>
                        <a href="#" class="btn-red btn-sm" style="margin-left:4px;text-decoration:none;display:inline-block;"
                           onclick="return confirm('반려하시겠습니까?')">반려</a>
                    </td>
                </tr>
                <tr>
                    <td class="td-center" style="color:var(--text-muted);">6</td>
                    <td>이철수</td>
                    <td>불편한 편의점 2</td>
                    <td style="font-size:12px;">김호연</td>
                    <td style="font-size:12px;">나무옆의자</td>
                    <td style="font-size:11px;">9791192966038</td>
                    <td class="td-center">2024-04-28</td>
                    <td class="td-center"><span class="badge badge-amber">대기</span></td>
                    <td class="td-center">
                        <a href="#" class="btn-green btn-sm" onclick="return confirm('승인하시겠습니까?')">승인</a>
                        <a href="#" class="btn-red btn-sm" style="margin-left:4px;text-decoration:none;display:inline-block;"
                           onclick="return confirm('반려하시겠습니까?')">반려</a>
                    </td>
                </tr>
                <tr>
                    <td class="td-center" style="color:var(--text-muted);">5</td>
                    <td>박민준</td>
                    <td>달러구트 꿈 백화점 3</td>
                    <td style="font-size:12px;">이미예</td>
                    <td style="font-size:12px;">팩토리나인</td>
                    <td style="font-size:11px;">9791165347000</td>
                    <td class="td-center">2024-04-27</td>
                    <td class="td-center"><span class="badge badge-amber">대기</span></td>
                    <td class="td-center">
                        <a href="#" class="btn-green btn-sm" onclick="return confirm('승인하시겠습니까?')">승인</a>
                        <a href="#" class="btn-red btn-sm" style="margin-left:4px;text-decoration:none;display:inline-block;"
                           onclick="return confirm('반려하시겠습니까?')">반려</a>
                    </td>
                </tr>
                <tr>
                    <td class="td-center" style="color:var(--text-muted);">4</td>
                    <td>최수연</td>
                    <td>트렌드 코리아 2025</td>
                    <td style="font-size:12px;">김난도 외</td>
                    <td style="font-size:12px;">미래의창</td>
                    <td style="font-size:11px;">9788959898176</td>
                    <td class="td-center">2024-04-25</td>
                    <td class="td-center"><span class="badge badge-amber">대기</span></td>
                    <td class="td-center">
                        <a href="#" class="btn-green btn-sm" onclick="return confirm('승인하시겠습니까?')">승인</a>
                        <a href="#" class="btn-red btn-sm" style="margin-left:4px;text-decoration:none;display:inline-block;"
                           onclick="return confirm('반려하시겠습니까?')">반려</a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

    <div class="admin-paging">
        <a href="#" class="admin-page-btn active">1</a>
        <a href="#" class="admin-page-btn">2</a>
    </div>
</div>

<style>
.wish-admin-tabs{display:flex;gap:4px;margin-bottom:20px;border-bottom:2px solid var(--border);}
.wtab{padding:10px 20px;font-size:14px;font-weight:500;color:var(--text-muted);text-decoration:none;border-bottom:2px solid transparent;margin-bottom:-2px;transition:all .18s;display:inline-flex;align-items:center;gap:6px;}
.wtab:hover{color:var(--green-mid);}
.wtab.active{color:var(--green-deep);border-bottom-color:var(--green-deep);font-weight:700;}
.wtab-cnt{font-size:11px;font-weight:700;padding:1px 7px;border-radius:50px;background:var(--green-pale);color:var(--green-deep);}
.wtab-cnt.amber{background:#fff7e1;color:#c07800;}
</style>

<%@ include file="/WEB-INF/views/admin/common/footer.jsp" %>
