<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="sub-banner">
    <div class="sub-banner-inner">
        <div class="sub-banner-left">
            <p class="sub-breadcrumb">홈 <span style="opacity:.4;">›</span> 로그인</p>
            <h2 class="sub-title">🔐 로그인</h2>
        </div>
    </div>
</div>

<div class="sub-container">
    <div class="auth-wrap">
        <div class="auth-card">
            <div class="auth-logo">
                <svg width="40" height="40" viewBox="0 0 36 36" fill="none">
                    <rect x="5" y="8" width="12" height="20" rx="2" fill="#4a7c40"/>
                    <rect x="6" y="9" width="10" height="18" rx="1.5" fill="#6fa35a"/>
                    <rect x="5" y="8" width="2" height="20" rx="1" fill="#2d5a27"/>
                    <rect x="18" y="8" width="12" height="20" rx="2" fill="#4a7c40"/>
                    <rect x="19" y="9" width="10" height="18" rx="1.5" fill="#85bb6e"/>
                    <rect x="19" y="8" width="2" height="20" rx="1" fill="#2d5a27"/>
                    <path d="M17 6 C17 6 14 3 11 5 C9 6 10 9 12 9 C14 9 17 8 17 6Z" fill="#6fa35a"/>
                    <path d="M17 6 C17 6 20 3 23 5 C25 6 24 9 22 9 C20 9 17 8 17 6Z" fill="#4a7c40"/>
                </svg>
                <p class="auth-logo-name">푸른숲 도서관</p>
            </div>

            <form action="${contextPath}/member/loginProc.do" method="post">
                <div class="form-group">
                    <label class="form-label">아이디</label>
                    <input type="text" name="userId" class="form-input" placeholder="아이디를 입력하세요" autocomplete="username">
                </div>
                <div class="form-group">
                    <label class="form-label">비밀번호</label>
                    <input type="password" name="userPw" class="form-input" placeholder="비밀번호를 입력하세요" autocomplete="current-password">
                </div>
                <div class="login-options">
                    <label class="filter-check"><input type="checkbox"> 아이디 저장</label>
                    <div class="login-links">
                        <a href="#">아이디 찾기</a>
                        <span>|</span>
                        <a href="#">비밀번호 찾기</a>
                    </div>
                </div>
                <button type="submit" class="btn-login-full">로그인</button>
            </form>

            <div class="auth-divider"><span>또는</span></div>

            <a href="${contextPath}/member/join.do" class="btn-join-full">회원가입</a>

            <p class="auth-notice">아직 회원이 아니신가요? 회원가입 후 도서 대출 서비스를 이용하실 수 있습니다.</p>
        </div>
    </div>
</div>

<style>
.auth-wrap{display:flex;justify-content:center;padding:20px 0 40px;}
.auth-card{background:var(--bg-card);border:1px solid var(--border);border-radius:var(--radius-lg);padding:52px 48px;width:100%;max-width:440px;}
.auth-logo{text-align:center;margin-bottom:36px;}
.auth-logo-name{font-size:14px;font-weight:700;color:var(--green-deep);margin-top:8px;}
.form-group{display:flex;flex-direction:column;gap:7px;margin-bottom:20px;}
.form-label{font-size:13px;font-weight:600;color:var(--text-mid);}
.form-input{border:1px solid var(--border);border-radius:var(--radius-sm);padding:13px 16px;font-size:14px;font-family:'Noto Sans KR',sans-serif;outline:none;transition:border .18s;}
.form-input:focus{border-color:var(--green-mid);}
.login-options{display:flex;justify-content:space-between;align-items:center;margin-bottom:24px;}
.filter-check{display:flex;align-items:center;gap:6px;font-size:12px;color:var(--text-muted);cursor:pointer;}
.filter-check input{accent-color:var(--green-deep);}
.login-links{display:flex;gap:8px;align-items:center;font-size:12px;color:var(--text-muted);}
.login-links a{color:var(--text-muted);text-decoration:none;transition:color .18s;}
.login-links a:hover{color:var(--green-deep);}
.btn-login-full{width:100%;background:var(--green-deep);color:#fff;border:none;border-radius:var(--radius-sm);padding:14px;font-size:15px;font-weight:700;font-family:'Noto Sans KR',sans-serif;cursor:pointer;transition:background .18s;}
.btn-login-full:hover{background:var(--green-mid);}
.auth-divider{text-align:center;margin:24px 0;position:relative;}
.auth-divider::before{content:'';position:absolute;left:0;top:50%;width:100%;height:1px;background:var(--border);}
.auth-divider span{background:var(--bg-card);padding:0 12px;position:relative;font-size:12px;color:var(--text-muted);}
.btn-join-full{display:block;text-align:center;border:1px solid var(--green-mid);color:var(--green-deep);border-radius:var(--radius-sm);padding:14px;font-size:14px;font-weight:600;text-decoration:none;transition:all .18s;margin-bottom:20px;}
.btn-join-full:hover{background:var(--green-pale);}
.auth-notice{font-size:12px;color:var(--text-muted);text-align:center;line-height:1.8;margin-top:4px;}
</style>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
