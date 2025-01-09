<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>예약 내역</title>
		
		<style>
           @font-face {
			  font-family: 'Interop';
			  src: url('https://raw.githubusercontent.com/payw-org/Interop/main/web/fonts/Interop-Regular.woff2')
			      format('woff2'),
			      url('https://raw.githubusercontent.com/payw-org/Interop/main/web/fonts/Interop-Regular.woff')
			      format('woff');
			  font-weight: normal;
			  font-style: normal;
			  font-display: block;
			}
			
			*{margin: 0; padding: 0; font-family: 'Interop'; font-weight: 300; font-size: 18px;}
		
			#main_div{
				width: 1000px;
				margin: 20px auto;
				margin-bottom: 80px;
			}
			
			/* a태그 - "예약내역" */
			#reservation_text{
				display: block;
				font-size: 40px;
				margin-bottom: 30px;
			}
	
			/* hr태그 - 예약내역 바로아래 위치 */	
			#hr_main{
				border: 0;
				background-color: #12B8BA;
				height: 2px;
				margin-bottom: 20px;
			}		
			
			/* 스크롤 추가 */		
			#sub_div{
				overflow-y: scroll;
				height: 600px;
			}
		
		   	/* 예약내역 div */
			.reser_div {
			    position: relative;
			    overflow: hidden;
			    margin: 0px 10px;
			}
			.reser_div:first-child {
			    margin-top: 0px;
			}
			
			/* 진료과 + 교수명 div */
			.dept_name{
				margin: 10px 0px;
			}
			.dept_name a{
				font-size: 24px;
				margin-right: 10px;
			}
			
			/* 교수이미지 */
			.image{
				float: left;
				margin: 10px;
				width: 120px;
				height: 160px;
			}
		
			/* 진료과 */
			.dept{
				padding: 7px;
				border-radius: 10px;
				background-color: #12B8BA;	
				color: white;
			}
			
			/* 진료일정, 위치 table */
			#sub_div table {
		        display: inline-block;
		        vertical-align: top;
		    }
		    #sub_div  table th, td{
		    	font-size: 20px;
		    	padding: 3px 0px;
		    }
		    #sub_div  table th{
		    	width: 130px;
		    }
		    #sub_div  table td{
		    	width: 180px;
		    }
		
		    /* 버튼들을 테이블 오른쪽 끝으로 정렬 */
			
			/* 버튼 컨테이너를 테이블 옆, 오른쪽 아래로 이동 */
			.btn_div {
			    position: absolute;
			    bottom: 10px;
			    right: 10px;
			}
			
			.btn_div input[type="button"] {
			    font-size: 18px;
			    width: 150px;
			    height: 40px;
			    border: none;
			    background-color: #E2E2E2;
			    margin-bottom: 5px;
			}
			
			/* 스크롤바 css */
			#sub_div::-webkit-scrollbar {
				margin-top: 16px;
			    width: 5px;
			}
			#sub_div::-webkit-scrollbar-track { 
			    background-color: white;
			}
			#sub_div::-webkit-scrollbar-thumb { 
			    background-color: #12B8BA;
			}
			#sub_div::-webkit-scrollbar-button {
			    display: none;
			}
			
			/* hover 효과 */
			#sub_div::-webkit-scrollbar-thumb:hover {
			    background-color: #0F9C9B;
			    transition: all 0.2s; /* 작동 안 됨 */
			}
			
			/* 코너에 라운드 효과 */
			#sub_div::-webkit-scrollbar-track,
			#sub_div::-webkit-scrollbar-thumb {
			    border-radius: 5px;
			}
		</style>
	</head>
	<body>
		<jsp:include page="/WEB-INF/views/main/MenuBar_User.jsp"/>
	
		<div id="main_div">
			<a id="reservation_text">예약 내역</a>
			<hr id="hr_main">
			
			<div id="sub_div">
				<!-- 예약내역 출력 -->
				<c:forEach var="vo" items="${ list }" >
					<div class="reser_div">
					    <img class="image" src="/hos/resources/images/${ vo.pro_file }">
					    <div class="dept_name">
					        <a class="dept">${ vo.dept_name }</a>
					        <a class="name">${ vo.pro_name }</a> <a class="engname"></a><br>
					    </div>
					    
					    <table>
					        <tr>
					            <th>진료일정</th>
					            <td>${ vo.res_time }</td>
					        </tr>
					        <tr>
					            <th>위치</th>
					            <td>${ vo.dept_loc }</td>
					        </tr>
				        	<tr>
					            <th>진료비 결제</th>
					            <c:if test="${ vo.pay_chk eq -1}">
						            <td>X</td>
					            </c:if>
					            <c:if test="${ vo.pay_chk ne -1}">
						            <td>O</td>
					            </c:if>
					        </tr>
					    </table>
					    
					    <div class="btn_div">
					        <input type="button" value="예약 취소">
					        <input type="button" value="예약 변경">
					    </div>
					</div>
					<hr>
				</c:forEach>
			</div>
				
		</div>
		
		<jsp:include page="/WEB-INF/views/main/Footer.jsp"/>
	</body>
</html>