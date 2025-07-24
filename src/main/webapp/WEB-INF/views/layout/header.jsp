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
 <!-- 외부데이터 버튼 -->
<button id="load-users-btn" class="btn btn-info">외부 데이터 불러오기</button>

<!-- 출력용 테이블 -->
<table id="users-table" class="table table-striped mt-3" style="display:none;">
  <thead>
    <tr>
      <th>ID</th><th>이름</th><th>아이디</th><th>이메일</th><th>전화</th><th>웹사이트</th>
    </tr>
  </thead>
  <tbody>
    <!-- JS로 데이터 삽입 -->
  </tbody>
</table>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$("#load-users-btn").click(function() {
  $.ajax({
    url: "${pageContext.request.contextPath}/api/users",
    type: "GET",
    dataType: "json",
    success: function(users) {
      let tbody = $("#users-table tbody");
      tbody.empty();
      users.forEach(function(u) {
        tbody.append(
          `<tr>
            <td>${u.id}</td>
            <td>${u.name}</td>
            <td>${u.username}</td>
            <td>${u.email}</td>
            <td>${u.phone}</td>
            <td>${u.website}</td>
          </tr>`
        );
      });
      $("#users-table").show();
    },
    error: function(xhr) {
      alert("데이터 불러오기 실패!");
    }
  });
});
</script>

</div>
