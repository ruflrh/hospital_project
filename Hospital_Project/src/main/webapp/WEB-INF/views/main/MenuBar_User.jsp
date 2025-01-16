<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
      
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	
		<link rel="stylesheet" href="/hos/resources/css/menubar_user.css">
		<script src="/hos/resources/js/httpRequest.js"></script>
		<script src="/hos/resources/js/menubar_user.js"></script>
		
	</head>
	<body>
		<div id="menubar" onmouseleave="hideMenubarContent()">
			<center>
				<div id="menubar_inner">
					<img src="/hos/resources/images/MEDICOMPILE LOGO.png" style="width: 100px; margin-right: 30px; cursor: pointer;"
						onclick="location.href='main.do?pat_idx=${param.pat_idx}'">
					 
					<a href="#" id="professer" 
						onmouseover="professerContent()">진료과/의료진</a>
					<a href="step1.do?pat_idx=${param.pat_idx}" id="reservation" 
						onmouseover="reservationContent()">진료예약</a>
					<a href="#" id="board" 
						onmouseover="boardContent()">병원게시판</a>
					<a href="#" id="introduce" 
						onmouseover="introduceContent()">병원안내</a>
					<a id="health" onmouseover="healthContent()">건강정보</a>
					
					<!-- 로그인 확인 처리 -->
					<c:if test="${param.pat_idx eq null or empty param.pat_idx}">
						<a id="login" href="login_page.do" 
							style="font-size: 18px; margin-right: 3px; color: gray;">로그인 |</a>
						<a id="register" href="register_page.do" 
							style="font-size: 18px; margin-left: 3px; color: gray;">회원가입</a>
					</c:if>
					
					<c:if test="${param.pat_idx ne null and not empty param.pat_idx}">
						<a id="logout" onclick="logout(${param.pat_idx});" 
							style="font-size: 18px; margin-right: 3px; color: gray;">로그아웃 |</a>
						<a id="mypage" onclick="location.href='mypage.do?pat_idx=${param.pat_idx}'" 
							style="font-size: 18px; margin-left: 3px; color: gray;">마이페이지</a>
					</c:if>
					<div class="underline"></div>
				</div>
				<hr style="margin-top: 5px; border: 1px solid #d8d8d8;">	
			</center>
			
			<!-- 진료과/의료진 호버 시 -->	
			<div id="professer_content">
				<jsp:include page="/WEB-INF/views/main/Menubar_Login_Content.jsp"/>
				<div id="professer_content_div">
					<p style="font-size: 40px;">의료진 찾기</p>
					<p>메디컴파일의 의료진은<br> 환자를 위해 항상 노력하고 있습니다.</p>
				</div>
			</div>
			
			<!-- 진료예약 호버 시 -->	
			<div id="reservation_content"> 
				<center>
					<div id="reservation_content" style="height: 300px;">
					    <div id="reservation_content_right" 
					    	style="display: inline-block; vertical-align: middle;">
					        <input type="button" class="menubar_buttons" value="예약"
					        	style="width: 200px;">
					        <input type="button" class="menubar_buttons" value="예약조회"
					        	style="width: 200px;">
					        <input type="button" class="menubar_buttons" value="증명서 발급 안내"
					        	style="width: 200px;">
					    </div>
					</div>
				</center>
			</div>
			
			<!-- 병원게시판 호버 시 -->	
			<div id="board_content">
				<center>
					<div class="box">
						<h2 class="board_h2">감사합니다! 
							<img src="/hos/resources/images/하트.png" 
								style="width: 32px; margin-left: 140px;"></h2>
								
						<p style="display: flex;">칭찬 및 감사 의견 접수</p>
						<section class="buttons">
							<button class="menubar_buttons"
									onclick="location.href='join_thanks_insert_form.do?'">감사합니다! 글쓰기
							</button>
							<button class="menubar_buttons" 
									onclick="location.href='join_thanks_list.do'">감사합니다! 전체보기
							</button>
						</section>
					</div>
					<div class="box">
						<h2 class="board_h2">건의합니다!
							<img src="/hos/resources/images/말풍선.png" 
								style="width: 32px; margin-left: 140px;"></h2>
								
						<p style="display: flex;">제안 및 불편 고충 접수</p>
						<section class="buttons">
							<button class="menubar_buttons"
									onclick="location.href='join_compl_insert_form.do'">건의합니다! 글쓰기</button>
						</section>
					</div>
					<div class="box">
						<h2 class="board_h2">자원봉사
						<img src="/hos/resources/images/자원봉사.png" 
								style="width: 32px; margin-left: 170px;"></h2>
						<p style="display: flex;">우리병원 자원봉사</p>
						<section class="buttons">
							<button class="menubar_buttons"
									onclick="location.href='join_volunteer_list.do?pat_idx=${param.pat_idx}'">자원봉사 전체보기</button>
						</section>
					</div>
				</center>
			</div>
			
			<!-- 병원안내 호버 시 -->	
			<div id="introduce_content" style="margin-top: 20px;">
				<center>
					<input type="button" class="menubar_buttons" value="층별 안내" style="width: 200px;"
						onclick="location.href='floor_info.do'">
					<input type="button" class="menubar_buttons" value="주차 안내" style="width: 200px;"
						onclick="location.href='parking_info.do'">
				</center>
			</div>
			
			<!-- 건강정보 호버 시 -->	
			<div id="health_content" style="margin-top: 20px;">
				<center>
					<input type="button" class="menubar_buttons" value="자가진단 서비스"
						style="width: 200px;" onclick="location.href='diagnosis_list.do'">
					<input type="button" class="menubar_buttons" value="의료기기 탐색"
						style="width: 200px;" onclick="location.href='device_list.do'">
				</center>
			</div>
		</div>
	</body>
	<script>
		// 메뉴 항목(몇몇제외)과 underline 요소 선택
		var menuItems = document.querySelectorAll("#menubar_inner a:not(#login):not(#register):not(#logout):not(#mypage)");
		var underline = document.querySelector(".underline");
		
		// 각 메뉴 항목에 마우스 오버 이벤트 추가
		menuItems.forEach(function(item) {
		  item.addEventListener("mouseover", function(e) {
		 	
		    var rect = e.target.getBoundingClientRect();
		    var menuLeft = document.querySelector("#menubar_inner").getBoundingClientRect().left;
		
		    // underline의 크기와 위치 변경
		    underline.style.width = "80px";
		    underline.style.transform =
		        "translateX(" + (rect.left - menuLeft + rect.width / 2 - underline.offsetWidth / 2) + "px)";
		    underline.style.opacity = "1"; // underline 표시
		    
		  });
		});
		
		// 마우스가 menubar를 벗어날 때 underline 숨기기
		document.querySelector("#menubar").addEventListener("mouseleave", function() {
		  underline.style.opacity = "0"; // underline 숨김
		});
	</script>
</html>


