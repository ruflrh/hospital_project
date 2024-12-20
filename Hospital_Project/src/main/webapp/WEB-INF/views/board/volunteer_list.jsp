<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>공지사항</title>
		
		<style>
			/* 큰 틀 */
			#container{ width:1000px;
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
			#notice_div img { width: 20px;
						 	  height: 25px;}
						 	  
			#notice_div table { border-collapse:collapse;
								width:1000px;
								height:350px;
								position:absolute;
								top: 150px;
								text-align:center;
								table-layout:fixed; }
								/* table-layout:fixed; */
								
			#notice_div table tr:first-child { border-bottom: 1px solid black; }
			#notice_div table tr:last-child { border-bottom: 1px solid black; }
								
			#notice_div table th { border-top: 2px solid black; }
								   
			#notice_div table td { border-bottom: 1px solid gray; }
			
			/* 제목 a태그 */	
			#notice_div table a { text-decoration: none;
								  color:black;
								   }
			/* 제목 td */					   
			#notice_div table tr #title_td { padding:10px;
											 overflow: hidden;
  											 text-overflow: ellipsis;
 											 white-space: nowrap; }	
								   
			/* 페이지 */
			#page { position:absolute;
					bottom: 10px;
					left:430px;
					font-size:20px; }						   
			
		</style>
	</head>
	
	<body>
		<div id="container">
		
			<p>자원봉사 모집공지</p>
		
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
					
					<colgroup>
						<col width="5%"/>
						<col width="50%"/>
						<col width="25%"/>
						<col width="20%"/>
						<col width="10%"/>
					</colgroup>
					
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성일</th>
						<th>조회수</th>
						<th>파일</th>
					</tr>
					
					<tr>
						<td>1</td>
						<td id="title_td">
							<a href="#">[2024년 2학기 추가 모집] 월오전, 월오후, 화오전, 화오후, 수오전, 수오후, 목오전, 목오후, 금오전 결원 발생하였습니다.</a>
						</td>
						<td>2024-07-12</td>
						<td>2551</td>
						<td><img src="/hos/resources/img/file.png"></td>
					</tr>
					
					<tr>
						<td>1</td>
						<td id="title_td">
							<a href="#">[2024년 2학기 추가 모집] 월오전, 월오후, 화오전, 화오후, 수오전, 수오후, 목오전, 목오후, 금오전 결원 발생하였습니다.</a>
						</td>
						<td>2024-07-12</td>
						<td>2551</td>
						<td><img src="/hos/resources/img/file.png"></td>
					</tr>
					
					<tr>
						<td>1</td>
						<td id="title_td">
							<a href="#">[2024년 2학기 추가 모집] 월오전, 월오후, 화오전, 화오후, 수오전, 수오후, 목오전, 목오후, 금오전 결원 발생하였습니다.</a>
						</td>
						<td>2024-07-12</td>
						<td>2551</td>
						<td><img src="/hos/resources/img/file.png"></td>
					</tr>
					
					<tr>
						<td>1</td>
						<td id="title_td">
							<a href="#">[2024년 2학기 추가 모집] 월오전, 월오후, 화오전, 화오후, 수오전, 수오후, 목오전, 목오후, 금오전 결원 발생하였습니다.</a>
						</td>
						<td>2024-07-12</td>
						<td>2551</td>
						<td><img src="/hos/resources/img/file.png"></td>
					</tr>
					
					<tr>
						<td>1</td>
						<td id="title_td">
							<a href="#">[2024년 2학기 추가 모집] 월오전, 월오후, 화오전, 화오후, 수오전, 수오후, 목오전, 목오후, 금오전 결원 발생하였습니다.</a>
						</td>
						<td>2024-07-12</td>
						<td>2551</td>
						<td><img src="/hos/resources/img/file.png"></td>
					</tr>
					
					<tr>
						<td>1</td>
						<td id="title_td">
							<a href="#">[2024년 2학기 추가 모집] 월오전, 월오후, 화오전, 화오후, 수오전, 수오후, 목오전, 목오후, 금오전 결원 발생하였습니다.</a>
						</td>
						<td>2024-07-12</td>
						<td>2551</td>
						<td><img src="/hos/resources/img/file.png"></td>
					</tr>
				</table>
			</div>
			
			<div id="page">
				&lt; 1 2 3 4 &gt;  <!-- 페이징 처리 해야됨 -->
			</div>
		</div>
	</body>
</html>