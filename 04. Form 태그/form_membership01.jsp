<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회 원 가 입</title>
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
<script type='text/javascript'>
	function checkFun(){
		var f = document.person_info;
,
		for(count = 0; count < f.id.value.length; count++){
			var ch = f.id.value.charAt(count);
			if((ch < 'A' || ch > 'Z') && (ch > 'a' || ch < 'Z') && (ch > '0' || ch < '9')){
				alert('닉네임은 영문 대문자로만 입력해주세요.');
				f.id.focus();
				return false;
			}
		}
		
		for(count=0; count < f.name.value.length; count++){
			var ch = f.name.value.charAt(count);
			if(ch >= '0' && ch <= '9'){
				alert('이름에 숫자가 포함되지 않아야합니다.')
				f.name.focus()
				return false
			}
		}
		
		if(isNaN(f.passwd.value)){
			alert('비밀번호는 숫자로만 입력해주세요.');
			f.passwd.focus();
			return false
		}
		
		else if(isNaN(f.phone1.value) && isNaN(f.phone2.value) && (f.phone3.value)){
			alert('전화번호는 숫자로만 입력해주세요.')
			f.phone1.focus()
			f.phone2.focus()
			f.phone3.focus()
			return false
		}

		else return true;
	}
</script>
</head>
<body>
	Home > Join the Membership
	<hr>
	<form action='isNaNcheck_success.jsp' name='person_info' method='post' onsubmit='return checkFun()'>
		<fieldset style='width:400px'>
			<legend>개인 정보 입력</legend><p>
			
			*아이디 : <br>
			<input type='text' name='id' size='16'><br><br>
			
			*비밀번호 : <br>
			<input type='password' name='passwd' size='16'><br><br>
			
			*이름 : <br>
			<input type='text' name='name' size='16'><br><br>
			
			*주민등록번호 : <br>
			<input type='text' name='p_id1' maxlength='6' size='8'> -
			<input type='password' name='p_id2' maxlength='7' size='8'><br><br>
			
			*연락처 : <br>
			<select name='choice' style='width: 60px; height:20.5px'>
				<option value='choice'>선 택</option>
				<option value='KT'>KT</option>
				<option value='SKT'>SKT</option>
				<option value='LGU+'>LGU+</option>
			</select>
			<input type='text' maxlength='3' size='3' name='phone1'>-
			<input type='text' maxlength='4' size='4' name='phone2'>-
			<input type='text' maxlength='4' size='4' name='phone3'><br><br>
			
			성별 : <br>
			<input type='radio' name='gender' value='남성'>남
			<input type='radio' name='gender' value='여성'>여<br><br>
			
			이메일 : <br>
			<input type='text' maxlength='10' size='10'name='email1'> @
			<input type='text' maxlength='15' size='15' name='email2'><br><br>
			
			취미 : <br>
			<input type='checkbox' name='hobby' value='운동'>운동
			<input type='checkbox' name='hobby' value='독서'>독서
			<input type='checkbox' name='hobby' value='여행'>여행
			<input type='checkbox' name='hobby' value='음악감상'>음악감상<br><br>
			
			본인소개 : <br>
			<textarea name='Introduction' cols='50' rows='5'>
			</textarea>
			<hr>
			<br>
		<div style='text-align:center'>
			<input type='submit' value='가입하기'> &nbsp;&nbsp;
			<input type='reset' value='다시작성'>
		</div><br>
		</fieldset>
	</form>
	<br>
	<div class="container">
		<button onclick="location.href='/JSP_Study/MyPage/Home.jsp'">Home</button>
	</div>
</body>
</html>