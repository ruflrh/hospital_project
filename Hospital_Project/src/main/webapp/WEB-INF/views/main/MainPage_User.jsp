<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<link rel="stylesheet" href="/hos/resources/css/mainpage_user.css?v=1.0">
		
		<script>
			//상담 신청 팝업 띄우기
			function callCenter(f) {
				let name = f.callName.value;
				let tel = f.callTel.value;
				
				if(name === ''){
					alert("이름을 입력해 주세요");
					return;
				}
				if(tel === ''){
					alert("전화번호를 입력해 주세요");
					return;
				}
				
				/* window.open(
			        "Call_Reservation.do", // 팝업에 띄울 페이지 
			        "팝업창",      // 팝업창 이름
			        "width=600,height=500,scrollbars=no,resizable=no" // 옵션
		        ); */
			}
		</script>
		
	</head>
	<body>
		<c:choose>
		    <c:when test="${sessionScope.patient != null}">
		        <c:if test="${fn:trim(sessionScope.patient.pat_id) eq 'admin'}">
		        	<% System.out.println("id가 admin임"); %>
		            <jsp:include page="/WEB-INF/views/main/MenuBar_Master.jsp"/>
		        </c:if>
		        <c:if test="${sessionScope.patient.pat_id ne 'admin'}">
		        	<% System.out.println("id가 admin이 아님"); %>
		            <jsp:include page="/WEB-INF/views/main/MenuBar_User.jsp"/>
		        </c:if>
		    </c:when>
		    <c:otherwise>
		    	<% System.out.println("로그인 전의 메뉴바"); %>
		        <jsp:include page="/WEB-INF/views/main/MenuBar_User.jsp"/>
		    </c:otherwise>
		</c:choose>
		
		<!-- 배너 -->
		<jsp:include page="/WEB-INF/views/main/MainBanner.jsp"/>
		
		<hr>
		
		<!-- 상담예약/진료비 결제/증명서 발급/자가진단 서비스 -->
		<center>
			<div class="background" id="background" onmouseleave="hideBackContent()">
				<table>
					<c:if test="${fn:trim(sessionScope.patient.pat_id) ne 'admin'}">
						<tr>
							<div class="transition-card" id="transition-card" onmouseover="cardContent()">
								<h4 id="calling">상담예약</h4>
								<section class="details">
									<form>
										<input placeholder="성명 입력" id="calling_name" name="callName">
										<input placeholder="전화번호 입력" id="calling_tel" name="callTel" style="margin: 5px">
										<input type="button" value="빠른 상담 신청"
											style="margin: 10px; cursor: pointer;"
												onclick="callCenter(this.form)">
									</form>
								</section>
							</div>
						</tr>
					</c:if>
					
					<tr>
						<td align="center">
							<img src="/hos/resources/images/진료비 결제.png" width="50px">
						</td>
						<td align="center">
							<img src="/hos/resources/images/증명서 발급.png" width="50px">
						</td>
						<td align="center">
							<img src="/hos/resources/images/오시는 길.png" width="50px"
								onclick="location.href='way_info.do'">
						</td>
					</tr>
					<tr>
						<td><a>진료비 결제</a></td>					
						<td><a>증명서 발급</a></td>					
						<td><a href="way_info.do">오시는 길</a></td>					
					</tr>
					<tr>
						<td colspan="3" align="center">
							<button class="service-button" style="margin-top: 30px" onclick="location.href='diagnosis_list.do'">
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
			</div>
		</center>
		
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
								<h3><a onclick="location.href='info_notice_form.do'" 
								style="font-size: 16px;">공지사항 상위 게시글들</a></h3>
							</div>
						</td>
						<td>
							<div style="margin: 10px; border: 1px solid black;">
								<h3><a onclick="location.href='info_volunteer_list_form.do'" 
								style="font-size: 16px;">자원봉사 상위 게시글들</a></h3>
							</div>
						</td>
					</tr>
				</table>
			</center>
		</div>
	</body>
</html>

