<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<style>
			/* 큰 틀 */
			#container{ border:1px solid black;
				 	    width:1000px;
				 		margin: 150px auto; 
				 		position:relative; }
			/* 카테고리명 */	 		
			#container > p { font-size: 30px;
						   font-weight: bold;}
			
			/* 제목 */			   
			#title > p { font-size:25px;
						   text-align: center; }
					
			/* 날짜 */			
			#date > p { color:gray;
						margin: 5px;
						text-align:right;  }		
					   
			/* 내용 */
			#content > p {  }
			
			/* 이미지 */
			#img { text-align:center; }
			#img img { width:800px;
					   height:600px; }
					   
			/* 이전글, 다음글 찾기 */
			#pre_next_div { margin:20px 0; }
			
			#pre_next_div table { border-collapse:collapse;
								  width:1000px;
								  height:100px; }
			
			#pre_next_div table tr { border-top:1px solid gray;
									 border-bottom:1px solid gray; }
									 
			#pre_next_div table a { text-decoration:none;
									color:black; }
									 
			
		</style>
	</head>
	
	
	<body>
		<div id="container">
			<p>병원뉴스</p>
			
			<hr>
			
			<div id="title">
				<p>본관 1주차장 운영중단 및 공사 안내</p>
			</div>
			
			<hr>
			
			<div id="date">
				<p>작성일 : 2024-07-12</p>
			</div>
			
			<hr>
			
			<div id="content">
				<p>안녕하세요,<br>
					병원 본관 주차장 (1 주차장) 노후화로 인한 공사에 따라 주차장 운영을 단계적으로 통제하게 되었습니다.<br>
					이용에 불편을 드려 대단히 송구합니다.<br><br>
					
					안전하고 쾌적한 주차 환경 조성을 위해 최선을 다해 진행하도록 하겠습니다.<br>
					환자 및 방문객 여러분의 많은 양해와 협조 부탁드립니다.<br><br>
					
					1. 공사 기간 : 2024.07.11(목) ~ 2026.08.19(수)<br>
					              (*해체공사 : 2024.12.~2026.02. 예정)<br><br>
					
					2. 주차장 전체 폐쇄 일정 : 2024.08.16. ~ 2026.08.19. <br><br>
					
					    *공사 상황에 따라 일정 변동이 생길 수 있습니다.<br><br>
					
					
					 혼잡이 예상되오니 가급적 대중교통을 이용해 주시길 바라며,<br>
					 부득이 차량을 이용하시는 경우 현장 안내에 따라 주차장 이용을 부탁드립니다.<br>
					 * 이용 가능 주차장 : 2주차장, 암병원 3주차장, 옥외주차장, 인술제중관 주차장, CMI주차장
				</p>
			</div>
			
			<div id="img">
				<img src="/hos/resources/images/notice_img.jpg">
			</div>
			
			<div id="pre_next_div">
				<table>
					<tr>
						<th>이전글</th>
						<td><a href="#">2024년 5월 20일부터 신분증 꼭 챙기세요</a></td>
					</tr>
					
					<tr>
						<th>다음글</th>
						<td><a href="#">서울대병원, 디지털 헬스케어 혁신과 정밀의학의 미래를 논하다</a></td>
					</tr>
				</table>
			</div>
			
			
		</div>
		
		
	</body>
</html>