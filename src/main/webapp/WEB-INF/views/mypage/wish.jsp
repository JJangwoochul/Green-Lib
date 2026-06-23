<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="mypageMenu" value="wish" scope="request"/>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="sub-banner">
    <div class="sub-banner-inner">
        <div class="sub-banner-left">
            <p class="sub-breadcrumb">홈 <span style="opacity:.4;">›</span> 마이페이지 <span style="opacity:.4;">›</span> 희망도서 신청내역</p>
            <h2 class="sub-title">희망도서 신청내역</h2>
        </div>
    </div>
</div>

<div class="sub-container">
    <div class="mypage-layout">
        <%@ include file="/WEB-INF/views/mypage/sidebar.jsp" %>

        <div class="mypage-content">
            <div style="display:flex;justify-content:space-between;align-items:center;margin-bottom:20px;">
                <p style="font-size:14px;color:var(--text-muted);">
                    총 <strong style="color:var(--green-deep);">4</strong>건의 신청내역
                </p>
                <a href="${contextPath}/book/wish.do" class="wish-new-btn">새 도서 신청</a>
            </div>

            <div class="wish-list">
                <!-- 검토중 -->
                <div class="wish-item">
                    <div class="wish-item-body">
                        <div class="wish-item-top">
                            <span class="wish-badge wait">검토중</span>
                            <span class="wish-date">신청일 : 2024-04-30</span>
                        </div>
                        <p class="wish-title">파친코</p>
                        <p class="wish-meta">이민진 저 &nbsp;|&nbsp; 문학사상</p>
                        <p class="wish-reason">사유 : 한국계 미국인의 이야기를 담은 소설로 꼭 읽어보고 싶습니다.</p>
                    </div>
                </div>
                <!-- 검토중 -->
                <div class="wish-item">
                    <div class="wish-item-body">
                        <div class="wish-item-top">
                            <span class="wish-badge wait">검토중</span>
                            <span class="wish-date">신청일 : 2024-04-29</span>
                        </div>
                        <p class="wish-title">채식주의자</p>
                        <p class="wish-meta">한강 저 &nbsp;|&nbsp; 창비</p>
                        <p class="wish-reason">사유 : 노벨문학상 수상 작가의 작품을 읽고 싶습니다.</p>
                    </div>
                </div>
                <!-- 승인완료 -->
                <div class="wish-item">
                    <div class="wish-item-body">
                        <div class="wish-item-top">
                            <span class="wish-badge approve">승인완료</span>
                            <span class="wish-date">신청일 : 2024-04-10 &nbsp;|&nbsp; 처리일 : 2024-04-15</span>
                        </div>
                        <p class="wish-title">불편한 편의점 2</p>
                        <p class="wish-meta">김호연 저 &nbsp;|&nbsp; 나무옆의자</p>
                        <p class="wish-reason">사유 : 1권이 너무 재미있어서 2권도 읽고 싶습니다.</p>
                    </div>
                </div>
                <!-- 반려 -->
                <div class="wish-item">
                    <div class="wish-item-body">
                        <div class="wish-item-top">
                            <span class="wish-badge reject">반려</span>
                            <span class="wish-date">신청일 : 2024-03-20 &nbsp;|&nbsp; 처리일 : 2024-03-25</span>
                        </div>
                        <p class="wish-title">미래의 나</p>
                        <p class="wish-meta">저자 미상 &nbsp;|&nbsp; 출판사 미상</p>
                        <p class="wish-reason">사유 : 해당 도서 정보가 부족합니다.</p>
                        <div class="wish-admin-memo">
                            📌 관리자 메모 : 도서 정보(ISBN 또는 정확한 출판사)를 확인 후 재신청해 주세요.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
.wish-new-btn{background:var(--green-deep);color:#fff;border:none;border-radius:var(--radius-sm);padding:9px 18px;font-size:13px;font-weight:600;text-decoration:none;display:inline-block;transition:background .18s;}
.wish-new-btn:hover{background:var(--green-mid);}
.wish-list{display:flex;flex-direction:column;gap:12px;}
.wish-item{background:var(--bg-card);border:1px solid var(--border);border-radius:var(--radius-md);padding:20px 24px;transition:box-shadow .18s;}
.wish-item:hover{box-shadow:var(--shadow-sm);}
.wish-item-top{display:flex;align-items:center;gap:12px;margin-bottom:10px;}
.wish-date{font-size:11px;color:var(--text-muted);margin-left:auto;}
.wish-badge{font-size:11px;font-weight:700;padding:3px 12px;border-radius:50px;}
.wish-badge.wait{background:#fff7e1;color:#c07800;}
.wish-badge.approve{background:#e8f5e1;color:#2d5a27;}
.wish-badge.reject{background:#fce8e8;color:#c0392b;}
.wish-title{font-size:16px;font-weight:700;color:var(--text-primary);margin-bottom:4px;}
.wish-meta{font-size:12px;color:var(--text-muted);margin-bottom:6px;}
.wish-reason{font-size:13px;color:var(--text-mid);}
.wish-admin-memo{margin-top:12px;background:#fce8e8;border-left:3px solid #c0392b;border-radius:4px;padding:10px 14px;font-size:12px;color:#c0392b;}
</style>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
