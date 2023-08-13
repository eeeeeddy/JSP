<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>H O M E</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">H O M E</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
				aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
				<div class="navbar-nav">
					<a class="nav-link active" aria-current="page" href="/JSP_Study/CH04/form_membership01.jsp">Join</a>
					<a class="nav-link" href="/JSP_Study/MyPage/post_list.jsp">Board</a>
					<a class="nav-link" href="/JSP_Study/MyPage/resume.jsp">Resume</a>
					<a class="nav-link" href="/JSP_Study/MyPage/coverletter.jsp">Cover Letter</a>
					<a class="nav-link disabled">No</a>
				</div>
			</div>
		</div>
	</nav>
	<hr>
	<div style='text-align: center;'>
		<img src='https://mblogthumb-phinf.pstatic.net/MjAyMTA4MjVfMjI2/MDAxNjI5ODc2ODM2ODA5.PrVmd7COWX88ocY7sTPrqK9Zh2YdO0Stps-7GeNKA2Mg.KSxGyss_GOkzJU6APdrtWrY8eDoAlYXhWoh6mskXxssg.GIF.lotte250ml/SmartSelect%EF%BC%BF20181017%EF%BC%8D224347%EF%BC%BFKakaoTalk%EF%BC%BB1%EF%BC%BD.gif?type=w800'>
		<img src='https://mblogthumb-phinf.pstatic.net/MjAyMTA4MjVfNjcg/MDAxNjI5ODc2ODM0MjU3.13nzTq25wWRv2G6DPzhcuK_zzRCbusU2dniQuRAzcx0g.q9t3L7kbQ04wTO8a-VhaoJN2QrWKs9bKGdUc1rrwBoIg.GIF.lotte250ml/externalFile%EF%BC%8D1%EF%BC%BB1%EF%BC%BD.gif?type=w800'>
	</div>
	<br>
	<div style='text-align: center;'>
		<table border='0'>
			<tr>
				<td>
					<form action="login.jsp" method="post">
						<input type='submit' value="◀ 관리자 접속하기">			
					</form>
				</td>
				<td>
					<form action="signup.jsp" method="post">
						<input type='submit' value="사용자 접속하기 ▶">			
					</form>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>