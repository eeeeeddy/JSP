<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 유효성 검사 완료</title>
</head>
<style>
	.container {
		display: flex;
		justify-content: center;
		align-items: center;
		height: 10vh;
	}
	button {
		height: 50px;
		width: 150px;
		font-size: 24px;
		font-family:sans-serif;
		border-radius: 20px;
		border : 0px;
		background-color: #f2f2f2;
	}
</style>
<body>
	Home > 아이디와 비밀번호 입력 성공
	<hr>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		String choice = request.getParameter("choice");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String gender = request.getParameter("gender");
		String[] hobby = request.getParameterValues("hobby");
		String intro = request.getParameter("Introduction");
	%>
	<p> 아이디 : <%= id %>
	<p> 비밀번호 : <%= passwd %>
	<p> 이름 : <%= name %>
	<p> 연락처 : <%= choice %> <%= phone1 %>-<%= phone2 %>-<%= phone3 %>
	<p> 성별 : <%= gender %>
	<p> 취미 :
			<%
				if(hobby != null)
				{
					for(int count=0;count<hobby.length; count++)
					{
						out.println(" "+ hobby[count]);
					}
				}
			%>
	<p> 본인 소개 : <%= intro %>
	<div class="container">
		<button onclick="location.href='/JSP_Study/MyPage/Home.jsp'">Home</button>
	</div>	
</body>
</html>