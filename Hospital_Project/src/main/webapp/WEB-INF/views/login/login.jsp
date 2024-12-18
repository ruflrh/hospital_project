<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<style>
			#main_div{
				width: 100%;
				margin: 0px auto;
			}
			
			#login_div{
				margin: 10px auto;
				text-align: center;
			}
			
			a{
				display: block;
				margin: 10px 0px;
			}
			
			#login_text{
				font-size: 25px;
				font-weight: bold;
			}
			
			#login_inputtb{
				margin: 0px auto;
			}
			
			input {
				border: 1px solid gray;
				width: 320px;
				height: 40px;
			}
			
			input[type="button"]{
				magin: 10px 0pxl;
			}
			
			#login_btn{
				border: none;
				width: 326px;
				height: 40px;
				color: white;
				background-color: #7cc4e8;
			}
			
			#find_text, #member_text{
				font-size: 15px;
			}
			
			.find{
				border: none;
				width: 160px;
				height: 40px;
				color: black;				
				background-color: light;
			}
			
			#member_btn{
				border: none;
				width: 326px;
				height: 40px;
				color: black;				
				background-color: light;
			}
		</style>
	</head>
	<body>
		<!-- 로그인 메인 div -->
		<div id="main_div">
			<div id="login_div">
			
				<a id="login_text">로그인</a>
				
				<table id="login_inputtb">
					<tr>
						<td><input name="pat_id" placeholder="아이디를 입력해주세요" size="30"></td>
					</tr>
					<tr>
						<td><input name="pat_pwd" placeholder="비밀번호를 입력해주세요" size="30"></td>
					</tr>
					<tr>
						<td><input id="login_btn" type="button" value="로그인"></td>
					</tr>
					
				</table>
				
				<a id="find_text">아이디 또는 비밀번호를 잃어버리셨나요?</a>
				<input class="find" type="button" value="아이디 찾기">
				<input class="find" type="button" value="비밀번호 찾기"><br>
				
				<a id="member_text">아직 회원가입을 하지 않으셨나요?</a>
				<input id="member_btn" type="button" value="회원가입" 
					   onclick="location.href='member_register.do'"><br>
				
			</div>  
		</div>
	</body>
</html>