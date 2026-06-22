<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="mypageMenu" value="interest" scope="request"/>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="sub-banner">
    <div class="sub-banner-inner">
        <p class="sub-breadcrumb">홈 &gt; 마이페이지 &gt; 관심도서</p>
        <h2 class="sub-title">관심도서</h2>
    </div>
</div>

<div class="sub-container">
    <div class="mypage-layout">
        <%@ include file="/WEB-INF/views/mypage/sidebar.jsp" %>

        <div class="mypage-content">
            <div class="interest-header">
                <p class="interest-count">총 <strong>7</strong>권의 관심도서</p>
            </div>

            <div class="interest-grid">
                <!-- 도서 1 -->
                <div class="interest-card">
                    <div class="interest-cover">
                        <img src="https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c?w=200&q=80" alt="표지">
                        <button class="interest-del-btn" title="관심도서 해제" onclick="removeInterest(this)">✕</button>
                    </div>
                    <div class="interest-info">
                        <a href="${contextPath}/book/detail.do?bookId=1" class="interest-title">파친코</a>
                        <p class="interest-author">이민진</p>
                        <span class="interest-status available">대출가능</span>
                    </div>
                </div>
                <!-- 도서 2 -->
                <div class="interest-card">
                    <div class="interest-cover">
                        <img src="https://images.unsplash.com/photo-1543002588-bfa74002ed7e?w=200&q=80" alt="표지">
                        <button class="interest-del-btn" title="관심도서 해제" onclick="removeInterest(this)">✕</button>
                    </div>
                    <div class="interest-info">
                        <a href="${contextPath}/book/detail.do?bookId=2" class="interest-title">채식주의자</a>
                        <p class="interest-author">한강</p>
                        <span class="interest-status unavailable">대출중</span>
                    </div>
                </div>
                <!-- 도서 3 -->
                <div class="interest-card">
                    <div class="interest-cover">
                        <img src="https://images.unsplash.com/photo-1512820790803-83ca734da794?w=200&q=80" alt="표지">
                        <button class="interest-del-btn" title="관심도서 해제" onclick="removeInterest(this)">✕</button>
                    </div>
                    <div class="interest-info">
                        <a href="${contextPath}/book/detail.do?bookId=3" class="interest-title">82년생 김지영</a>
                        <p class="interest-author">조남주</p>
                        <span class="interest-status available">대출가능</span>
                    </div>
                </div>
                <!-- 도서 4 -->
                <div class="interest-card">
                    <div class="interest-cover">
                        <img src="https://images.unsplash.com/photo-1535398089889-dd807df1dfaa?w=200&q=80" alt="표지">
                        <button class="interest-del-btn" title="관심도서 해제" onclick="removeInterest(this)">✕</button>
                    </div>
                    <div class="interest-info">
                        <a href="${contextPath}/book/detail.do?bookId=4" class="interest-title">아몬드</a>
                        <p class="interest-author">손원평</p>
                        <span class="interest-status available">대출가능</span>
                    </div>
                </div>
                <!-- 도서 5 -->
                <div class="interest-card">
                    <div class="interest-cover">
                        <img src="https://images.unsplash.com/photo-1541963463532-d68292c34b19?w=200&q=80" alt="표지">
                        <button class="interest-del-btn" title="관심도서 해제" onclick="removeInterest(this)">✕</button>
                    </div>
                    <div class="interest-info">
                        <a href="${contextPath}/book/detail.do?bookId=5" class="interest-title">불편한 편의점</a>
                        <p class="interest-author">김호연</p>
                        <span class="interest-status unavailable">대출중</span>
                    </div>
                </div>
                <!-- 도서 6 -->
                <div class="interest-card">
                    <div class="interest-cover">
                        <img src="https://images.unsplash.com/photo-1524995997946-a1c2e315a42f?w=200&q=80" alt="표지">
                        <button class="interest-del-btn" title="관심도서 해제" onclick="removeInterest(this)">✕</button>
                    </div>
                    <div class="interest-info">
                        <a href="${contextPath}/book/detail.do?bookId=6" class="interest-title">달러구트 꿈 백화점</a>
                        <p class="interest-author">이미예</p>
                        <span class="interest-status available">대출가능</span>
                    </div>
                </div>
                <!-- 도서 7 -->
                <div class="interest-card">
                    <div class="interest-cover">
                        <img src="https://images.unsplash.com/photo-1589829085413-56de8ae18c73?w=200&q=80" alt="표지">
                        <button class="interest-del-btn" title="관심도서 해제" onclick="removeInterest(this)">✕</button>
                    </div>
                    <div class="interest-info">
                        <a href="${contextPath}/book/detail.do?bookId=7" class="interest-title">인공지능과 미래 사회</a>
                        <p class="interest-author">정해원</p>
                        <span class="interest-status available">대출가능</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
.interest-header{display:flex;justify-content:space-between;align-items:center;margin-bottom:20px;}
.interest-count{font-size:14px;color:var(--text-muted);}
.interest-count strong{color:var(--green-deep);font-weight:700;}
.interest-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:20px;}
.interest-card{background:var(--bg-card);border:1px solid var(--border);border-radius:var(--radius-md);overflow:hidden;transition:box-shadow .18s;}
.interest-card:hover{box-shadow:var(--shadow-md);}
.interest-cover{position:relative;aspect-ratio:3/4;overflow:hidden;}
.interest-cover img{width:100%;height:100%;object-fit:cover;transition:transform .3s;}
.interest-card:hover .interest-cover img{transform:scale(1.04);}
.interest-del-btn{position:absolute;top:8px;right:8px;background:rgba(0,0,0,.5);color:#fff;border:none;border-radius:50%;width:26px;height:26px;font-size:12px;cursor:pointer;display:flex;align-items:center;justify-content:center;opacity:0;transition:opacity .18s;}
.interest-card:hover .interest-del-btn{opacity:1;}
.interest-info{padding:14px;}
.interest-title{font-size:14px;font-weight:700;color:var(--text-primary);text-decoration:none;display:block;margin-bottom:4px;}
.interest-title:hover{color:var(--green-deep);}
.interest-author{font-size:12px;color:var(--text-muted);margin-bottom:8px;}
.interest-status{font-size:11px;font-weight:600;padding:2px 10px;border-radius:50px;}
.interest-status.available{background:#e8f5e1;color:#2d5a27;}
.interest-status.unavailable{background:#fce8e8;color:#a33;}
</style>

<script>
function removeInterest(btn) {
    if (confirm('관심도서에서 해제하시겠습니까?')) {
        btn.closest('.interest-card').style.opacity = '0';
        btn.closest('.interest-card').style.transition = 'opacity .3s';
        setTimeout(() => btn.closest('.interest-card').remove(), 300);
    }
}
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
