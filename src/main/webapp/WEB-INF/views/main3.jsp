<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- 여기에 기존 CSS 남겨두기 -->
<style>
.top-bar {
	background-color: #222;
	color: white;
	padding: 10px 20px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.top-bar .logo {
	font-weight: bold;
	font-size: 18px;
}

.top-bar .auth-buttons button {
	margin-left: 10px;
	background-color: white;
	border: none;
	padding: 6px 12px;
	cursor: pointer;
}

.menu-bar {
	background-color: #f2f2f2;
	padding: 10px 20px;
}

.menu-bar a {
	margin-right: 15px;
	text-decoration: none;
	color: #333;
	font-weight: bold;
}

/* 나머지 .wrapper, .content, .sidebar, .main-content, .footer 스타일도 여기에 */
html, body {
	margin: 0;
	padding: 0;
	height: 100%;
	font-family: sans-serif;
}

.wrapper {
	min-height: 100%;
	display: flex;
	flex-direction: column;
}

.content {
	flex: 1;
	display: flex;
	padding: 30px 60px;
	gap: 40px;
}

.sidebar {
	width: 200px;
	flex-shrink: 0;
}

.main-content {
	flex: 1;
}

.footer {
	background-color: #222;
	color: #fff;
	text-align: center;
	padding: 15px 30px;
}
</style>
</head>
<body>
	<!-- 세션에 저장된 loginId를 JSP 변수로 꺼내기 -->
	ERROR
</body>
</html>
