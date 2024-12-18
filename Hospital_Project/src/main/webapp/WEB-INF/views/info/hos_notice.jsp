<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>공지사항</title>
		
		<style>
			/* 큰 틀 */
			#container{ border:1px solid black;
				 	    width:1000px;
				 	    height:800px;
				 		margin: 150px auto; 
				 		position:relative; }
				 		
			#container p { font-size: 30px;
						   font-weight: bold;}
				 		
			/* select, 검색어, 검색 버튼 묶은 것*/
			#search_div { position:absolute;
						  right:1px;}
						  
			/* 검색 */
			#search { height:30px; }
			
			#search_text { height:25px; }  
			
			#search_btn { height:30px; }
			
			/* 공지사항 */
			#notice_div img { width: 25px;
						 	  height: 25px;}
						 	  
			#notice_div table { border-collapse:collapse;
								width:1000px;
								height:200px;
								position:absolute;
								top: 150px;
								text-align:center; }
								
			#notice_div table th { border-top: 2px solid black;
								   border-bottom: 2px solid black; }
								   
			#notice_div table td { border-bottom: 1px solid black; }
								   
			/* 페이지 */
			#page { position:absolute;
					bottom: 10px;
					left:430px;
					font-size:20px; }						   
			
		</style>
	</head>
	
	<body>
		<div id="container">
		
			<p>공지사항</p>
		
			<div id="search_div">			
				<select id="search">
					<option value="all">::: 전체보기 :::</option>
					<option value="subject">제목</option>
					<option value="content">내용</option>
					<option value="name_subject_content">제목+내용</option>
				</select>
						
				<input id="search_text">
				<input id="search_btn" type="button" value="검색" onclick="search();">
			</div>
			
			<div id="notice_div">
				<table>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성일</th>
						<th>조회수</th>
						<th>파일</th>
					</tr>
					
					<tr>
						<td>1</td>
						<td><a href="#">본관 1주차장 운영중단 및 공사 안내</a></td>
						<td>2024-07-12</td>
						<td>2551</td>
						<td><img src="/hos/resources/images/file.png"></td>
					</tr>
					
					<tr>
						<td>2</td>
						<td><a href="#">본관 1주차장 운영중단 및 공사 안내</a></td>
						<td>2024-07-12</td>
						<td>2551</td>
						<td><img src="/hos/resources/images/file.png"></td>
					</tr>
					
					<tr>
						<td>3</td>
						<td><a href="#">본관 1주차장 운영중단 및 공사 안내</a></td>
						<td>2024-07-12</td>
						<td>2551</td>
						<td><img src="/hos/resources/images/file.png"></td>
					</tr>
					
					<tr>
						<td>4</td>
						<td><a href="#">본관 1주차장 운영중단 및 공사 안내</a></td>
						<td>2024-07-12</td>
						<td>2551</td>
						<td><img src="/hos/resources/images/file.png"></td>
					</tr>
				</table>
			</div>
			
			<div id="page">
				&lt; 1 2 3 4 &gt;  <!-- 페이징 처리 해야됨 -->
			</div>
		</div>
	</body>
</html>