<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
</div><!-- /.admin-content-wrap -->

<footer class="admin-footer">
    <p>© 2024 푸른숲 도서관 관리자 시스템</p>
</footer>

<script>
    // 사이드바 토글
    document.getElementById('sidebarToggle').addEventListener('click', function() {
        document.getElementById('adminSidebar').classList.toggle('collapsed');
        document.querySelector('.admin-content-wrap').classList.toggle('expanded');
    });

    // 현재 메뉴 active 처리 (URL 기반 자동)
    const path = window.location.pathname;
    document.querySelectorAll('.sidebar-link').forEach(link => {
        if (link.getAttribute('href') && path.includes(link.getAttribute('href').split('?')[0])) {
            link.classList.add('active');
        }
    });
</script>
</body>
</html>
