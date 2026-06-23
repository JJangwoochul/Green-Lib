<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="mypageMenu" value="goal" scope="request"/>
<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="sub-banner">
    <div class="sub-banner-inner">
        <div class="sub-banner-left">
            <p class="sub-breadcrumb">홈 <span style="opacity:.4;">›</span> 마이페이지 <span style="opacity:.4;">›</span> 독서 목표</p>
            <h2 class="sub-title">독서 목표</h2>
        </div>
    </div>
</div>

<div class="sub-container">
    <div class="mypage-layout">
        <%@ include file="/WEB-INF/views/mypage/sidebar.jsp" %>

        <div class="mypage-content">

            <!-- 목표 설정 카드 -->
            <div class="goal-set-card">
                <div class="goal-set-left">
                    <p class="goal-set-label">2024년 독서 목표</p>
                    <div class="goal-set-row">
                        <input type="number" class="goal-input" id="goalInput" value="20" min="1" max="365">
                        <span class="goal-unit">권</span>
                        <button class="goal-save-btn" onclick="saveGoal()">목표 저장</button>
                    </div>
                </div>
                <div class="goal-set-right">
                    <div class="goal-circle-wrap">
                        <svg class="goal-circle-svg" viewBox="0 0 120 120">
                            <circle cx="60" cy="60" r="50" fill="none" stroke="#e8f2e4" stroke-width="10"/>
                            <circle cx="60" cy="60" r="50" fill="none" stroke="#2d5a27" stroke-width="10"
                                    stroke-dasharray="314" stroke-dashoffset="110"
                                    stroke-linecap="round" transform="rotate(-90 60 60)"/>
                        </svg>
                        <div class="goal-circle-text">
                            <span class="goal-pct">65%</span>
                            <span class="goal-pct-sub">달성</span>
                        </div>
                    </div>
                    <div class="goal-nums">
                        <div><span class="gn-val">13</span><span class="gn-label">읽은 책</span></div>
                        <div><span class="gn-val" style="color:var(--text-muted);">20</span><span class="gn-label">목표</span></div>
                        <div><span class="gn-val" style="color:#c07800;">7</span><span class="gn-label">남은 책</span></div>
                    </div>
                </div>
            </div>

            <!-- 격려 메시지 -->
            <div class="goal-cheer-box">
                🌿 벌써 이번달 목표량의 <strong>65%</strong>를 달성하셨습니다! 조금만 더 힘내세요!
            </div>

            <!-- 월별 독서량 차트 -->
            <div class="goal-section">
                <h3 class="goal-section-title">📊 월별 독서량</h3>
                <div class="bar-chart-wrap">
                    <div class="bar-chart">
                        <div class="bar-item">
                            <div class="bar-col"><div class="bar-fill" style="height:40%;">2</div></div>
                            <span class="bar-label">1월</span>
                        </div>
                        <div class="bar-item">
                            <div class="bar-col"><div class="bar-fill" style="height:20%;">1</div></div>
                            <span class="bar-label">2월</span>
                        </div>
                        <div class="bar-item">
                            <div class="bar-col"><div class="bar-fill" style="height:60%;">3</div></div>
                            <span class="bar-label">3월</span>
                        </div>
                        <div class="bar-item">
                            <div class="bar-col"><div class="bar-fill" style="height:40%;">2</div></div>
                            <span class="bar-label">4월</span>
                        </div>
                        <div class="bar-item">
                            <div class="bar-col"><div class="bar-fill now" style="height:60%;">3</div></div>
                            <span class="bar-label">5월</span>
                        </div>
                        <div class="bar-item">
                            <div class="bar-col"><div class="bar-fill empty" style="height:0%;"></div></div>
                            <span class="bar-label">6월</span>
                        </div>
                        <div class="bar-item">
                            <div class="bar-col"><div class="bar-fill empty" style="height:0%;"></div></div>
                            <span class="bar-label">7월</span>
                        </div>
                        <div class="bar-item">
                            <div class="bar-col"><div class="bar-fill empty" style="height:0%;"></div></div>
                            <span class="bar-label">8월</span>
                        </div>
                        <div class="bar-item">
                            <div class="bar-col"><div class="bar-fill empty" style="height:0%;"></div></div>
                            <span class="bar-label">9월</span>
                        </div>
                        <div class="bar-item">
                            <div class="bar-col"><div class="bar-fill empty" style="height:0%;"></div></div>
                            <span class="bar-label">10월</span>
                        </div>
                        <div class="bar-item">
                            <div class="bar-col"><div class="bar-fill empty" style="height:0%;"></div></div>
                            <span class="bar-label">11월</span>
                        </div>
                        <div class="bar-item">
                            <div class="bar-col"><div class="bar-fill empty" style="height:0%;"></div></div>
                            <span class="bar-label">12월</span>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 선호 장르 -->
            <div class="goal-section">
                <h3 class="goal-section-title">📚 선호 장르</h3>
                <div class="genre-list">
                    <div class="genre-item">
                        <span class="genre-name">문학</span>
                        <div class="genre-bar-wrap">
                            <div class="genre-bar" style="width:45%;"></div>
                        </div>
                        <span class="genre-cnt">6권</span>
                    </div>
                    <div class="genre-item">
                        <span class="genre-name">사회과학</span>
                        <div class="genre-bar-wrap">
                            <div class="genre-bar" style="width:23%;background:#6fa35a;"></div>
                        </div>
                        <span class="genre-cnt">3권</span>
                    </div>
                    <div class="genre-item">
                        <span class="genre-name">자연과학</span>
                        <div class="genre-bar-wrap">
                            <div class="genre-bar" style="width:15%;background:#85bb6e;"></div>
                        </div>
                        <span class="genre-cnt">2권</span>
                    </div>
                    <div class="genre-item">
                        <span class="genre-name">기술과학</span>
                        <div class="genre-bar-wrap">
                            <div class="genre-bar" style="width:15%;background:#a8d090;"></div>
                        </div>
                        <span class="genre-cnt">2권</span>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<style>
/* 목표 설정 카드 */
.goal-set-card{background:var(--bg-card);border:1px solid var(--border);border-radius:var(--radius-md);padding:28px;margin-bottom:16px;display:flex;justify-content:space-between;align-items:center;gap:32px;}
.goal-set-label{font-size:13px;color:var(--text-muted);font-weight:500;margin-bottom:12px;}
.goal-set-row{display:flex;align-items:center;gap:10px;}
.goal-input{width:80px;border:2px solid var(--green-mid);border-radius:var(--radius-sm);padding:10px 12px;font-size:22px;font-weight:700;color:var(--green-deep);text-align:center;outline:none;font-family:'Noto Sans KR',sans-serif;}
.goal-unit{font-size:16px;color:var(--text-mid);font-weight:600;}
.goal-save-btn{background:var(--green-deep);color:#fff;border:none;border-radius:var(--radius-sm);padding:10px 20px;font-size:13px;font-weight:600;font-family:'Noto Sans KR',sans-serif;cursor:pointer;transition:background .18s;}
.goal-save-btn:hover{background:var(--green-mid);}
.goal-set-right{display:flex;align-items:center;gap:24px;}
/* 원형 진행률 */
.goal-circle-wrap{position:relative;width:120px;height:120px;flex-shrink:0;}
.goal-circle-svg{width:100%;height:100%;}
.goal-circle-text{position:absolute;inset:0;display:flex;flex-direction:column;align-items:center;justify-content:center;}
.goal-pct{font-size:22px;font-weight:700;color:var(--green-deep);line-height:1;}
.goal-pct-sub{font-size:11px;color:var(--text-muted);margin-top:2px;}
.goal-nums{display:flex;gap:20px;}
.gn-val{display:block;font-size:22px;font-weight:700;color:var(--green-deep);text-align:center;}
.gn-label{display:block;font-size:11px;color:var(--text-muted);text-align:center;margin-top:2px;}
/* 격려 메시지 */
.goal-cheer-box{background:var(--green-pale);border-left:4px solid var(--green-deep);border-radius:var(--radius-sm);padding:14px 20px;font-size:13px;color:var(--text-mid);margin-bottom:28px;}
.goal-cheer-box strong{color:var(--green-deep);}
/* 섹션 */
.goal-section{background:var(--bg-card);border:1px solid var(--border);border-radius:var(--radius-md);padding:24px;margin-bottom:20px;}
.goal-section-title{font-size:14px;font-weight:700;color:var(--text-primary);margin-bottom:20px;}
/* 막대 차트 */
.bar-chart-wrap{overflow-x:auto;}
.bar-chart{display:flex;gap:8px;align-items:flex-end;height:160px;padding-bottom:28px;position:relative;border-bottom:2px solid var(--border);}
.bar-item{display:flex;flex-direction:column;align-items:center;flex:1;min-width:32px;}
.bar-col{width:100%;height:130px;display:flex;align-items:flex-end;justify-content:center;}
.bar-fill{width:80%;background:var(--green-mid);border-radius:4px 4px 0 0;display:flex;align-items:flex-start;justify-content:center;padding-top:4px;font-size:11px;font-weight:700;color:#fff;min-height:4px;transition:height .3s;}
.bar-fill.now{background:var(--green-deep);}
.bar-fill.empty{background:var(--border);}
.bar-label{font-size:10px;color:var(--text-muted);margin-top:6px;white-space:nowrap;}
/* 장르 */
.genre-list{display:flex;flex-direction:column;gap:14px;}
.genre-item{display:flex;align-items:center;gap:12px;}
.genre-name{width:70px;font-size:13px;color:var(--text-mid);flex-shrink:0;}
.genre-bar-wrap{flex:1;height:10px;background:var(--border);border-radius:50px;overflow:hidden;}
.genre-bar{height:100%;background:var(--green-deep);border-radius:50px;transition:width .5s;}
.genre-cnt{width:30px;font-size:12px;color:var(--text-muted);text-align:right;flex-shrink:0;}
</style>

<script>
function saveGoal() {
    const val = document.getElementById('goalInput').value;
    if (val < 1) { alert('목표 권수를 1권 이상 입력해주세요.'); return; }
    alert(val + '권을 목표로 설정했습니다! 화이팅! 🌿');
}
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
