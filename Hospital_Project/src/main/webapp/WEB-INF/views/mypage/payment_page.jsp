<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>온라인 진료비 결제</title>
		
		<style>
			#main_div{
				border: 1px solid black;
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
			hr{
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
			input[type="date"]{
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
				top: 25px;
				width: 120px;
			}
			#end_day{
				position: absolute;
				left: 150px;			
				top: 25px;
				width: 120px;
			}
			/* input[type="button"] - 조회버튼 */
			#date_btn{
				position: absolute;
				left: 290px;
				top: 25px;
				width: 50px;
			}
			
			/* 진료일, 진료과, 진료비 테이블 */			
			table{
				width: 980px;
				margin: 20px auto 10px;
			}
			/* th태그 */
			table th{
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
			table td{
				font-size: 17px;
				height: 50px;
				border: 3px solid white;
			}
			input[type="checkbox"]{
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
	</head>
	<body>
		<div id="main_div">
			<div>
				<a id="payment_text">온라인 진료비 결제</a>
				
				<hr id="hr_main">
				
				<div id="date_div">
					<a id="start_text">시작일</a>
					<a id="end_text">종료일</a>
	
					<br>
					<input id="start_day" type="date">
					<input id="end_day" type="date">
					<input id="date_btn" type="button" value="조회">
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
					<div id="payment_list">
					<tr>
						<td><input type="checkbox" id="1"></td>
						<td>2024-01-24</td>
						<td><a>이비인후과 (김태희)</a></td>
						<td><a>23,500원</a></td>
					</tr>
					
					<tr>
						<td><input type="checkbox" id="2"></td>
						<td>2024-03-30</td>
						<td><a>일반외과 (김태윤)</a></td>
						<td><a>25,500원</a></td>
					</tr>
					
					<tr>
						<td><input type="checkbox" id="3"></td>
						<td>2024-11-20</td>
						<td><a>흉부외과 (한준희)</a></td>
						<td><a>55,400원</a></td>
					</tr>
					</div>
				</table>
				
				<input id="payment_btn" type="button" value="78,900원 결제진행">
			</div>
		
		</div>
	</body>
</html>