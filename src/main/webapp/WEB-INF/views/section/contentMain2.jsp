<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--
  - 메인에서 <jsp:include page="section/contentMain2.jsp"/>로 불러옴
  - main2.jsp, main.jsp 등에 section 부분에서 이 파일이 노출되는 구조
-->
<button id="load-users-btn" class="btn btn-info">외부 데이터 불러오기</button>

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

<!-- jQuery CDN (이미 layout/header에서 불렀다면 생략 가능) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$("#load-users-btn").click(function() {
  $.ajax({
    url: "${pageContext.request.contextPath}/api/users",
    type: "GET",
    dataType: "json",
    success: function(users) {
      let tbody = $("#users-table tbody");
      tbody.empty(); // 기존 행 삭제
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
