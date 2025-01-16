<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<link rel="stylesheet" href="/hos/resources/css/menubar_user.css">
		<style>
			*{margin: 0; padding: 0;}
			
			#content_login_before,
			#content_login_after{
				background-color: #d8d8d8;
				width: 640px;
				height: 500px;
				margin-top: -10px;
			}
			
			#login_message,
			#welcome_message{
				font-size: 24px;
				margin-left: 400px;
				margin-top: 25px;
			}
			
			.login_buttons {
				padding: 10px;
				font-weight: bold;
				border: none;
				border-radius: 0;
				border: 1px solid #12B8BA;
				background:none;
				color: #12B8BA;
				font-size: 18px;
				cursor: pointer;
				transition: all 0.3s ease;
			}
			
			.login_buttons:hover {
				background: #12B8BA;
				color: white;
			}
		</style>
		
	</head>
	<body>
		<!-- 로그인을 안 한 경우 -->
		<c:if test="${param.pat_idx eq null or empty param.pat_idx}">
			<div id="content_login_before">
				<p id="login_message">
				로그인 하시면<br>
				더욱 다양한 혜택을<br>
				이용하실 수 있습니다.</p>	
				<div style="margin-left: 400px;">
					<input type="button" class="login_buttons" value="로그인" 
						style="width: 200px; margin-top: 30px;" onclick="location.href='login_page.do'"><br>
					<input type="button" class="login_buttons" value="회원가입" 
						style="width: 200px;  margin-top: 5px;" onclick="location.href='register_page.do'">
				</div>
			</div>
		</c:if>
			
		<!-- 로그인을 한 경우 -->
		<c:if test="${param.pat_idx ne null and not empty param.pat_idx}">
			<div id="content_login_after">
				<p id="welcome_message">
				<strong>${sessionScope.patient.pat_name}</strong>님 환영합니다.<br>
				방문을 환영합니다.
				</p>
				<div style="margin-left: 400px;">
					<input type="button" class="login_buttons" value="로그아웃" 
						style="width: 200px; margin-top: 30px;" onclick="logout(${param.pat_idx});"><br>
					<input type="button" class="login_buttons" value="예약확인" 
						style="width: 200px;  margin-top: 5px;" 
							onclick="location.href='mypage_reservation_list.do?pat_idx=${sessionScope.patient.pat_idx}'">
				</div>
			</div>	
		</c:if>
			
	
	</body>
</html>




