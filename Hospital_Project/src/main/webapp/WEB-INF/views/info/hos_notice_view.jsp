<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<style>
			/* 큰 틀 */
			#container{ width:1000px;
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
			#content > pre { font-size:18px; }
			
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
		<jsp:include page="/WEB-INF/views/main/MenuBar_User.jsp"/>
	
		<div id="container">
			<p>병원뉴스</p>
			
			<hr>
			
			<div id="title">
				<p>${vo.not_title}</p>
			</div>
			
			<hr>
			
			<div id="date">
				<p>작성일 : ${fn:split(vo.not_date, ' ')[0] }</p>
			</div>
			
			<hr>
			
			<div id="content">
				<pre>${vo.not_content}</pre>
			</div>
			
			<div id="img">
				<!-- 경로 설정 해야됨 -->
				<img src="/hos/resources/images/${vo.not_file}">
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