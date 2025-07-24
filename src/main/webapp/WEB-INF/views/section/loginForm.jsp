<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<div class="content d-flex justify-content-center">
  <form action="/login" method="post" class="w-50">
    <h3>로그인</h3>

    <div class="mb-3">
      <label for="username" class="form-label">아이디</label>
      <input type="text" id="username" name="username" class="form-control" required>
    </div>

    <div class="mb-3">
      <label for="password" class="form-label">비밀번호</label>
      <input type="password" id="password" name="password" class="form-control" required>
    </div>

    <!-- ✅ CSRF 토큰 꼭 필요 -->
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

    <!-- ✅ 로그인 버튼 하나만 -->
    <button type="submit" class="btn btn-warning">로그인</button>
  </form>
</div>
