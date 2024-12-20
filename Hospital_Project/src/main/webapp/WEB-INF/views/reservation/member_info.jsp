<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


	<title></title>
		<style>
			#pat_info{ margin-left: 40px; margin-top: 100px;  display: inline-block;}
			#step1_include{margin-left: 500px; margin-top: 100px; display: inline-block; /* 인라인 블록으로 설정 */vertical-align: top; /* 상단 정렬 */}
			#reservation_include{margin-left: 500px; margin-top: 100px; display: inline-block; /* 인라인 블록으로 설정 */vertical-align: top; /* 상단 정렬 */}
		</style>
	
	</head>
	<body>
		<div id="pat_info" class="hidden">
			<form>
			   	<table>
			   		<caption>회원정보</caption>
			   		<tr>
			   			<th>(회원이름) 님</th>
			   		</tr>
			   		<tr>
			   			<td><input type="button" value="로그아웃" onclick=""></td>
			   		</tr>
			   		<tr>
			   			<td><input type="button" value="뒤로가기" onclick="history.back();"></td>
			   		</tr>
			   		<tr>
			   			<td><input type="button" value="예약현황 조회" onclick=""></td>
			   		</tr>
			   		<tr>
			   			<td><input type="button" value="진료이력 확인" onclick=""></td>
			   		</tr>
			   	</table>
			</form>
			<h3>진료 예약</h3>
            <h1>1544-9970</h1>
			
		</div>
		<div id="step1_include">
			<jsp:include page="step1.jsp"></jsp:include>
			
		</div>
		<div id="reservation">
			<jsp:include page="reservation.jsp"></jsp:include>
			
		</div>
	</body>
</html>