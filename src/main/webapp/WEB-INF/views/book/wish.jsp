<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="sub-banner">
    <div class="sub-banner-inner">
        <div class="sub-banner-left">
            <p class="sub-breadcrumb">홈 <span style="opacity:.4;">›</span> 도서검색 <span style="opacity:.4;">›</span> 희망도서신청</p>
            <h2 class="sub-title">희망도서신청</h2>
        </div>
    </div>
</div>

<div class="sub-container">
    <div class="info-box">
        <strong>📌 희망도서 신청 안내</strong>
        <ul>
            <li>회원 1인당 월 3권까지 신청 가능합니다.</li>
            <li>신청 후 담당자 검토를 거쳐 구입 여부가 결정됩니다.</li>
            <li>구입 결정 시 SMS 또는 이메일로 안내해 드립니다.</li>
            <li>이미 소장 중인 도서는 신청이 제한될 수 있습니다.</li>
        </ul>
    </div>

    <div class="form-card">
        <h3 class="form-section-title">신청 정보 입력</h3>
        <form>
            <div class="form-group">
                <label class="form-label">도서명 <span class="required">*</span></label>
                <input type="text" class="form-input" placeholder="신청할 도서명을 입력하세요">
            </div>
            <div class="form-row">
                <div class="form-group">
                    <label class="form-label">저자명</label>
                    <input type="text" class="form-input" placeholder="저자명 입력">
                </div>
                <div class="form-group">
                    <label class="form-label">출판사</label>
                    <input type="text" class="form-input" placeholder="출판사 입력">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group">
                    <label class="form-label">ISBN</label>
                    <input type="text" class="form-input" placeholder="ISBN 입력 (선택)">
                </div>
                <div class="form-group">
                    <label class="form-label">발행연도</label>
                    <input type="text" class="form-input" placeholder="예: 2024">
                </div>
            </div>
            <div class="form-group">
                <label class="form-label">신청 사유</label>
                <textarea class="form-textarea" placeholder="이 도서가 필요한 이유를 간략히 적어주세요 (선택)"></textarea>
            </div>
            <div class="form-actions">
                <a href="${contextPath}/book/search.do" class="btn-outline-full">취소</a>
                <button type="submit" class="btn-green-full">신청하기</button>
            </div>
        </form>
    </div>
</div>

<style>
.info-box{background:var(--green-pale);border-left:4px solid var(--green-deep);border-radius:var(--radius-sm);padding:20px 24px;margin-bottom:36px;}
.info-box strong{display:block;font-size:14px;color:var(--green-deep);margin-bottom:10px;}
.info-box ul{padding-left:18px;}
.info-box li{font-size:13px;color:var(--text-mid);margin-bottom:5px;line-height:1.6;}
.form-card{background:var(--bg-card);border:1px solid var(--border);border-radius:var(--radius-md);padding:40px 44px;}
.form-section-title{font-size:16px;font-weight:700;color:var(--text-primary);margin-bottom:24px;padding-bottom:12px;border-bottom:2px solid var(--green-deep);}
.form-group{display:flex;flex-direction:column;gap:7px;margin-bottom:22px;}
.form-row{display:grid;grid-template-columns:1fr 1fr;gap:16px;}
.form-label{font-size:13px;font-weight:600;color:var(--text-mid);}
.required{color:#c0392b;}
.form-input{border:1px solid var(--border);border-radius:var(--radius-sm);padding:12px 16px;font-size:14px;font-family:'Noto Sans KR',sans-serif;outline:none;transition:border .18s;}
.form-input:focus{border-color:var(--green-mid);}
.form-textarea{border:1px solid var(--border);border-radius:var(--radius-sm);padding:12px 16px;font-size:14px;font-family:'Noto Sans KR',sans-serif;outline:none;resize:vertical;min-height:100px;transition:border .18s;}
.form-textarea:focus{border-color:var(--green-mid);}
.form-actions{display:flex;gap:12px;justify-content:flex-end;margin-top:8px;}
.btn-green-full{background:var(--green-deep);color:#fff;border:none;border-radius:var(--radius-sm);padding:12px 32px;font-size:14px;font-weight:600;font-family:'Noto Sans KR',sans-serif;cursor:pointer;text-align:center;text-decoration:none;display:inline-block;transition:background .18s;}
.btn-green-full:hover{background:var(--green-mid);}
.btn-outline-full{border:1px solid var(--border);color:var(--text-mid);border-radius:var(--radius-sm);padding:12px 32px;font-size:14px;font-weight:600;text-align:center;text-decoration:none;display:inline-block;transition:all .18s;}
.btn-outline-full:hover{border-color:var(--green-mid);color:var(--green-deep);}
</style>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
