<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%-- 수정 모드 판별: book 객체가 있으면 수정, 없으면 등록 --%>
<c:set var="isEdit" value="${not empty book}" />
<c:set var="currentMenu" value="${isEdit ? 'bookEdit' : 'bookWrite'}" scope="request"/>

<%@ include file="/WEB-INF/views/admin/common/header.jsp" %>

<div class="admin-page-header">
    <div>
        <h1 class="admin-page-title">${isEdit ? '도서 수정' : '도서 등록'}</h1>
        <p class="admin-breadcrumb">
            <a href="${contextPath}/admin/main/main.do">대시보드</a> &gt;
            <a href="${contextPath}/admin/book/list.do">도서 관리</a> &gt;
            ${isEdit ? '도서 수정' : '도서 등록'}
        </p>
    </div>
</div>

<%-- 등록 모드일 때만 ISBN 자동입력 박스 표시 --%>
<c:if test="${!isEdit}">
<div class="isbn-guide-box">
    <strong>📚 ISBN으로 도서 정보 자동 입력</strong>
    <p>ISBN을 입력하고 [도서정보 가져오기] 버튼을 클릭하면 제목, 저자, 출판사 등이 자동으로 입력됩니다.</p>
    <div class="isbn-input-row">
        <input type="text" id="isbnInput" placeholder="ISBN 13자리 입력 (예: 9788936434267)" maxlength="13" value="9788936434267">
        <button type="button" id="isbnSearchBtn" onclick="fetchBookInfo()">
            도서정보 가져오기
        </button>
        <span id="isbnStatus"></span>
    </div>
</div>
</c:if>

<%-- 도서 등록/수정 폼 --%>
<div class="admin-card">
    <%-- 수정이면 editProc.do, 등록이면 writeProc.do --%>
    <form action="${contextPath}/admin/book/${isEdit ? 'editProc' : 'writeProc'}.do"
          method="post" id="bookForm" enctype="multipart/form-data">

        <%-- 수정 모드일 때 bookId를 hidden으로 전송 --%>
        <c:if test="${isEdit}">
            <input type="hidden" name="bookId" value="${book.bookId}">
        </c:if>

        <%-- 이미지 업로드 영역 --%>
        <div class="book-img-upload-wrap">
            <div class="book-cover-upload" id="coverUploadBox"
                 onclick="document.getElementById('coverImg').click()">
                <img id="coverPreview" alt="표지 미리보기"
                     src="${not empty book.imgPath ? contextPath.concat('/resources/upload/').concat(book.imgPath) : ''}"
                     style="display:${not empty book.imgPath ? 'block' : 'none'};width:100%;height:100%;object-fit:cover;border-radius:var(--radius-sm);">
                <div id="coverPlaceholder"
                     style="display:${not empty book.imgPath ? 'none' : 'flex'};flex-direction:column;align-items:center;gap:10px;color:var(--text-muted);">
                    <svg width="36" height="36" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.2">
                        <rect x="3" y="3" width="18" height="18" rx="2"/>
                        <circle cx="8.5" cy="8.5" r="1.5"/>
                        <polyline points="21 15 16 10 5 21"/>
                    </svg>
                    <span style="font-size:13px;font-weight:600;">표지 이미지 업로드</span>
                    <span style="font-size:11px;">클릭하여 파일 선택</span>
                </div>
            </div>
            <input type="file" id="coverImg" name="coverImg"
                   accept="image/jpeg,image/png,image/gif,image/webp"
                   style="display:none;" onchange="previewCover(this)">
            <div class="book-img-upload-guide">
                <p>• JPG, PNG, GIF, WEBP 형식</p>
                <p>• 최대 파일 크기 : 5MB</p>
                <p>• 권장 비율 : 3:4 (세로형)</p>
                <c:if test="${not empty book.imgPath}">
                    <label style="display:flex;align-items:center;gap:6px;margin-top:8px;cursor:pointer;font-size:12px;color:#c0392b;">
                        <input type="checkbox" name="imgDelete" value="Y" style="accent-color:#c0392b;">
                        기존 이미지 삭제
                    </label>
                </c:if>
            </div>
        </div>

        <div class="admin-form-grid">

            <%-- 제목 --%>
            <div class="admin-form-group full">
                <label class="admin-form-label">도서명 <span class="required">*</span></label>
                <input type="text" name="title" id="title"
                       class="admin-form-input" placeholder="도서명을 입력하세요"
                       value="${book.title}" required>
            </div>

            <%-- 저자 / 출판사 --%>
            <div class="admin-form-group">
                <label class="admin-form-label">저자 <span class="required">*</span></label>
                <input type="text" name="author" id="author"
                       class="admin-form-input" placeholder="저자명 입력"
                       value="${book.author}" required>
            </div>
            <div class="admin-form-group">
                <label class="admin-form-label">출판사</label>
                <input type="text" name="publisher" id="publisher"
                       class="admin-form-input" placeholder="출판사 입력"
                       value="${book.publisher}">
            </div>

            <%-- 발행연도 / ISBN --%>
            <div class="admin-form-group">
                <label class="admin-form-label">발행연도</label>
                <input type="text" name="pubYear" id="pubYear"
                       class="admin-form-input" placeholder="예: 2024" maxlength="4"
                       value="${book.pubYear}">
            </div>
            <div class="admin-form-group">
                <label class="admin-form-label">ISBN</label>
                <input type="text" name="isbn" id="isbn"
                       class="admin-form-input" placeholder="ISBN 입력" maxlength="13"
                       value="${book.isbn}">
            </div>

            <%-- 청구기호 / 주제분류 --%>
            <div class="admin-form-group">
                <label class="admin-form-label">청구기호</label>
                <input type="text" name="callNo" id="callNo"
                       class="admin-form-input" placeholder="예: 811.37-김38ㅅ"
                       value="${book.callNo}">
            </div>
            <div class="admin-form-group">
                <label class="admin-form-label">주제분류</label>
                <select name="category" id="category" class="admin-form-select">
                    <option value="">-- 선택 --</option>
                    <option value="문학"     ${book.category == '문학'     ? 'selected' : ''}>문학</option>
                    <option value="사회과학" ${book.category == '사회과학' ? 'selected' : ''}>사회과학</option>
                    <option value="자연과학" ${book.category == '자연과학' ? 'selected' : ''}>자연과학</option>
                    <option value="기술과학" ${book.category == '기술과학' ? 'selected' : ''}>기술과학</option>
                    <option value="역사/지리" ${book.category == '역사/지리' ? 'selected' : ''}>역사/지리</option>
                    <option value="예술"     ${book.category == '예술'     ? 'selected' : ''}>예술</option>
                    <option value="철학"     ${book.category == '철학'     ? 'selected' : ''}>철학</option>
                    <option value="언어"     ${book.category == '언어'     ? 'selected' : ''}>언어</option>
                    <option value="종교"     ${book.category == '종교'     ? 'selected' : ''}>종교</option>
                    <option value="총류"     ${book.category == '총류'     ? 'selected' : ''}>총류</option>
                </select>
            </div>

            <%-- 소장위치 / 소장 수 --%>
            <div class="admin-form-group">
                <label class="admin-form-label">소장위치</label>
                <select name="location" class="admin-form-select">
                    <option value="1층 일반자료실" ${book.location == '1층 일반자료실' ? 'selected' : ''}>1층 일반자료실</option>
                    <option value="2층 인문자료실" ${book.location == '2층 인문자료실' ? 'selected' : ''}>2층 인문자료실</option>
                    <option value="2층 과학자료실" ${book.location == '2층 과학자료실' ? 'selected' : ''}>2층 과학자료실</option>
                    <option value="3층 어린이자료실" ${book.location == '3층 어린이자료실' ? 'selected' : ''}>3층 어린이자료실</option>
                </select>
            </div>
            <div class="admin-form-group">
                <label class="admin-form-label">소장 수 <span class="required">*</span></label>
                <input type="number" name="totalCnt" class="admin-form-input"
                       value="${isEdit ? book.totalCnt : 1}" min="1" max="99" required>
            </div>

        </div>

        <div class="admin-form-actions">
            <a href="${contextPath}/admin/book/list.do" class="btn-outline">취소</a>
            <button type="submit" class="btn-green">${isEdit ? '수정하기' : '등록하기'}</button>
        </div>

    </form>
</div>
<style>
    /* 이미지 업로드 */
    .book-img-upload-wrap {
        display: flex;
        gap: 20px;
        align-items: flex-start;
        background: var(--bg-card);
        border: 1px solid var(--border);
        border-radius: var(--radius-md);
        padding: 20px;
        margin-bottom: 24px;
    }
    .book-cover-upload {
        width: 140px;
        height: 188px;
        flex-shrink: 0;
        border: 2px dashed var(--border);
        border-radius: var(--radius-sm);
        cursor: pointer;
        display: flex;
        align-items: center;
        justify-content: center;
        overflow: hidden;
        transition: border-color .18s, background .18s;
        position: relative;
    }
    .book-cover-upload:hover {
        border-color: var(--green-mid);
        background: var(--green-pale);
    }
    .book-img-upload-guide {
        display: flex;
        flex-direction: column;
        gap: 5px;
        padding-top: 4px;
    }
    .book-img-upload-guide p {
        font-size: 12px;
        color: var(--text-muted);
        line-height: 1.6;
    }
    .isbn-guide-box {
        background: var(--green-pale);
        border: 1px solid var(--border);
        border-left: 4px solid var(--green-deep);
        border-radius: var(--radius-md);
        padding: 20px 24px;
        margin-bottom: 24px;
    }
    .isbn-guide-box strong {
        display: block;
        font-size: 14px;
        color: var(--green-deep);
        margin-bottom: 6px;
    }
    .isbn-guide-box p {
        font-size: 13px;
        color: var(--text-mid);
        margin-bottom: 14px;
    }
    .isbn-input-row {
        display: flex;
        gap: 10px;
        align-items: center;
    }
    .isbn-input-row input {
        border: 1px solid var(--border);
        border-radius: var(--radius-sm);
        padding: 10px 14px;
        font-size: 14px;
        font-family: 'Noto Sans KR', sans-serif;
        outline: none;
        width: 280px;
        transition: border .15s;
    }
    .isbn-input-row input:focus { border-color: var(--green-mid); }
    .isbn-input-row button {
        background: var(--green-deep);
        color: #fff;
        border: none;
        border-radius: var(--radius-sm);
        padding: 10px 20px;
        font-size: 13px;
        font-weight: 600;
        font-family: 'Noto Sans KR', sans-serif;
        cursor: pointer;
        transition: background .15s;
        white-space: nowrap;
    }
    .isbn-input-row button:hover { background: var(--green-mid); }
    .isbn-input-row button:disabled { background: var(--border); cursor: not-allowed; }
    #isbnStatus { font-size: 13px; font-weight: 600; }
    #isbnStatus.success { color: var(--green-deep); }
    #isbnStatus.error   { color: #c0392b; }
    #isbnStatus.loading { color: var(--text-muted); }
</style>

<script>
    // 이미지 미리보기
    function previewCover(input) {
        const file    = input.files[0];
        const preview = document.getElementById('coverPreview');
        const holder  = document.getElementById('coverPlaceholder');

        if (!file) return;

        // 파일 크기 체크 (5MB)
        if (file.size > 5 * 1024 * 1024) {
            alert('파일 크기가 5MB를 초과합니다.');
            input.value = '';
            return;
        }

        const reader = new FileReader();
        reader.onload = function(e) {
            preview.src = e.target.result;
            preview.style.display = 'block';
            holder.style.display  = 'none';
        };
        reader.readAsDataURL(file);
    }

    async function fetchBookInfo() {
        const isbn   = document.getElementById('isbnInput').value.trim();
        const status = document.getElementById('isbnStatus');
        const btn    = document.getElementById('isbnSearchBtn');

        if (!isbn) {
            status.textContent = "ISBN을 입력해주세요.";
            status.className   = "error";
            return;
        }
        if (isbn.length !== 13 || isNaN(isbn)) {
            status.textContent = "ISBN은 숫자 13자리로 입력해주세요.";
            status.className   = "error";
            return;
        }

        btn.disabled       = true;
        status.textContent = "조회 중...";
        status.className   = "loading";

        try {
            const response = await fetch('/admin/book/isbn.do?isbn=' + isbn);
            const data     = await response.json();

            if (!data.success) {
                status.textContent = data.message || "도서 정보를 찾을 수 없습니다.";
                status.className   = "error";
                return;
            }

            setValue('title',     data.title);
            setValue('author',    data.author);
            setValue('publisher', data.publisher);
            setValue('pubYear',   data.pubYear);
            setValue('isbn',      data.isbn || isbn);

            status.textContent = "✅ 도서 정보를 불러왔습니다. 내용을 확인 후 저장하세요.";
            status.className   = "success";

        } catch (e) {
            status.textContent = "오류가 발생했습니다. 잠시 후 다시 시도해주세요.";
            status.className   = "error";
            console.error(e);
        } finally {
            btn.disabled = false;
        }
    }

    function setValue(id, value) {
        const el = document.getElementById(id);
        if (el) el.value = value || '';
    }

    const isbnInput = document.getElementById('isbnInput');
    if (isbnInput) {
        isbnInput.addEventListener('keydown', function(e) {
            if (e.key === 'Enter') {
                e.preventDefault();
                fetchBookInfo();
            }
        });
    }
</script>

<%@ include file="/WEB-INF/views/admin/common/footer.jsp" %>
