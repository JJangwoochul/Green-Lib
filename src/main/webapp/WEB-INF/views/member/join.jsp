<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="sub-banner">
    <div class="sub-banner-inner">
        <div class="sub-banner-left">
            <p class="sub-breadcrumb">홈 <span style="opacity:.4;">›</span> 회원가입</p>
            <h2 class="sub-title">✍️ 회원가입</h2>
        </div>
    </div>
</div>

<div class="sub-container">
    <div class="join-wrap">
        <!-- 단계 표시 -->
        <div class="join-steps">
            <div class="step active"><span class="step-num">1</span><span class="step-txt">약관동의</span></div>
            <div class="step-line"></div>
            <div class="step"><span class="step-num">2</span><span class="step-txt">정보입력</span></div>
            <div class="step-line"></div>
            <div class="step"><span class="step-num">3</span><span class="step-txt">가입완료</span></div>
        </div>

        <div class="form-card">
            <h3 class="form-section-title">이용약관 동의</h3>

            <div class="agree-all">
                <label class="agree-check-big">
                    <input type="checkbox" id="agreeAll"> <strong>전체 동의합니다</strong>
                </label>
            </div>

            <div class="agree-item">
                <div class="agree-header">
                    <label class="filter-check"><input type="checkbox" class="agree-cb"> <strong>[필수]</strong> 이용약관 동의</label>
                    <button class="agree-toggle">펼치기 ▼</button>
                </div>
                <div class="agree-content">도서관 이용약관 내용입니다. 회원은 도서관의 자료를 성실하게 이용하고 대출 기한을 준수하여야 합니다...</div>
            </div>
            <div class="agree-item">
                <div class="agree-header">
                    <label class="filter-check"><input type="checkbox" class="agree-cb"> <strong>[필수]</strong> 개인정보 수집·이용 동의</label>
                    <button class="agree-toggle">펼치기 ▼</button>
                </div>
                <div class="agree-content">개인정보 수집 목적: 회원관리, 도서 대출/반납 서비스 제공. 수집 항목: 이름, 이메일, 연락처, 주소...</div>
            </div>
            <div class="agree-item">
                <div class="agree-header">
                    <label class="filter-check"><input type="checkbox" class="agree-cb"> <strong>[선택]</strong> 마케팅 정보 수신 동의</label>
                    <button class="agree-toggle">펼치기 ▼</button>
                </div>
                <div class="agree-content">신규 도서, 행사 및 이벤트 안내를 이메일/SMS로 수신하는 것에 동의합니다...</div>
            </div>

            <div class="form-actions" style="margin-top:24px;">
                <a href="${contextPath}/member/login.do" class="btn-outline-full">취소</a>
                <button type="button" class="btn-green-full" onclick="location.href='${contextPath}/member/joinForm.do'">다음 단계 →</button>
            </div>
        </div>
    </div>
</div>

<style>
.join-wrap{max-width:680px;margin:0 auto;}
.join-steps{display:flex;align-items:center;justify-content:center;margin-bottom:32px;}
.step{display:flex;flex-direction:column;align-items:center;gap:6px;}
.step-num{width:32px;height:32px;border-radius:50%;background:var(--border);color:var(--text-muted);font-size:13px;font-weight:700;display:flex;align-items:center;justify-content:center;}
.step.active .step-num{background:var(--green-deep);color:#fff;}
.step-txt{font-size:12px;color:var(--text-muted);}
.step.active .step-txt{color:var(--green-deep);font-weight:600;}
.step-line{flex:1;height:2px;background:var(--border);margin:0 8px;max-width:80px;margin-bottom:18px;}
.form-card{background:var(--bg-card);border:1px solid var(--border);border-radius:var(--radius-md);padding:40px 44px;}
.form-section-title{font-size:16px;font-weight:700;color:var(--text-primary);margin-bottom:24px;padding-bottom:14px;border-bottom:2px solid var(--green-deep);}
.agree-all{background:var(--green-pale);border-radius:var(--radius-sm);padding:16px 20px;margin-bottom:16px;}
.agree-check-big{display:flex;align-items:center;gap:8px;cursor:pointer;font-size:14px;color:var(--text-primary);}
.agree-check-big input{accent-color:var(--green-deep);width:16px;height:16px;}
.agree-item{border:1px solid var(--border);border-radius:var(--radius-sm);margin-bottom:10px;overflow:hidden;}
.agree-header{display:flex;justify-content:space-between;align-items:center;padding:14px 18px;background:#fff;}
.filter-check{display:flex;align-items:center;gap:8px;font-size:13px;color:var(--text-mid);cursor:pointer;}
.filter-check input{accent-color:var(--green-deep);}
.agree-toggle{background:none;border:none;font-size:11px;color:var(--text-muted);cursor:pointer;font-family:'Noto Sans KR',sans-serif;}
.agree-content{padding:14px 18px;font-size:12px;color:var(--text-muted);line-height:1.8;background:var(--bg-card);border-top:1px solid var(--border);}
.form-actions{display:flex;gap:12px;justify-content:flex-end;}
.btn-green-full{background:var(--green-deep);color:#fff;border:none;border-radius:var(--radius-sm);padding:12px 32px;font-size:14px;font-weight:600;font-family:'Noto Sans KR',sans-serif;cursor:pointer;transition:background .18s;}
.btn-green-full:hover{background:var(--green-mid);}
.btn-outline-full{border:1px solid var(--border);color:var(--text-mid);border-radius:var(--radius-sm);padding:12px 32px;font-size:14px;font-weight:600;text-align:center;text-decoration:none;display:inline-block;transition:all .18s;}
.btn-outline-full:hover{border-color:var(--green-mid);color:var(--green-deep);}
</style>
<script>
document.getElementById('agreeAll').addEventListener('change',function(){
    document.querySelectorAll('.agree-cb').forEach(cb=>cb.checked=this.checked);
});
document.querySelectorAll('.agree-toggle').forEach(btn=>{
    btn.addEventListener('click',()=>{
        const content=btn.closest('.agree-item').querySelector('.agree-content');
        const isHidden=content.style.display==='none'||!content.style.display;
        content.style.display=isHidden?'none':'block';
        btn.textContent=isHidden?'접기 ▲':'펼치기 ▼';
    });
});
// 초기 숨김
document.querySelectorAll('.agree-content').forEach(c=>c.style.display='none');
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
