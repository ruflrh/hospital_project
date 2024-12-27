<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
		
		<link rel="stylesheet" href="/hos/resources/css/call_reservation.css">
		
	</head>
	<body>
		<div class="container">
	        <!-- 타이틀 섹션 -->
	        <div class="title-section">
	            <h2>건강검진 상담예약</h2>
	            <p>상담에 대한 설명 문구...</p>
	            <div class="time-info">
	                <strong>상담시간</strong>
	                <span>평일 : 08:30 ~ 17:30</span>
	            </div>
	        </div>
	
	        <!-- 개인정보 수집 동의 섹션 -->
	        <div class="agreement-section">
	            <h3>개인정보 수집·이용 동의 <span class="required">(필수)</span></h3>
	            <div class="agreement-box">
	                <h4 style="margin: ">1. 개인정보의 수집·이용 목적</h4>
					간편하게 예약을 진행하기위한 용도
					
					<h4>2. 수집하려는 개인정보의 항목</h4>
					성명, 휴대전화번호
					
					<h4>3. 개인정보의 보유 및 이용 기간</h4>
					개인정보의 보유기간은 3년 후 삭제 됩니다.
					
					<h4>4. 거부권 및 불이익</h4>
					개인정보 수집 및 이용에 거부할 권리가 있으며 다만, 이를 거부할 때에는 간편예약 서비스 이용을 할 수 없습니다.
	            </div>
	            <div class="radio-buttons">
	                <label><input type="radio" name="agreement" value="yes"> 동의합니다</label>
	                <label><input type="radio" name="agreement" value="no"> 동의하지 않습니다</label>
	            </div>
	        </div>
	
	        <!-- 하단 버튼 섹션 -->
	        <div class="bottom-section">
	            <span>전화번호 : 1</span>
	            <div class="buttons">
	                <button class="cancel-btn">취소</button>
	                <button class="submit-btn">상담예약 신청</button>
	            </div>
	        </div>
	    </div>
	</body>
</html>