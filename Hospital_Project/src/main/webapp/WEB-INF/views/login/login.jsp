<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<style>
			#main_div{
				border: 1px solid black;
				width: 1000px;
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
		
		<script src="/hos/resources/js/httpRequest.js"></script>
		<script>
			function login() {
				let pat_id = document.getElementsByName("pat_id")[0].value;
				let pat_pwd = document.getElementsByName("pat_pwd")[0].value;
				
				//유효성검사
				if(pat_id == ''){
					alert("아이디를 입력하세요.");
					return;
				}
				if(pat_pwd == ''){
					alert("비밀번호를 입력하세요.");
					return;
				}
				
				let url = "login.do";
				let param = "pat_id=" + pat_id + "&pat_pwd=" + pat_pwd;
				sendRequest(url, param, login_result_fn, "post");
			}
			function login_result_fn() {
				if(xhr.readyState == 4 && xhr.status == 200){
					let data = xhr.responseText;
					let json = ( new Function('return '+data) )();
					
					if(json[0].result == "id_not_exist"){
						alert("존재하지 않는 아이디 입니다.");
						return;
					}
					else if(json[0].result == "id_exist"){
						alert("비밀번호가 일치하지 않습니다.");
						return;
					} else {
						alert("로그인 성공");
						location.href = 'main.do';
					}
				}
			}
		</script>
	</head>
	<body>
		<!-- 로그인 메인 div -->
		<div id="main_div">
			<div id="login_div">
			
				<a id="login_text">로그인</a>
				<form>
					<table id="login_inputtb">
						<tr>
							<td><input name="pat_id" placeholder="아이디를 입력해주세요" size="30"></td>
						</tr>
						<tr>
							<td><input name="pat_pwd" type="password" placeholder="비밀번호를 입력해주세요" size="30"></td>
						</tr>
						<tr>
							<td><input id="login_btn" type="button" value="로그인"
								 onclick="login(this.form);"></td>
						</tr>
					</table>
				</form>
				
				<a id="find_text">아이디 또는 비밀번호를 잃어버리셨나요?</a>
				<input class="find" type="button" value="아이디 찾기">
				<input class="find" type="button" value="비밀번호 찾기"><br>
				
				<a id="member_text">아직 회원가입을 하지 않으셨나요?</a>
				<input id="member_btn" type="button" value="회원가입" 
					   onclick="location.href='register_page.do'"><br>
			</div>  
		</div>
	</body>
</html>