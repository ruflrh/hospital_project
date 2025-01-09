<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>진료 가능 날짜 캘린더</title>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="resources/css/reservation-kty/step3.css">
    <!-- FullCalendar JS -->
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.15/index.global.min.js"></script>
    
	<script>
	    window.availableDays = ${availableDays};
	    window.professor = ${professor};
	    window.holidays = ${holidays};
	    window.pat_idx = "${sessionScope.patient.pat_idx}";
	    const pat_idx = "${param.pat_idx}";
	</script>
	<script src="resources/js/step3.js"></script>
   
	</head>
	<body>
		<div style="display: flex;">
		    <!-- 교수 정보 영역 -->
		    <div id="professorInfo">
		        <table border="1" style="border-collapse: collapse">
		        <caption>교수 정보</caption>
		        	<tr>
		        		<td colspan="2" align="center"><img alt="" src="resources/images/${vo.pro_file}"></td>
		        	</tr>
		        	<tr>
		        		<td width="70px" >교수명</td>
		        		<td>${vo.pro_name}</td>
		        	</tr>
		        	<tr>
		        		<td>진료과목</td>
		        		<td><br>${vo.pro_field}</td>
		        	</tr>
		        </table>
		    </div>
		
		    <!-- 캘린더 영역 -->
		    <div id="calendar"></div>
		
		    <!-- 예약 가능한 시간 표시 영역 -->
		  	<div id="timeSlots">
			    <h3>예약 가능한 시간</h3>
			    <p>날짜: ${date}</p>
			
			    <div class="time-buttons">
			        <c:forEach var="button" items="${buttons}">
			            <button 
			                class="time-slot" 
			                data-time="${button.time}" 
			                data-pro-idx="${pro_idx}" 
			                ${button.disabled == 'true' ? 'disabled' : ''}>
			                ${button.time}
			            </button>
			        </c:forEach>
			    </div>
			</div>
		</div>
	</body>
</html>
