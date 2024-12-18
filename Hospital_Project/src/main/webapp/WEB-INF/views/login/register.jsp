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
			
			/* 필수입력란 표시 */
			.essential{
				font-size: 10px;
				color: red;
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
		
		<script src="/hos/resources/js/httpRequest.js"></script>
		<script>
			//비밀번호가 일치한지 확인하는 변수
			let chk_pwd_value = 'n';
			//아이디가 중복체크가 되었는지 확인하는 변수
			let chk_id_value = 'n';
		
			//두개의 비밀번호가 일치하는지 체크하는 함수
			function chk_pwd() {
				chk_pwd_value = 'n';
				
				let pwd = document.getElementsByName("pat_pwd")[0];
		        let pwd2 = document.getElementsByName("pat_pwd2")[0];
		        let pwd_text = document.getElementById("pwd_text"); 
				
				if(pwd.value == pwd2.value){
					chk_pwd_value = 'y';
					pwd_text.innerHTML = "";
				}
				else{
					chk_pwd_value = 'n';
					pwd_text.innerHTML = "비밀번호가 일치하지 않습니다.";
				}
			}
			
			//이메일 주소에 따라 input text 값 변경하는 함수
			function chk_email() {
			    let email_addr = document.getElementById("email_addr");
			    let pat_email_addr = document.getElementsByName("pat_email_addr")[0];
			    
			    if (email_addr.options[email_addr.selectedIndex].value != "") {
			    	pat_email_addr.value = email_addr.options[email_addr.selectedIndex].value;
			    }
			}
			
			function chk_id_change() {
				chk_id_value = 'n';
			}
			//아이디 중복체크 버튼 클릭
			function chk_id() {
				let id = document.getElementsByName("pat_id")[0].value;
				
				if(id == ''){
					alert("아이디를 입력하세요.");
					return;
				}
				
				let url = "check_id.do";
				let param = "pat_id="+encodeURIComponent(id);
				sendRequest(url, param, chk_id_result, "post");
			}
			//chk_id() => 콜백함수
			function chk_id_result() {
				if(xhr.readyState == 4 && xhr.status == 200){
					let pat_id = document.getElementsByName("pat_id")[0];
					let data = xhr.responseText;
					let json = ( new Function('return '+data) )();
					
					if(json[0].result == "yes"){
						alert("이미 존재하는 아이디 입니다.");
						pat_id.focus();
					}
					else {
						chk_id_value = 'y';
						alert("사용가능한 아이디 입니다.");
						
						//아이디 입력칸 비활성화
						//pat_id.disabled = "disabled";
						return;
					}
				}
			}
			
			//회원가입 버튼 클릭
			function register( f ) {
				//아이디 중복검사 했는지 체크
				if(chk_id_value == 'n'){
					alert("아이디 중복확인을 진행해주세요.");
					return;
				}
				//비밀번호 일치 체크
				if(chk_pwd_value == 'n'){
					alert("비밀번호가 일치하지 않습니다.");
					return;
				}
				
				//유효성체크
				let pat_id = document.getElementsByName("pat_id")[0].value;
				let pat_name = document.getElementsByName("pat_name")[0].value;
				let pat_pwd = document.getElementsByName("pat_pwd")[0].value;
				let pat_email = document.getElementsByName("pat_email")[0].value;
				let pat_email_addr = document.getElementsByName("pat_email_addr")[0].value;
				let pat_address_post = document.getElementsByName("pat_address_post")[0].value;
				let pat_address_road = document.getElementsByName("pat_address_road")[0].value;
				let pat_address_detail = document.getElementsByName("pat_address_detail")[0].value;
				let pat_phone = document.getElementsByName("pat_phone")[0].value;
				let pat_phone1_1 = document.getElementsByName("pat_phone1_1")[0].value;
				let pat_phone1_2 = document.getElementsByName("pat_phone1_2")[0].value;
				
				if(pat_id == '' || pat_name == '' || pat_email == '' || pat_email_addr == '' ||
				   pat_address_post == '' || pat_address_road == '' || pat_address_detail == '' ||
				   pat_phone == '' || pat_phone1_1 == '' || pat_phone1_2 == '') {
					alert("빈칸을 모두 입력해주세요.");
					return;
				}
				
				alert("회원가입이 완료되었습니다.");
				f.method = "post";
				f.action = "insert_patient.do";
				f.submit();
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
							<th>이름<a class="essential">*</a></th>
							<td><input name="pat_name"></td>
						</tr>
						<tr>
							<th>아이디<a class="essential">*</a></th>
							<td>
								<input name="pat_id" onchange="chk_id_change();">
								<input id="id_btn" type="button" value="중복확인" onclick="chk_id( this.form );">
							</td>
						</tr>
						
						<!-- 비밀번호 & 비밀번호 확인 ------------------------------------------------------------------->
						<tr>
							<th>비밀번호<a class="essential">*</a></th>
							<td><input type="password" name="pat_pwd" onkeyup="chk_pwd();"></td>
						</tr>
						<tr>
							<th>비밀번호 확인<a class="essential">*</a></th>
							<td>
								<input type="password" name="pat_pwd2" onkeyup="chk_pwd();"><br>
								<a id="pwd_text">비밀번호가 일치하지 않습니다.</a>
							</td>
						</tr>
						
						<!-- 이메일 ------------------------------------------------------------------->
						<tr>
							<th>이메일<a class="essential">*</a></th>
							<td>
								<input class="email" name="pat_email">
								<a> @ </a>
								<input class="email" name="pat_email_addr">
								
								<select id="email_addr" onchange="chk_email();">
									<option value="">직접입력</option>
									<option value="gmail.com">gmail.com</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="naver.com">naver.com</option>
									<option value="nate.com">nate.com</option>
								</select>
							</td>
						</tr>
						
						<!-- 주소 ------------------------------------------------------------------->
						<tr>
							<th>주소<a class="essential">*</a></th>
							<td>
								<input id="address_post" name="pat_address_post">
								
								<input id="address_btn" type="button" value="주소찾기" onclick="find_address();"><br>
								
								<input id="address_road" name="pat_address_road"><br>
								<input id="address_detail" name="pat_address_detail" placeholder="상세 주소를 입력하세요">
							</td>
						</tr>
						
						<!-- 연락처 ------------------------------------------------------------------->
						<tr>
							<th>연락처<a class="essential">*</a></th>
							<td> 
								<select class="pat_phone" name="pat_phone">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select> - 
								<input class="pat_phone" name="pat_phone1_1" maxlength="4"> -
								<input class="pat_phone" name="pat_phone1_2" maxlength="4">
							</td>
						</tr>
						<tr>
							<th>비상연락처</th>
							<td>
								<select class="pat_phone" name="pat_phone2">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select> - 
								<input class="pat_phone" name="pat_phone2_1"> -
								<input class="pat_phone" name="pat_phone2_2">
							</td>
						</tr>
						<tr>
							<th>생년월일<a class="essential">*</a></th>
							<td><input type="date" name="pat_birthday"></td>
						</tr>
						<tr>
							<th>성별<a class="essential">*</a></th>
							<td>
								<input class="gender" type="radio" name="pat_gender" value="남자" checked>남자
								<input class="gender" type="radio" name="pat_gender" value="여자">여자
							</td>
						</tr>
					</table>

					<!-- 회원가입 or 가입취소 버튼 ----------------------------------------------------------------->
					<input id="back_btn" type="button" value="가입취소" onclick="history.back();">
					<input id="reg_btn" type="button" value="회원가입" onclick="register( this.form );">
				</form>
			</div>
		</div>
	</body>
	
	<!-- 주소찾기 API ------------------------------------------------------------------------------>
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