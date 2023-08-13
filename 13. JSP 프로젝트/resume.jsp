<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>R E S U M E</title>
<style>
	th {
		height: 30px;
		border: 1px solid black;
		background-color: #d2d2d2;
	}
	td {
		height: 30px;
		border: 1px solid black;
	}
	table {
		margin-left: auto;
		margin-right: auto;
		border-collapse: collapse;
		border: 1px solid black;
	}
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
</head>
<body>
	<h2 style="text-align:center">이 력 서</h2>
	<br>
	<table width="75%">
		<tr>
			<th rowspan="6" width="150px">사진</th>
			<th rowspan="4" width="40px">성<br>명</th>
			<th>한 글</th>
			<td>　　　　　　　</td>
			<th>지 원 분 야</th>
			<td>　　　　　　　</td>
		</tr>
		<tr>
			<th>한 자</th>
			<td>　　　　　　　</td>
			<th>취미 및 특기</th>
			<td>　　　　　　　</td>
		</tr>
		<tr>
			<th>영 어</th>
			<td>　　　　　　　</td>
			<th>생 년 월 일</th>
			<td>　　　　　　　</td>
		</tr>
		<tr>
			<th>주민등록번호</th>
			<td>　　　　　-　　　　　</td>
			<th>이 메 일</th>
			<td>　　　　　　　　　　</td>
		</tr>
		<tr>
			<th colspan="2">전 화 번 호</th>
			<td>　　　　　　　　　　</td>
			<th>핸 드 폰</th>
			<td>　　　　　　　　　　</td>
		</tr>
		<tr>
			<th colspan="2">현 주소</th>
			<td colspan="3">　　　　　　　</td>
		</tr>
	</table>
	<br>
	<table width="75%">
		<th rowspan="6" width="100px">학　　력<br><br>사　　항</th>
		<tr>
			<th>졸 업 년 도</th>
			<th>학 교 명</th>
			<th>전 공</th>
			<th>소 재 지</th>
		</tr>
		<tr>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
		</tr>
		<tr>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
		</tr>
		<tr>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
		</tr>
	</table>
	<br>
	<table width="75%">
		<th rowspan="6" width="100px">경　　력<br><br>사　　항</th>
		<tr>
			<th>근 무 기 간</th>
			<th>회 사 명</th>
			<th>소 재 지</th>
			<th>지 위</th>
			<th>담 당</th>
		</tr>
		<tr>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
		</tr>
		<tr>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
		</tr>
		<tr>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
		</tr>
		<tr>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
		</tr>
	</table>
	<br>
	<table width="75%">
		<th rowspan="6" width="100px">외국어<br><br>능　력</th>
		<tr>
			<th>자격 및 수료</th>
			<th>말하기/쓰기 정도</th>
			<th>비고</th>
		</tr>
		<tr>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
		</tr>
		<tr>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
			<td>　　　　　　　</td>
		</tr>
	</table>
	<br>
	<table width="75%" height="150px">
		<th rowspan="6" width="100px">컴퓨터<br>사용능력</th>
		<td></td>
	</table>
	<div class="container">
		<button onclick="location.href='/JSP_Study/MyPage/Home.jsp'">Home</button>
	</div>
</body>
</html>
