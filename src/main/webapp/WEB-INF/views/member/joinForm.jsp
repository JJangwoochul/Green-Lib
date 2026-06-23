<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="sub-banner">
    <div class="sub-banner-inner">
        <div class="sub-banner-left">
            <p class="sub-breadcrumb">홈 <span style="opacity:.4;">›</span> 회원가입</p>
            <h2 class="sub-title">회원가입</h2>
        </div>
    </div>
</div>

<div class="sub-container">
    <div class="join-wrap">

        <%-- 단계 표시 --%>
        <div class="join-steps">
            <div class="step done">
                <span class="step-num">✓</span>
                <span class="step-txt">약관동의</span>
            </div>
            <div class="step-line done"></div>
            <div class="step active">
                <span class="step-num">2</span>
                <span class="step-txt">정보입력</span>
            </div>
            <div class="step-line"></div>
            <div class="step">
                <span class="step-num">3</span>
                <span class="step-txt">가입완료</span>
            </div>
        </div>

        <%-- 정보 입력 폼 --%>
        <form action="${contextPath}/member/joinProc.do" method="post" id="joinForm">
            <div class="join-card">
                <h3 class="join-card-title">기본 정보 입력</h3>

                <%-- 아이디 --%>
                <div class="join-form-group">
                    <label class="join-label">아이디 <span class="join-required">*</span></label>
                    <div class="join-input-row">
                        <input type="text" name="userId" id="userId" class="join-input"
                               placeholder="영문, 숫자 조합 4~20자" maxlength="20">
                        <button type="button" class="join-btn-check" onclick="checkId()">중복확인</button>
                    </div>
                    <span class="join-hint" id="idHint">영문 소문자, 숫자를 포함하여 4~20자로 입력하세요.</span>
                </div>

                <%-- 비밀번호 --%>
                <div class="join-form-group">
                    <label class="join-label">비밀번호 <span class="join-required">*</span></label>
                    <input type="password" name="userPw" id="userPw" class="join-input"
                           placeholder="영문, 숫자, 특수문자 조합 8~20자" maxlength="20"
                           oninput="checkPwMatch()">
                    <span class="join-hint" id="pwHint">영문, 숫자, 특수문자를 포함하여 8자 이상 입력하세요.</span>
                </div>

                <%-- 비밀번호 확인 --%>
                <div class="join-form-group">
                    <label class="join-label">비밀번호 확인 <span class="join-required">*</span></label>
                    <input type="password" name="userPwCheck" id="userPwCheck" class="join-input"
                           placeholder="비밀번호를 다시 입력하세요" maxlength="20"
                           oninput="checkPwMatch()">
                    <span class="join-hint" id="pwCheckHint"></span>
                </div>

                <%-- 이름 / 생년월일 --%>
                <div class="join-form-row">
                    <div class="join-form-group">
                        <label class="join-label">이름 <span class="join-required">*</span></label>
                        <input type="text" name="name" class="join-input"
                               placeholder="실명 입력" maxlength="20">
                    </div>
                    <div class="join-form-group">
                        <label class="join-label">생년월일</label>
                        <input type="date" name="birth" class="join-input">
                    </div>
                </div>

                <%-- 이메일 --%>
                <div class="join-form-group">
                    <label class="join-label">이메일 <span class="join-required">*</span></label>
                    <div class="join-input-row">
                        <input type="email" name="email" id="email" class="join-input"
                               placeholder="example@email.com">
                        <button type="button" class="join-btn-check" onclick="checkEmail()">인증요청</button>
                    </div>
                    <span class="join-hint" id="emailHint">이메일 인증은 비밀번호 찾기에 사용됩니다.</span>
                </div>

                <%-- 연락처 --%>
                <div class="join-form-group">
                    <label class="join-label">연락처</label>
                    <input type="tel" name="phone" class="join-input"
                           placeholder="010-0000-0000" maxlength="13"
                           oninput="this.value=this.value.replace(/[^0-9-]/g,'')">
                </div>

                <%-- 주소 --%>
                <div class="join-form-group">
                    <label class="join-label">주소</label>
                    <div class="join-input-row" style="margin-bottom:8px;">
                        <input type="text" name="postcode" id="postcode" class="join-input"
                               placeholder="우편번호" style="max-width:160px;" readonly>
                        <button type="button" class="join-btn-check" onclick="searchAddress()">주소검색</button>
                    </div>
                    <input type="text" name="address" id="address" class="join-input"
                           placeholder="기본 주소" readonly style="margin-bottom:8px;">
                    <input type="text" name="addressDetail" class="join-input"
                           placeholder="상세 주소 입력">
                </div>

            </div><%-- /.join-card --%>

            <div class="join-actions" style="margin-top:20px;">
                <a href="${contextPath}/member/join.do" class="join-btn-prev">이전 단계</a>
                <button type="button" class="join-btn-next" onclick="submitJoin()">
                    가입 완료
                </button>
            </div>
        </form>

    </div>
</div>

<script>
let idChecked = false;

// 아이디 중복 확인
function checkId() {
    const id = document.getElementById('userId').value.trim();
    const hint = document.getElementById('idHint');
    if (!id || id.length < 4) {
        hint.textContent = '아이디를 4자 이상 입력해주세요.';
        hint.className   = 'join-hint error';
        return;
    }
    // TODO: 실제 중복확인 API 호출
    hint.textContent = '✅ 사용 가능한 아이디입니다.';
    hint.className   = 'join-hint ok';
    idChecked = true;
}

// 이메일 인증요청
function checkEmail() {
    const email = document.getElementById('email').value.trim();
    const hint  = document.getElementById('emailHint');
    if (!email || !email.includes('@')) {
        hint.textContent = '올바른 이메일을 입력해주세요.';
        hint.className   = 'join-hint error';
        return;
    }
    // TODO: 실제 이메일 인증 API 호출
    hint.textContent = '✅ 인증 메일이 발송되었습니다. 메일을 확인해주세요.';
    hint.className   = 'join-hint ok';
}

// 비밀번호 일치 확인
function checkPwMatch() {
    const pw      = document.getElementById('userPw').value;
    const pwCheck = document.getElementById('userPwCheck').value;
    const hint    = document.getElementById('pwCheckHint');
    if (!pwCheck) { hint.textContent = ''; return; }
    if (pw === pwCheck) {
        hint.textContent = '✅ 비밀번호가 일치합니다.';
        hint.className   = 'join-hint ok';
    } else {
        hint.textContent = '❌ 비밀번호가 일치하지 않습니다.';
        hint.className   = 'join-hint error';
    }
}

// 주소 검색 (Daum 우편번호 서비스 연동용)
function searchAddress() {
    alert('주소검색 기능은 Daum 우편번호 API 연동 후 사용 가능합니다.');
}

// 가입 처리
function submitJoin() {
    const userId    = document.getElementById('userId').value.trim();
    const pw        = document.getElementById('userPw').value;
    const pwCheck   = document.getElementById('userPwCheck').value;

    if (!userId) { alert('아이디를 입력해주세요.'); return; }
    if (!pw)     { alert('비밀번호를 입력해주세요.'); return; }
    if (pw !== pwCheck) { alert('비밀번호가 일치하지 않습니다.'); return; }

    document.getElementById('joinForm').submit();
}
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
