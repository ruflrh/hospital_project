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
			
			/* 회원가입 div */
			#register_div{
				margin: 10px 0px;
				text-align: center;
			}
			
			/* a태그 - "회원가입" */
			#register_text{
				display: block;
				font-size: 25px;
				font-weight: bold;
				margin: 10px 0px;
			}
			
			table{
				text-align: left;
				border-collapse: collapse;
				margin: 0px auto;
				margin-bottom: 10px; 
			}
			table th, td{
				padding: 10px 10px;
			}
			
			/* input[type="text"] 태그 - 모든 태그 기본설정 */
			input{
				border: 1px solid gray;
				width: 250px;
				height: 35px;
			}
			
			/* input[type="button"] 태그 - 중복확인 버튼, 주소찾기 버튼 */
			#id_btn, #address_btn{
				border: none;
				width: 150px;
				height: 38px;
				color: white;
				background-color: #7cc4e8;
			}
			
			/* input[type="text"] 태그 - 이메일 */
			.email{
				width: 200px;	
			}
			/* option 태그 - 이메일주소 */
			#email_addr{
				height: 40px;
				width: 100px;
			}
			
			/* input[type="text"] 태그 - 주소 */
			#address_post{
				width: 120px;
			}
			#address_detail, #address_road{
				width: 400px;
				margin-top: 10px;
			}
			
			
			/* option 태그 - 전화번호 */
			.pat_phone{
				height: 40px;
				width: 70px;
			}
			
			/* a태그 - "비밀번호가 일치하지 않습니다" */
			#pwd_text{
				font-size: 12px;
				color: red;
			}
			
			/* 가입취소, 회원가입 버튼 */
			#back_btn, #reg_btn{
				border: none;
				widwth: 150px;
				height: 40px;
			}
			#back_btn {
				border: 1px solid lightgray;
				background-color: white;
			}
			#reg_btn {
				background-color: gray;
				color: white;
			}
			
			/* 성별 선택 radio */
			.gender{
				height: 15px;
				width: 20px;
			}
		</style>
		
		<script>
			//두개의 비밀번호가 일치하는지 체크하는 함수
			function chk_pwd() {
				let pwd = document.getElementsByName("pat_pwd")[0];
		        let pwd2 = document.getElementsByName("pat_pwd2")[0];
		        let pwd_text = document.getElementById("pwd_text"); 
				
				if(pwd.value == pwd2.value){
					pwd_text.innerHTML = "";
				}
			}
			
			//이메일 주소에 따라 input text 값 변경하는 함수
			function chk_email() {
			    let email_addr = document.getElementById("email_addr");
			    let pat_email2 = document.getElementsByName("pat_email2")[0];
			    
			    if (email_addr.options[email_addr.selectedIndex].value != "") {
			        pat_email2.value = email_addr.options[email_addr.selectedIndex].value;
			    }
			}
		</script>
	</head>
	<body>
		<div id="main_div">
		
			<div id="register_div">
				<a id="register_text">회원 가입</a>
				<form>
					<table border="1">
						<tr>
							<th>이름</th>
							<td><input name="pat_name"></td>
						</tr>
						<tr>
							<th>아이디</th>
							<td>
								<input name="pat_id">
								<input id="id_btn" type="button" value="중복확인">
							</td>
						</tr>
						
						<!-- 비밀번호 & 비밀번호 확인 ================================================== -->
						<tr>
							<th>비밀번호</th>
							<td><input type="password" name="pat_pwd" onkeyup="chk_pwd();"></td>
						</tr>
						<tr>
							<th>비밀번호 확인</th>
							<td>
								<input type="password" name="pat_pwd2" onkeyup="chk_pwd();"><br>
								<a id="pwd_text">비밀번호가 일치하지 않습니다.</a>
							</td>
						</tr>
						
						<!-- 이메일 ================================================== -->
						<tr>
							<th>이메일</th>
							<td>
								<input class="email" name="pat_email1">
								<a> @ </a>
								<input class="email" name="pat_email2">
								
								<select id="email_addr" onchange="chk_email();">
									<option value="">직접입력</option>
									<option value="gmail.com">gmail.com</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="naver.com">naver.com</option>
									<option value="nate.com">nate.com</option>
								</select>
							</td>
						</tr>
						
						<!-- 주소 ================================================== -->
						<tr>
							<th>주소</th>
							<td>
								<input id="address_post" name="pat_address_post">
								
								<input id="address_btn" type="button" value="주소찾기" onclick="find_address();"><br>
								
								<input id="address_road" name="pat_address_road"><br>
								<input id="address_detail" name="pat_address_detail" placeholder="상세 주소를 입력하세요">
							</td>
						</tr>
						
						<!-- 연락처 ================================================== -->
						<tr>
							<th>연락처</th>
							<td> 
								<select class="pat_phone" name="pat_phone1_1">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select> - 
								<input class="pat_phone" name="pat_phone1_2"> -
	
								<input class="pat_phone" name="pat_phone1_3">
							</td>
						</tr>
						<tr>
							<th>비상연락처</th>
							<td>
								<select class="pat_phone" name="pat_phone2_1">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select> - 
								<input class="pat_phone" name="pat_phone2_2"> -
								<input class="pat_phone" name="pat_phone2_3">
							</td>
						</tr>
						<tr>
							<th>생년월일</th>
							<td><input type="date" name="pat_birthday"></td>
						</tr>
						<tr>
							<th>성별</th>
							<td>
								<input class="gender" type="radio" name="pat_gender" value="남자" checked>남자
								<input class="gender" type="radio" name="pat_gender" value="여자">여자
							</td>
						</tr>
					</table>
				</form>
	
				<input id="back_btn" type="button" value="가입취소" onclick="history.back();">
				<input id="reg_btn" type="button" value="회원가입">

			</div>
		</div>
	</body>
	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	<script>
	    function find_address() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	
	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    document.getElementById("address_detail").value = extraAddr;
	                
	                } else {
	                    document.getElementById("address_detail").value = '';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('address_post').value = data.zonecode;
	                document.getElementById("address_road").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("address_detail").focus();
	            }
	        }).open();
	    }
	</script>
</html>