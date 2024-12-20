<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<link rel="stylesheet" href="/hos/resources/css/mainpage_user.css">
		
		<script>
			//상담 신청 팝업 띄우기
			function callCenter() {
				let name = document.getElementById("calling_name").value;
				let tel = document.getElementById("calling_tel").value;
				
				if(name === ''){
					alert("이름을 입력해 주세요");
					return;
				}
				if(tel === ''){
					alert("전화번호를 입력해 주세요");
					return;
				}
				
				window.open(
			        "Call_Reservation.do", // 팝업에 띄울 페이지 
			        "팝업창",      // 팝업창 이름
			        "width=600,height=500,scrollbars=no,resizable=no" // 옵션
		        );
			}
		</script>
		
	</head>
	<body>
		<!-- 메뉴바 -->
		<jsp:include page="/WEB-INF/views/main/MenuBar_User.jsp"/>
		
		<!-- 배너 -->
		<jsp:include page="/WEB-INF/views/main/MainBanner.jsp"/>
		
		<hr>
		
		<!-- 상담예약/진료비 결제/증명서 발급/자가진단 서비스 -->
		<div>
			<center>
				<table id="banner_under_table">
					<tr>
						<div class="transition-card">
							<h4 id="calling">상담예약</h4>
							<section class="details">
							<form>
								<input placeholder="성명 입력" id="calling_name">
								<input placeholder="전화번호 입력" id="calling_tel"
									style="margin: 5px">
								<input type="button" value="빠른 상담 신청"
									style="margin: 10px; cursor: pointer;"
										onclick="callCenter()">
							</form>
							</section>
						</div>
					</tr>
					<tr>
						<td>
							<img src="/hos/resources/images/진료비 결제.png" width="50px">
						</td>
						<td>
							<img src="/hos/resources/images/증명서 발급.png" width="50px">
						</td>
						<td>
							<img src="/hos/resources/images/오시는 길.png" width="50px">
						</td>
					</tr>
					<tr>
						<td><a>진료비 결제</a></td>					
						<td><a>증명서 발급</a></td>					
						<td><a>오시는 길</a></td>					
					</tr>
					<tr>
						<td colspan="3">
							<button class="service-button" style="margin-top: 30px">
						        <span class="title">자가진단 서비스 :</span> 
						        <span class="description">
						            자가진단은 사용자 스스로 건강진단을 할 수 있는 항목들과<br> 
						            결과에 대한 건강 콘텐츠를 통해 
						            건강실천사항을 제공하고 있습니다.
						        </span>
						    </button>
						</td>
					</tr>
				</table>
			</center>
		</div>
		
		<hr>
		
		<!-- 메인페이지용 작은 게시판들 띄우기 -->
		<div id="board_volunteer_container">
			<center>
				<table style="text-align: center;" id="board_table">
					<tr>
						<th>병원소식 / 공지</th>
						<th>자원봉사 게시판</th>
					</tr>
					
					<tr>
						<td>
							<div style="margin: 10px; border: 1px solid black;">
								<h3>공지사항 상위 게시글들</h3>
							</div>
						</td>
						<td>
							<div style="margin: 10px; border: 1px solid black;">
								<h3>자원봉사 상위 게시글들</h3>
							</div>
						</td>
					</tr>
				</table>
			</center>
		</div>
	</body>
</html>

