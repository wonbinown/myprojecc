<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 세션에서 loginId, loginName 꺼내오기 -->
<c:set var="loginId" value="${sessionScope.loginId}" />
<c:set var="loginName" value="${sessionScope.loginName}" />
<div class="top-bar">
  <div class="logo">로고</div>
  <div>
    <c:if test="${not empty loginId}">
      <span style="color:yellow;">${loginId} 님 환영합니다!</span>
      <button onclick="location.href='${pageContext.request.contextPath}/main'">로그아웃</button>
    </c:if>
    <c:if test="${empty loginId}">
      <button onclick="location.href='${pageContext.request.contextPath}/main?view=login'">로그인</button>
      <button onclick="location.href='${pageContext.request.contextPath}/main?view=register'">회원가입</button>
    </c:if>
  </div>
</div>


<div class="menu-bar">
  <a href="${pageContext.request.contextPath}/main">메인페이지</a>
  <a href="#">갤러리</a>
  <a href="#">외부데이터</a>
  <a href="#">게시판</a>
</div>
