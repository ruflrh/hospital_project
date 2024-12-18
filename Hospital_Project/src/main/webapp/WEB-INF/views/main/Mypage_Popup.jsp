<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<style>
			#myPagePopUp{
				display: none;
				border: 1px solid black;
				position: absolute;
				width: 300px;
				height: 150px;
				left: 1450px;
				background-color: white;
				z-index: 100;
				padding: 0;
			}
			
			#exit{
			font-size: 24px;
			margin-left: 275px;
			}
			
			#profile{
				width: 50px;
				float: left;
				margin-left: 10px;
			}
			
			.popup_a{
				background-color: #d2d2d2;
				margin: 0;
				padding: 5px;
				font-size: 12px;
			}
			
		</style>
		
		<script>
			function close_popup() {
				let popup = document.getElementById("myPagePopUp");
				popup.style.display = 'none';
			}
		
		</script>
	</head>
	<body>
		<div id="myPagePopUp">
			<a id="exit" onclick="close_popup();">X</a>
			
			<div>
			<img src="/hos/resources/images/profile.png" id="profile">
			<p style="font-weight: bold; float: left; margin-left: 10px;">한준희</p>
			<a class="popup_a" style="float: right; 
				margin-right: 7px;" href="certificates_print.do">증명서 발급안내</a>
			<p style="float: left; margin-left: 10px;">1702o505@naver.com</p>
			</div>
			
			<div style="display: inline-block; margin-top: 20px;">
				<a class="popup_a" href="reservation_list.do">예약내역</a>
				<a class="popup_a" href="payment_page.do">진료비결제</a>
				<a class="popup_a" href="update_info.do">회원정보수정</a>
				<a class="popup_a" href="managing_posts.do">게시글관리</a>
			</div>
		</div>
	</body>
</html>




