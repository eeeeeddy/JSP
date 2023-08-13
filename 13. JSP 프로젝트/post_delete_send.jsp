<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import='java.sql.*' %>
<%
	try {
		// JDBC 드라이버 연결
		Class.forName("com.mysql.jdbc.Driver");
		String db_address = "jdbc:mysql://localhost:3306/board";
		String db_username = "root";
		String db_password = "qwer1234";
		Connection conn = DriverManager.getConnection(db_address, db_username, db_password);
		
		// 문자열의 인코딩 방식 결정
		request.setCharacterEncoding("utf-8");
		
		// 파라미터를 통해 전해진 게시글 번호를 받아와 num 변수에 저장
		String num = request.getParameter("num");		
	
		// MySQL로 전송하기 위한 쿼리문인 insertQuery 문자열 선언 (읽어온 게시글 번호를 통해 수정할 게시글을 다시한번 결정(확인)함)
		String insertQuery = "DELETE FROM board.post WHERE num=" + num;
		
		// SQL 쿼리문을 실행 (MySQL로 전송)하기 위한 객체 선언
		PreparedStatement psmt = conn.prepareStatement(insertQuery);
		
		// DELETE하여 반영된 레코드의 건수 결과를 반환
		psmt.executeUpdate();	
		
		// 모두 완료되면 post_list.jsp(글 목록) 폼으로 되돌아온다.
		response.sendRedirect("post_list.jsp");
	}
	catch(Exception e) {
		out.println("오류가 발생했습니다. 오류 메세지 : " + e.getMessage());
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>