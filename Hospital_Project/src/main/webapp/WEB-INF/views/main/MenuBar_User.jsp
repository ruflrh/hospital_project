<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
      
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	
		<link rel="stylesheet" href="/hos/resources/css/menubar_user.css?v=1.0">
		<script src="/hos/resources/js/httpRequest.js"></script>
		
	</head>
	<body>
		<div id="menubar" onmouseleave="hideMenubarContent()">
			<center>
				<img src="/hos/resources/images/임의의 로고.png" 
				     style="width: 50px; cursor: pointer; position: absolute; left: 350px;" 
				     onclick="toMain(${param.pat_idx})">
						
				<a href="#" id="professer" 
					onmouseover="professerContent()">진료과/의료진</a>
				<a href="member_info.do" id="reservation" 
					onmouseover="reservationContent()">진료예약</a>
				<a href="#" id="board" 
					onmouseover="boardContent()">병원게시판</a>
				<a href="#" id="introduce" 
					onmouseover="introduceContent()">병원안내</a>
				<a id="health" onmouseover="healthContent()">건강정보</a>
				
				<!-- 로그인 확인 처리 -->
				<c:if test="${param.pat_idx eq null or empty param.pat_idx}">
					<a id="login" href="login_page.do">로그인 &nbsp; |</a>
					<a id="register" href="register_page.do">회원가입</a>
				</c:if>
				
				<c:if test="${param.pat_idx ne null and not empty param.pat_idx}">
					<a id="logout" onclick="logout(${param.pat_idx});">로그아웃 &nbsp; |</a>
					<a id="mypage" onclick="location.href='mypage.do?pat_idx=${param.pat_idx}'">마이페이지</a>
				</c:if>
			</center>
					
			<!-- 진료과/의료진 호버 시 -->	
			<div id="professer_content">
				<center>
					<div style="display: inline-block">
						<h3 style="margin: 10px;">진료과/의료진</h3>
						<h5 style="margin-bottom: 5px;">진료과/의료진 통합검색</h5>
						<input placeholder="의료진이름 입력" style="height: 25px;">
						<input type="button" value="검색" 
							style="height: 28px; width: 40px;"><br>
					</div>
					
					<img src="/hos/resources/images/진료과.png" width="80px"
						style="margin-left: 30px;">
						
					<a href="#" style="margin: 0; font-size: 16px;">진료과</a>
					
					<img src="/hos/resources/images/의료진.png" width="80px"
						style="margin-left: 30px;">
						
					<a href="#" style="margin: 0; font-size: 16px;">의료진</a>
				</center>
			</div>
			
			<!-- 진료예약 호버 시 -->	
			<div id="reservation_content"> 
				<center>
					<div id="reservation_content" style="height: 300px;">
					    <div style="display: inline-block; vertical-align: middle;">
					        <h3>예약/발급</h3>
					        <img src="/hos/resources/images/전화.png" style="width: 15px">
					        첫 방문 간편예약<br>
					        <input placeholder="성명"><br>
					        <input placeholder="전화번호"><br>
					        <h5 id="reservation_content_h5">전화예약:1111-1111</h5>
					        <input type="button" value="신청" style="margin-top: 5px;">
					    </div>
					    <div id="reservation_content_right" 
					    	style="display: inline-block; vertical-align: middle;">
					        <input type="button" class="board_button" value="예약"
					        	style="width: 200px;">
					        <input type="button" class="board_button" value="예약조회"
					        	style="width: 200px;">
					        <input type="button" class="board_button" value="증명서 발급 안내"
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
							<button class="board_button"
									onclick="location.href='info_thanks_insert_form.do'">감사합니다! 글쓰기
							</button>
							<button class="board_button" 
									onclick="location.href='info_thanks_list_form.do'">감사합니다! 전체보기
							</button>
						</section>
					</div>
					<div class="box">
						<h2 class="board_h2">건의합니다!
							<img src="/hos/resources/images/말풍선.png" 
								style="width: 32px; margin-left: 140px;"></h2>
								
						<p style="display: flex;">제안 및 불편 고충 접수</p>
						<section class="buttons">
							<button class="board_button"
									onclick="location.href='info_compl_insert_form.do'">건의합니다! 글쓰기</button>
						</section>
					</div>
					<div class="box">
						<h2 class="board_h2">자원봉사
						<img src="/hos/resources/images/자원봉사.png" 
								style="width: 32px; margin-left: 170px;"></h2>
						<p style="display: flex;">우리병원 자원봉사</p>
						<section class="buttons">
							<button class="board_button"
									onclick="location.href='info_volunteer_list_form.do'">자원봉사 전체보기</button>
						</section>
					</div>
				</center>
			</div>
			
			<!-- 병원안내 호버 시 -->	
			<div id="introduce_content">
				<center>
					<div id="introduce_content_left">
				        <h2 style="float: left; margin-top: 25px;">오시는 길</h2>
				        <p style="float: right; margin-top: 35px;">
				            서울특별시 강남구 테헤란로 10길 9 그랑프리빌딩
				        </p>
				        
				        <!-- 지도api -->
				        <div id="introduce_content_map">
				            <jsp:include page="/WEB-INF/views/main/ComeMap.jsp"/>
				        </div>
				        
				        <input type="button" class="board_button" value="층별 안내"
				        	onclick="location.href='floor_info.do'">
				        <input type="button" class="board_button" value="주차 안내"
				        	onclick="location.href='parking_info.do'">
				    </div>
				</center>
			</div>
			
			<!-- 건강정보 호버 시 -->	
			<div id="health_content" style="margin-top: 40px;">
				<center>
					<input type="button" class="board_button" value="자가진단 서비스"
						style="width: 200px;" onclick="location.href='diagnosis_list.do'">
					<input type="button" class="board_button" value="의료기기 탐색"
						style="width: 200px;" onclick="location.href='device_list.do'">
				</center>
			</div>
			
		</div>
	</body>
	
	<script>
		//의료진,진료과
		function professerContent() {
			document.getElementById('reservation_content').style.display = 'none';
		    document.getElementById('board_content').style.display = 'none';
		    document.getElementById('introduce_content').style.display = 'none';
		    document.getElementById('professer_content').style.display = 'block';
		    document.getElementById('menubar').style.height = '200px';
		}
	 
	    //진료예약
		function reservationContent() {
			document.getElementById('professer_content').style.display = 'none';
		    document.getElementById('board_content').style.display = 'none';
		    document.getElementById('introduce_content').style.display = 'none';
		    document.getElementById('reservation_content').style.display = 'block';
		    document.getElementById('menubar').style.height = '250px';
		}
	    
	    //병원게시판
		function boardContent() {
			document.getElementById('professer_content').style.display = 'none';
		    document.getElementById('reservation_content').style.display = 'none';
		    document.getElementById('introduce_content').style.display = 'none';
		    document.getElementById('board_content').style.display = 'block';
		    document.getElementById('menubar').style.height = '350px';
		}
	    
		//병원안내
		function introduceContent() {
			document.getElementById('professer_content').style.display = 'none';
		    document.getElementById('reservation_content').style.display = 'none';
		    document.getElementById('board_content').style.display = 'none';
		    document.getElementById('introduce_content').style.display = 'block';
		    document.getElementById('menubar').style.height = '485px';
		}
		
		//건강정보
		function healthContent() {
			document.getElementById('professer_content').style.display = 'none';
		    document.getElementById('reservation_content').style.display = 'none';
		    document.getElementById('board_content').style.display = 'none';
		    document.getElementById('introduce_content').style.display = 'none';
		    document.getElementById('menubar').style.height = '150px';
		}
		//=======================================================================
		//메뉴바 오픈	
		function hideMenubarContent() {
			document.getElementById('professer_content').style.display = 'none';
		    document.getElementById('reservation_content').style.display = 'none';
		    document.getElementById('board_content').style.display = 'none';
		    document.getElementById('introduce_content').style.display = 'none';
		    document.getElementById('menubar').style.height = '50px';
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
		//=======================================================================
		//이미지 클릭 시 메인 페이지로 전환
		function toMain(pat_idx) {
		    location.href="main.do?pat_idx=" + pat_idx;
		}
	</script>
</html>






