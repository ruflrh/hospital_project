<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


	<title></title>
		<link rel="stylesheet" href="resources/css/reservation-kty/common.css">
		<!-- 3분할 공간 나누기 스타일 -->
		<link rel="stylesheet" href="resources/css/reservation-kty/step1/step1.css">
		<!-- center영역 스타일 덮개-->
		<link rel="stylesheet" href="resources/css/reservation-kty/step1/member_res.css">
		<!-- 진료과목 선택 드롭다운 메뉴  -->
		<link rel="stylesheet" href="resources/css/reservation-kty/step1/medical_subject.css">
		<script src="resources/js/member_res.js"></script>
		<script src="resources/js/medical_subject.js?v=1.0"></script>
	
	</head>
	<body>
    <!-- 좌측 영역 -->
	    <div id="left">
	    	<div id="step1" class="left-contanier">
		        <h1>회원 정보</h1>
		        <p>${sessionScope.patient.pat_name}님</p>
		        <button onclick="alert('로그아웃!')">로그아웃</button>
		        <br>
		        <button onclick="history.back();">뒤로 가기</button>
		        <br>
		        <button onclick="alert('예약 현황 조회!')">예약 현황 조회</button>
		        <br>
		        <button onclick="alert('진료 이력 확인!')">진료 이력 확인</button>
		        <br>
		        <h3>진료 예약</h3>
		        <br>
		        <h1>1544-9970</h1>
	    	</div>
	    </div>
	    <!-- 중앙 영역 -->
	    <div id="center">
	        <div id="step1">
	        	<div id="parent">
					<form id="step1">
						<table border="1" class="original">
						<caption>회원예약</caption>
							<tr>
								<th>1. 본인 정보 입력</th>
							</tr>
							<tr>
								<th>성명</th>
							</tr>
							<tr>
								<td><input name="회원명" value="${sessionScope.patient.pat_name}" disabled="disabled"></td>
							</tr>
							
							<tr>
								<th>연락처</th>
							</tr>
							<tr>	
								<td><select id="digit">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
									<option value="070">070</option>
									<option value="02">02(서울)</option>
									<option value="031">031(경기)</option>
									<option value="032">032(인천)</option>
									<option value="033">033(강원)</option>
									<option value="041">041(충남)</option>
									<option value="042">042(대전)</option>
									<option value="043">043(충북)</option>
									<option value="051">051(부산)</option>
									<option value="052">052(울산)</option>
									<option value="053">053(대구)</option>
									<option value="054">054(경북)</option>
									<option value="055">055(경남)</option>
									<option value="061">061(전남)</option>
									<option value="062">062(광주)</option>
									<option value="063">063(전북)</option>
									<option value="064">064(제주)</option>
								</select> - <input name="midle" id="middle"> - <input name="back" id="back"></td>
							</tr>
							<tr>
								<td>개인정보 수집, 이용 동의</td>
							</tr>
							<tr>
								<td>
								개인정보는 병원정보 조회를 위해서만 사용합니다.
								<br>
								개인정보 이용에 동의합니다.
								 </td>
							</tr>
							<tr>
								<td>
									<input type="radio" name="check_agree" value="yes">동의 합니다.
									<input type="radio" name="check_agree" value="no">동의하지 않습니다.
								</td>
							</tr>
							<tr>
								<td>
									<input type="button" value="다음" onclick="check();">
								</td>
							</tr>
						</table>
					</form>
					
					<!-- 화면 앞에 씌운 커버 -->
			 		<div class="cover" id="cover" onclick="hideCover();">
						<h1>회원 예약</h1>
					</div>
		  		</div>
		    </div>
	    </div>
	
	    <!-- 우측 영역 -->
		<div id="right">
			<div id="medical_subject">
				    <ul class="dropdown">
				        <!-- 대분류 반복 -->
				        <c:forEach var="entry" items="${list}">
				            <li class="category">${entry.key} <!-- 대분류 -->
				                <ul class="subcategories">
				                    <!-- 소분류 반복 -->
				                    <c:forEach var="name" items="${entry.value}">
				                        <li data-name="${name}" onclick="goStep2(this);">
				                        ${name}
				                        </li>
				                    </c:forEach>
				                </ul>
				            </li>
				        </c:forEach>
				    </ul>
			</div>
			<input type="button" value="이전" onclick="hide();">
		</div>


	</body>
</html>