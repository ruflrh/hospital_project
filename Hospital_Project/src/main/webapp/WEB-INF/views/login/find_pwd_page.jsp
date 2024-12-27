<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<style>
		hr{
			width: 980px;
			margin: 10px auto;
		}
		
		p{
			font-size: 25px;
			font-weight: bold;
		}
		#sub_title{
			font-size: 15px;
			margin: 20px;
		}
		
		input {
			border: 1px solid gray;
			width: 320px;
			height: 40px;
		}
			
		#main_div{
			text-align: center;
		}
		#main_div table{
			width: 600px;
			margin: 20px auto;
		}
		#update_pwd hr{
			width: 980px;
			margin: 0px auto;
		}
		
		#pwd_btn{
			border: none;
			width: 150px;
			height: 40px; 
			border: 1px solid lightgray;
			background-color: white;
			margin-bottom: 20px;
		}
		
		#back_btn{
			border: none;
			width: 150px;
			height: 40px;
			border: 1px solid lightgray;
			background-color: white;
		}
	</style>
	
	<script>
		function chk_pwd() {
			let pwd_new1 = document.getElementById("pwd_new1").value;
			let pwd_new2 = document.getElementById("pwd_new2").value;
			let pat_idx = ${ param.pat_idx };
			
			if(pwd_new1 == '' ||  pwd_new2 == ''){
				alert("비밀번호를 모두 입력하세요.");
				return;
			}
			
			if(pwd_new1 != pwd_new2) {
	        	alert("새 비밀번호가 일치하지 않습니다.");
	        	return;
	        }
			
			alert("비밀번호가 변경되었습니다.");
			location.href = 'login_update_pwd.do?pwd_new=' + pwd_new1 + "&pat_idx=" + pat_idx;
		}
	</script>
</head>
<body>
	<div id="main_div">
		<p>비밀번호 변경</p>
		<p id="sub_title">비밀번호를 재설정하신 뒤 로그인 해주세요.</p>
		
		<hr>
		<table>
			<tr>
				<td>새 비밀번호</td>
				<td><input id="pwd_new1" type="password"></td>
			</tr>
			<tr>
				<td>새 비밀번호 확인</td>
				<td><input id="pwd_new2" type="password"></td>
			</tr>
		</table>

		<input id="pwd_btn" type="button" value="비밀번호 변경" onclick="chk_pwd();">		
		<input id="back_btn" type="button" value="취소" onclick="history.back();">
		
		<hr>
	</div>
</body>
</html>