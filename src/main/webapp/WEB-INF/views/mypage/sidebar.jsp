<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="currentUri" value="${requestScope['javax.servlet.forward.request_uri']}" />

<aside class="mypage-side">
    <div class="my-profile-card">
        <div class="my-avatar">
            <svg width="36" height="36" viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="1.5">
                <circle cx="12" cy="8" r="4"/><path d="M4 20c0-4 3.6-7 8-7s8 3 8 7"/>
            </svg>
        </div>
        <p class="my-name">${sessionScope.name} 님</p>
        <p class="my-id">${sessionScope.userId}</p>
    </div>
    <ul class="mypage-menu">
        <li class="${mypageMenu == 'main'  ? 'active' : ''}">
            <a href="${contextPath}/mypage/main.do">마이페이지 홈</a>
        </li>
        <li class="${mypageMenu == 'loan'  ? 'active' : ''}">
            <a href="${contextPath}/mypage/loan.do">대출내역</a>
        </li>
        <li class="${mypageMenu == 'wish'  ? 'active' : ''}">
            <a href="${contextPath}/mypage/wish.do">희망도서 신청내역</a>
        </li>
        <li class="${mypageMenu == 'interest' ? 'active' : ''}">
            <a href="${contextPath}/mypage/interest.do">관심도서</a>
        </li>
        <li class="${mypageMenu == 'message' ? 'active' : ''}">
            <a href="${contextPath}/mypage/message.do">받은 쪽지함</a>
        </li>
        <li class="${mypageMenu == 'goal'  ? 'active' : ''}">
            <a href="${contextPath}/mypage/goal.do">독서 목표</a>
        </li>
        <li class="${mypageMenu == 'edit'  ? 'active' : ''}">
            <a href="${contextPath}/mypage/edit.do">개인정보 수정</a>
        </li>
    </ul>
</aside>
