<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>온라인 진료비 결제</title>
		
		<style>
			#main_div{
				width: 1000px;
				margin: 10px auto;
			}
			
			/* a태그 - "온라인 진료비 결제" */
			#payment_text{
				display: block;
				margin: 20px 10px;
				font-size: 25px;
			}
			
			/* hr태그 */					
			#main_div hr{
				width: 980px; /* 좌우로 여백 10px */
				margin: 10px auto;
			}	
			/* hr태그 - 온라인진료비결제 아래 위치 */	
			#hr_main{
				border: 0;
				background-color: black;
				height: 3px;
			}
			
			/* 시작일, 종료일 */
			#date_div{	
				position: relative;
			}
			#date_div input[type="date"]{
				height: 20px;
			}
			
			#start_text{
				position: absolute;
				left: 10px;
			}
			#end_text{
				position: absolute;
				left: 150px;
			}
			#start_day{
				position: absolute;
				left: 10px;
				top: 50px;
				width: 120px;
			}
			#end_day{
				position: absolute;
				left: 150px;			
				top: 50px;
				width: 120px;
			}
			/* input[type="button"] - 조회버튼 */
			#date_btn{
				position: absolute;
				left: 290px;
				top: 50px;
				width: 50px;
			}
			
			/* 진료일, 진료과, 진료비 테이블 */			
			#main_div table{
				width: 980px;
				margin: 20px auto 10px;
			}
			/* th태그 */
			#main_div table th{
				font-size: 18px;
				font-weight: bold;
				background-color: #7cc4e8;
				padding: 5px;
				border: 3px solid white;
			}
			#th_none{
				background-color: white;
			}
			/* td태그 */
			#main_div table td{
				font-size: 17px;
				height: 50px;
				border: 3px solid white;
			}
			#main_div input[type="checkbox"]{
				zoom: 1.3;
			}
			
			/* input[type="button"] - 결제진행버튼 */
			#payment_btn{
				font-size: 15px;
				margin: 10px;
				width: 980px;
				height: 50px;		
				border: none;
				background-color: #7cc4e8;		
				color: white;
			}
			
		</style>
		
		<script>
			//조회버튼 클릭
			function set_period() {
			    // 입력받은 시작일과 종료일 가져오기
			    let start_day = document.getElementById("start_day").value;
			    let end_day = document.getElementById("end_day").value;
			
			    //유효성 검사
			    if (!start_day || !end_day) {
			        alert("시작일과 종료일을 모두 입력해주세요.");
			        return;
			    }
			
			    if (start_day > end_day) {
			        alert("종료일은 시작일 이후여야 합니다.");
			        return;
			    }
			
			    let rows = document.querySelectorAll("#payment_list tr");
			    rows.forEach(row => { //테이블 한 행씩 가져오기
			        let res_time = row.querySelector("td:nth-child(2)").innerText.trim();
			
			        let res_date = res_time.split(" ")[0];
			        if (res_date >= start_day && res_date <= end_day) {
			            row.style.display = "";
			        } else {
			            row.style.display = "none";
			        }
			    });
			}

			let total = 0;
			function calc_total(checkbox) {
			    let value = parseInt(checkbox.value, 10);
	
			    if (checkbox.checked) {
			        total += value;
			    } else {
			        total -= value;
			    }
	
			    const paymentBtn = document.getElementById("payment_btn");
			    paymentBtn.value = total + "원 결제진행";
			}
			
			//결제버튼 클릭
			function payment_btn() {
				//결제 예정금액 = total
			}
		</script>
	</head>
	<body>
		<jsp:include page="/WEB-INF/views/main/MenuBar_User.jsp"/>
		
		<div id="main_div">
			<div>
				<a id="payment_text">온라인 진료비 결제</a>
				
				<hr id="hr_main">
				
				<div id="date_div">
					<a id="start_text">시작일</a>
					<a id="end_text">종료일</a>
	
					<br>
					<form>
						<input id="start_day" type="date">
						<input id="end_day" type="date">
						<input id="date_btn" type="button" value="조회" onclick="set_period(this.form);">
					</form>
				</div>
				
				<br>
				<table>
					<tr id="result_div">
						<th id="th_none"></th>
						<th><a class="category">진료일</a></th>
						<th><a class="category">진료과(담당교수)</a></th>
						<th><a class="category">진료비</a></th>
					</tr>
					
					<!-- 지불해야 할 진료비 리스트 -->
					<tbody id="payment_list">
					<c:forEach var="vo" items="${ list }">
						<tr>
							<td><input type="checkbox" id="1" value="${ vo.dept_payment }" onchange="calc_total(this);"></td>
							<td>${ vo.res_time }</td>
							<td><a>${ vo.dept_name } (${ vo.pro_name })</a></td>
							<td><a>${ vo.dept_payment }원</a>
								<span style="display:none;">${vo.dept_payment}</span>
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				
				<input id="payment_btn" type="button" value="0원 결제진행" onclick="payment_btn();">
			</div>
		
		</div>
	</body>
</html>