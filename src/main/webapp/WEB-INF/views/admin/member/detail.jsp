<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="currentMenu" value="member" scope="request"/>
<%@ include file="/WEB-INF/views/admin/common/header.jsp" %>

<div class="admin-page-header">
    <div>
        <h1 class="admin-page-title">회원 상세</h1>
        <p class="admin-breadcrumb">
            <a href="${contextPath}/admin/main/main.do">대시보드</a> &gt;
            <a href="${contextPath}/admin/member/list.do">회원 관리</a> &gt; 회원 상세
        </p>
    </div>
</div>

<div style="display:grid;grid-template-columns:1fr 1fr;gap:24px;margin-bottom:24px;">
    <%-- 기본 정보 --%>
    <div class="admin-card">
        <div class="admin-card-title">기본 정보</div>
        <table class="admin-table">
            <tr><th style="background:var(--green-pale);width:110px;padding:10px 14px;border:1px solid var(--border);font-size:13px;font-weight:600;color:var(--text-muted);">이름</th><td style="padding:10px 14px;border:1px solid var(--border);font-size:13px;">${member.name}</td></tr>
            <tr><th style="background:var(--green-pale);padding:10px 14px;border:1px solid var(--border);font-size:13px;font-weight:600;color:var(--text-muted);">아이디</th><td style="padding:10px 14px;border:1px solid var(--border);font-size:13px;">${member.userId}</td></tr>
            <tr><th style="background:var(--green-pale);padding:10px 14px;border:1px solid var(--border);font-size:13px;font-weight:600;color:var(--text-muted);">이메일</th><td style="padding:10px 14px;border:1px solid var(--border);font-size:13px;">${member.email}</td></tr>
            <tr><th style="background:var(--green-pale);padding:10px 14px;border:1px solid var(--border);font-size:13px;font-weight:600;color:var(--text-muted);">연락처</th><td style="padding:10px 14px;border:1px solid var(--border);font-size:13px;">${member.phone}</td></tr>
            <tr><th style="background:var(--green-pale);padding:10px 14px;border:1px solid var(--border);font-size:13px;font-weight:600;color:var(--text-muted);">가입일</th><td style="padding:10px 14px;border:1px solid var(--border);font-size:13px;">${member.regDate}</td></tr>
            <tr>
                <th style="background:var(--green-pale);padding:10px 14px;border:1px solid var(--border);font-size:13px;font-weight:600;color:var(--text-muted);">상태</th>
                <td style="padding:10px 14px;border:1px solid var(--border);">
                    <c:choose>
                        <c:when test="${member.status == 'ACTIVE'}"><span class="badge badge-green">정상</span></c:when>
                        <c:when test="${member.status == 'STOP'}"><span class="badge badge-red">정지</span></c:when>
                        <c:when test="${member.status == 'WITHDRAW'}"><span class="badge badge-gray">탈퇴</span></c:when>
                    </c:choose>
                </td>
            </tr>
            <tr><th style="background:var(--green-pale);padding:10px 14px;border:1px solid var(--border);font-size:13px;font-weight:600;color:var(--text-muted);">누적 연체</th><td style="padding:10px 14px;border:1px solid var(--border);font-size:13px;color:#c0392b;font-weight:700;">${member.overdueCnt}회</td></tr>
        </table>
        <div style="display:flex;gap:10px;justify-content:flex-end;margin-top:16px;">
            <a href="${contextPath}/admin/member/list.do" class="btn-outline">목록</a>
            <c:if test="${member.status == 'ACTIVE'}">
                <a href="${contextPath}/admin/member/stop.do?memberId=${member.memberId}"
                   class="btn-red" style="text-decoration:none;"
                   onclick="return confirm('대출정지 처리하시겠습니까?')">대출정지</a>
            </c:if>
            <c:if test="${member.status == 'STOP'}">
                <a href="${contextPath}/admin/member/release.do?memberId=${member.memberId}"
                   class="btn-green" style="text-decoration:none;"
                   onclick="return confirm('정지를 해제하시겠습니까?')">정지해제</a>
            </c:if>
        </div>
    </div>

    <%-- 대출 현황 요약 --%>
    <div class="admin-card">
        <div class="admin-card-title">대출 현황</div>
        <div style="display:grid;grid-template-columns:repeat(3,1fr);gap:12px;margin-bottom:16px;">
            <div style="text-align:center;padding:16px;background:var(--green-pale);border-radius:var(--radius-sm);">
                <p style="font-size:20px;font-weight:700;color:var(--green-deep);">${member.totalLoanCnt}</p>
                <p style="font-size:11px;color:var(--green-deep);margin-top:4px;">총 대출</p>
            </div>
            <div style="text-align:center;padding:16px;background:#e6f1fb;border-radius:var(--radius-sm);">
                <p style="font-size:20px;font-weight:700;color:#185fa5;">${member.loanCnt}</p>
                <p style="font-size:11px;color:#185fa5;margin-top:4px;">대출중</p>
            </div>
            <div style="text-align:center;padding:16px;background:var(--red-pale);border-radius:var(--radius-sm);">
                <p style="font-size:20px;font-weight:700;color:var(--red);">${member.overdueCnt}</p>
                <p style="font-size:11px;color:var(--red);margin-top:4px;">연체</p>
            </div>
        </div>
        <table class="admin-table">
            <thead>
                <tr><th>도서명</th><th class="td-center" style="width:90px;">대출일</th><th class="td-center" style="width:90px;">반납예정</th><th class="td-center" style="width:60px;">상태</th></tr>
            </thead>
            <tbody>
                <c:choose>
                    <c:when test="${empty loanList}">
                        <tr><td colspan="4" style="text-align:center;padding:20px;color:var(--text-muted);">대출 내역이 없습니다.</td></tr>
                    </c:when>
                    <c:otherwise>
                        <c:forEach var="loan" items="${loanList}">
                            <tr>
                                <td>${loan.title}</td>
                                <td class="td-center">${loan.loanDate}</td>
                                <td class="td-center">${loan.dueDate}</td>
                                <td class="td-center">
                                    <c:choose>
                                        <c:when test="${loan.status == 'LOANED'}"><span class="badge badge-green">대출중</span></c:when>
                                        <c:when test="${loan.status == 'OVERDUE'}"><span class="badge badge-red">연체</span></c:when>
                                        <c:when test="${loan.status == 'RETURNED'}"><span class="badge badge-gray">반납</span></c:when>
                                    </c:choose>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
            </tbody>
        </table>
    </div>
</div>

<%@ include file="/WEB-INF/views/admin/common/footer.jsp" %>
