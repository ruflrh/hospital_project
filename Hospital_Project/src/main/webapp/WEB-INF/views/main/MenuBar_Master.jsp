<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<link rel="stylesheet" href="/hos/resources/css/menubar_master.css?v=1.0">
		<script src="/hos/resources/js/httpRequest.js"></script>
		
	</head>
	<body>
		<div id="menubar" onmouseleave="hideMenubarContent()">
			<center>
				<div id="menubar_inner">
					<img src="/hos/resources/images/MEDICOMPILE LOGO.png" style="width: 100px; margin-right: 30px;">
							
					<a href="#" id="professer_manage" 
						onmouseover="professerContent()">의료진관리</a>
						
					<a href="reservation_ManagePage.do" id="reservation_manage" 
						onmouseover="reservationContent()">예약관리</a>
						
					<a href="#" id="board_manage" 
						onmouseover="boardContent()">병원게시판관리</a>
					
					<!-- 관리자페이지는 로그인 확인 절차 필요X -->
					<a id="logout" onclick="logout(${param.pat_idx});" style="font-size: 12px;">로그아웃</a>
				</div>
			</center>
				
			<!-- 의료진 관리 호버 시 -->	
			<div id="professer_manage_content" style="margin-top: 20px;">
				<center>
					<input type="button" class="professer_button" value="진료과 검색 및 수정"
						style="width: 200px;">
					<input type="button" class="professer_button" value="의료진 검색 및 수정"
						style="width: 200px;">
				</center>
			</div>
			
		</div>	
	</body>
	
	<script>
		//의료진관리
		function professerContent() {
		    document.getElementById('professer_manage_content').style.display = 'block';
		    document.getElementById('menubar').style.height = '150px';
		}
		//=======================================================================
		//메뉴바 오픈	
		function hideMenubarContent() {
			document.getElementById('professer_manage_content').style.display = 'none';
		    document.getElementById('menubar').style.height = '55px';
		}
		// 부모 요소인 #menubar에 mouseleave이벤트 추가
		document.getElementById('menubar').addEventListener('mouseleave', () => {
		    hideMenubarContent(); // 메뉴바를 벗어났을 때 콘텐츠 숨김
		});
		//=======================================================================
		//로그아웃
		function logout(idx) {
			if(!confirm("로그아웃 하시겠습니까?")){
				return;
			}else{
				idx = "";
				location.href="main.do";
			}
		}//logout
	</script>
</html>