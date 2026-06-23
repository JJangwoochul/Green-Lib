<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="mypageMenu" value="edit" scope="request"/>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="sub-banner">
    <div class="sub-banner-inner">
        <div class="sub-banner-left">
            <p class="sub-breadcrumb">홈 <span style="opacity:.4;">›</span> 마이페이지 <span style="opacity:.4;">›</span> 개인정보 수정</p>
            <h2 class="sub-title">개인정보 수정</h2>
        </div>
    </div>
</div>

<div class="sub-container">
    <div class="mypage-layout">
        <%@ include file="/WEB-INF/views/mypage/sidebar.jsp" %>
        <div class="mypage-content">

            <!-- 기본 정보 수정 -->
            <div class="edit-card">
                <h3 class="edit-card-title">기본 정보 수정</h3>
                <form action="${contextPath}/mypage/editProc.do" method="post">
                    <div class="edit-form-group">
                        <label class="edit-label">아이디</label>
                        <input type="text" class="edit-input" value="${sessionScope.userId}" disabled
                               style="background:#f5f5f5;color:var(--text-muted);">
                        <span class="edit-hint">아이디는 변경할 수 없습니다.</span>
                    </div>
                    <div class="edit-row">
                        <div class="edit-form-group">
                            <label class="edit-label">이메일 <span class="required">*</span></label>
                            <input type="email" name="email" class="edit-input"
                                   value="${member.email}" required>
                        </div>
                        <div class="edit-form-group">
                            <label class="edit-label">연락처</label>
                            <input type="text" name="phone" class="edit-input"
                                   value="${member.phone}" placeholder="010-0000-0000">
                        </div>
                    </div>
                    <div class="edit-form-group">
                        <label class="edit-label">주소</label>
                        <input type="text" name="address" class="edit-input"
                               value="${member.address}" placeholder="주소를 입력하세요">
                    </div>
                    <div class="edit-actions">
                        <button type="submit" class="btn-edit-submit">저장하기</button>
                    </div>
                </form>
            </div>

            <!-- 비밀번호 변경 -->
            <div class="edit-card">
                <h3 class="edit-card-title">비밀번호 변경</h3>
                <form action="${contextPath}/mypage/pwProc.do" method="post">
                    <div class="edit-form-group">
                        <label class="edit-label">현재 비밀번호 <span class="required">*</span></label>
                        <input type="password" name="currentPw" class="edit-input"
                               placeholder="현재 비밀번호 입력" required>
                    </div>
                    <div class="edit-row">
                        <div class="edit-form-group">
                            <label class="edit-label">새 비밀번호 <span class="required">*</span></label>
                            <input type="password" name="newPw" id="newPw" class="edit-input"
                                   placeholder="새 비밀번호 입력" required>
                        </div>
                        <div class="edit-form-group">
                            <label class="edit-label">새 비밀번호 확인 <span class="required">*</span></label>
                            <input type="password" name="newPwCheck" id="newPwCheck" class="edit-input"
                                   placeholder="새 비밀번호 재입력" required>
                        </div>
                    </div>
                    <p id="pwMsg" style="font-size:12px;margin-top:-10px;margin-bottom:14px;"></p>
                    <div class="edit-actions">
                        <button type="submit" class="btn-edit-submit">비밀번호 변경</button>
                    </div>
                </form>
            </div>

            <!-- 회원 탈퇴 -->
            <div class="edit-card" style="border-color:#fce8e8;">
                <h3 class="edit-card-title" style="color:#c0392b;">회원 탈퇴</h3>
                <div style="background:#fce8e8;border-left:4px solid #c0392b;border-radius:var(--radius-sm);padding:16px 20px;margin-bottom:16px;">
                    <ul style="padding-left:18px;">
                        <li style="font-size:13px;color:var(--text-mid);margin-bottom:5px;">대출 중이거나 연체 중인 도서가 있으면 탈퇴할 수 없습니다.</li>
                        <li style="font-size:13px;color:var(--text-mid);margin-bottom:5px;">탈퇴 후 7일 동안 재가입이 불가능합니다.</li>
                        <li style="font-size:13px;color:var(--text-mid);">탈퇴 시 모든 이용 내역이 삭제됩니다.</li>
                    </ul>
                </div>
                <div class="edit-actions">
                    <a href="${contextPath}/mypage/withdraw.do"
                       style="background:#c0392b;color:#fff;border:none;border-radius:var(--radius-sm);padding:11px 24px;font-size:13px;font-weight:600;text-decoration:none;transition:opacity .18s;"
                       onclick="return confirm('정말 탈퇴하시겠습니까?\n탈퇴 후 7일간 재가입이 불가능합니다.')">
                        회원 탈퇴
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
.edit-card{background:var(--bg-card);border:1px solid var(--border);border-radius:var(--radius-md);padding:28px;margin-bottom:20px;}
.edit-card-title{font-size:15px;font-weight:700;color:var(--text-primary);padding-bottom:16px;border-bottom:1px solid var(--border);margin-bottom:20px;}
.edit-form-group{display:flex;flex-direction:column;gap:6px;margin-bottom:18px;}
.edit-row{display:grid;grid-template-columns:1fr 1fr;gap:16px;}
.edit-label{font-size:13px;font-weight:600;color:var(--text-mid);}
.edit-hint{font-size:11px;color:var(--text-muted);}
.required{color:#c0392b;}
.edit-input{border:1px solid var(--border);border-radius:var(--radius-sm);padding:11px 14px;font-size:14px;font-family:'Noto Sans KR',sans-serif;outline:none;transition:border .18s;}
.edit-input:focus{border-color:var(--green-mid);}
.edit-actions{display:flex;justify-content:flex-end;margin-top:8px;}
.btn-edit-submit{background:var(--green-deep);color:#fff;border:none;border-radius:var(--radius-sm);padding:11px 28px;font-size:13px;font-weight:600;font-family:'Noto Sans KR',sans-serif;cursor:pointer;transition:background .18s;}
.btn-edit-submit:hover{background:var(--green-mid);}
</style>

<script>
document.getElementById('newPwCheck').addEventListener('input', function() {
    const pw  = document.getElementById('newPw').value;
    const msg = document.getElementById('pwMsg');
    if (this.value === pw) {
        msg.textContent = '✅ 비밀번호가 일치합니다.';
        msg.style.color = '#2d5a27';
    } else {
        msg.textContent = '❌ 비밀번호가 일치하지 않습니다.';
        msg.style.color = '#c0392b';
    }
});
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
