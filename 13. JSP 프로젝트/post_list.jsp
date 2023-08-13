<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게 시 판</title>
</head>
<body>
	<h1>게시글 목록</h1>
	<%
	try {
		// JDBC 드라이버 연결
		Class.forName("com.mysql.jdbc.Driver");
		String db_address = "jdbc:mysql://localhost:3306/board";
		String db_username = "root";
		String db_password = "qwer1234";
		Connection conn = DriverManager.getConnection(db_address, db_username, db_password);
		
		// MySQL로 전송하기 위한 쿼리문인 insertQuery 문자열 선언
		String insertQuery = "SELECT * FROM board.post order by num desc";
		
		// MySQL 쿼리문 실행
		PreparedStatement psmt = conn.prepareStatement(insertQuery);
		
		// 쿼리문을 전송해 받아온 정보를 result 객체에 저장
		ResultSet result = psmt.executeQuery();%>
		
		<!-- 게시글 목록을 표시할 기본 테이블 생성 -->
		<table border='1'>
		<tr>
			<td colspan='5'>
				<h3>게시글 제목 클릭 시 상세 열람 가능</h3>
			</td>
		</tr>
		<tr>
			<td colspan='5'>
				<button type='button' value='신규 글 작성' onClick="location.href='post_new.jsp'">신규 글 작성</button>
			</td>
		</tr>
		<tr>
			<td>번호</td>
			<td>작성자</td>
			<td>제목</td>
			<td>작성일</td>
			<td>관리</td>
		</tr>
		<%
		// 받아온 정보를 입력하고, 하나씩 커서를 다음으로 넘김
		while(result.next()) {%>
			<tr>
				<!-- 번호 <td> 아래에 DB에서 받아온 num 컬럼값 삽입 -->
				<td><%=result.getInt("num") %></td>
				
				<!-- 작성자 <td> 아래에 DB에서 받아온 writer 컬럼값 삽입 -->
				<td><%=result.getString("writer") %></td>
				
				<!-- 제목 <td> 아래에 DB에서 받아온 title 컬럼값 삽입, 제목 클릭 시 post_read.jsp로 연결되며 num 컬럼값을 parameter로 넘김 -->
				<td><a href="post_read.jsp?num=<%=result.getInt("num") %>"><%=result.getString("title") %></a></td>
				
				<!-- 작성일 <td> 아래에 DB에서 받아온 reg_date 컬럼값 삽입 -->
				<td><%=result.getTimestamp("reg_date") %></td>
				
				<td>
					<!-- 수정 버튼을 누르면 post_modify.jsp로 연결되며 num 컬럼값을 parameter로 넘김 -->
					<button type="button" value='수정' onclick="location.href='post_modify.jsp?num=<%=result.getString("num") %>'">수정</button>
					<!-- 삭제 버튼을 누르면 post_delete_send.jsp로 연결되며 num 컬럼값을 parameter로 넘김 -->
					<button type="button" value="삭제" onclick="location.href='post_delete_send.jsp?num=<%=result.getString("num") %>'">삭제</button>
				</td>
			</tr>
			<%
			}%>	
		</table>
	<%
	}
	catch (Exception e) {
		out.println("오류가 발생했습니다. 오류메세지 : " + e.getMessage());
	}
	%>
</body>
	<br>
	<div class="container">
		<button onclick="location.href='/JSP_Study/MyPage/Home.jsp'">Home</button>
	</div>
</html>