<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 유효성 검사 완료</title>
</head>
<body>
	Home > 아이디와 비밀번호 입력 성공
	<hr>
	<%
		request.setCharacterEncoding("utf-8");
		String sname = request.getParameter("sname");
		String passwd = request.getParameter("passwd");
	%>
	<p> 아이디 : <%= sname %>
	<p> 비밀번호 : <%= passwd %>
</body>
</html>