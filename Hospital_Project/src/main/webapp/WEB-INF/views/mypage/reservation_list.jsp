<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>예약 내역</title>
		
		<style>
			#main_div{
				width: 1000px;
				margin: 10px auto;
			}
			
			/* a태그 - "예약내역" */
			#reservation_text{
				display: block;
				margin: 20px 10px;
				font-size: 25px;
			}
	
			/* hr태그 */					
			hr{
				width: 980px; /* 좌우로 여백 10px */
				margin: 10px auto;
			}	
			/* hr태그 - 예약내역 아래 위치 */	
			#hr_main{
				border: 0;
				background-color: black;
				height: 3px;
			}				
	
			/* 교수이미지 */
			.image{
				float: left;
				margin: 10px;
				margin-right: 20px;
				width: 120px;
				height: 160px;
			}
			
		   	/* 예약내역 div */
			.reser_div {
			    position: relative;
			    overflow: hidden;
			    margin: 10px 10px;
			}
			
			/* 진료과 + 교수명 div */
			.dept_name{
				margin: 20px 0px;
			}
			.dept_name a{
				font-size: 23px;
			}
		
			/* 진료과 */
			.dept{
				font-weight: bold;
				padding: 8px;
				border-radius: 15px;
				background-color: #7cc4e8;	
			}
			
			/* 신청일, 진료일정, 위치 table */
			table {
		        display: inline-block;
		        vertical-align: top;
		    }
		    table th, td{
		    	font-size: 20px;
		    }
		    table th{
		    	width: 130px;
		    }
		    table td{
		    	width: 170px;
		    }
		
		    /* 버튼들을 테이블 오른쪽 끝으로 정렬 */
			
			/* 버튼 컨테이너를 테이블 옆, 오른쪽 아래로 이동 */
			.btn_div {
			    position: absolute;
			    bottom: 10px;
			    right: 10px;
			}
			
			input[type="button"] {
			    font-size: 23px;
			    width: 150px;
			    height: 50px;
			    border: none;
			    background-color: #7cc4e8;
			    margin-bottom: 5px;
			}

		</style>
	</head>
	<body>
		<div id="main_div">
			<div id="list_main">
				<a id="reservation_text">예약 내역</a>
				
				<hr id="hr_main">
				
				<div class="reser_div">
				    <img class="image" src="/hos/resources/images/prof_image.png">
				    <div class="dept_name">
				        <a class="dept">순환기내과</a>
				        <a class="name">김용진</a> <a class="engname">( Kim, Yong Jin )</a><br>
				    </div>
				    
				    <table>
				        <tr>
				            <th>신청일</th>
				            <td>2024-11-10</td>
				        </tr>
				        <tr>
				            <th>진료일정</th>
				            <td>2024-12-28 14:00</td>
				        </tr>
				        <tr>
				            <th>위치</th>
				            <td>본원 2층</td>
				        </tr>
				    </table>
				    
				    <div class="btn_div">
				        <input type="button" value="예약 취소">
				        <input type="button" value="예약 변경">
				    </div>
				</div>
				
				<hr>
				
				<div class="reser_div">
					<img class="image" src="/hos/resources/images/prof_image.png">
				
					<div class="dept_name">
						<a class="dept">이비인후과</a>
						<a class="name">김도영</a> <a class="engname">( Kim, Do Young )</a><br>
					</div>
					
					<table>
						<tr>
							<th>신청일</th>
							<td>2024-10-21</td>
						</tr>
						<tr>
							<th>진료일정</th>
							<td>2024-01-14 12:00</td>
						</tr>
						<tr>
							<th>위치</th>
							<td>본원 B1층</td>
						</tr>
					</table>
					
					<div class="btn_div">
						<input type="button" value="예약 취소">
						<input type="button" value="예약 변경">
					</div>
				</div>
			</div>	
		</div>
	</body>
</html>