<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %> <!-- 있으면 완전히 동일하게 -->
<div class="top-bar">
  <div class="logo">로고</div>
  <div class="auth-buttons">
    <button onclick="location.href='${pageContext.request.contextPath}/main?view=login'">로그인</button>
    <button onclick="location.href='${pageContext.request.contextPath}/main?view=register'">회원가입</button>
  </div>
</div>
<div class="menu-bar">
  <a href="${pageContext.request.contextPath}/main">메인페이지</a>
  <a href="#">갤러리</a>
  <a href="#">외부데이터</a>
  <a href="#">게시판</a>
</div>
