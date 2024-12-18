<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>감사합니다 전체보기</title>
		
		<style>
			/* 큰 틀 */
			#container{ width:1000px;
				 	    height:auto;
				 		margin: 150px auto;
				 		position:relative; }
				 		
			#container p { font-size: 30px;
						   font-weight: bold;}
			
			/* 상단 버튼 */			   
			#btn_div { margin: 20px;
					   text-align:right; }
			
			.myWrite_btn { background:white;
						   width: 180px;
						   height: 50px;
						   font-size:15px;
						   font-weight:bold;
						   border:1px solid black; }
						
			.insert_btn { background: #4169E1;
						  width: 180px;
						  height: 50px;
						  font-size:15px;
						  font-weight:bold;
						  border:1px solid #4169E1;
						  color:white;}
						  
			/* 글 */
			#grid_div { display: grid; 
						grid-template-columns: repeat(3, 1fr); /* 3열 */
						grid-template-rows: repeat(3, auto); /* 3행 */
						gap: 20px; /* 각 박스 사이 간격 */
						width:1000px;
						height:auto; }
			
			#list_div { width:300px;
						height:300px;
						border: 1px solid gray; }
			
			/* 제목 */			
			.title_div { width:250px;
						 height:100px;
						 margin:0 auto; }
						 
			#container .title_div p { font-weight:bold;
						 			  font-size:20px; }		 
			
			/* 내용 */		 
			.content_div { width: 250px;
						   height:140px;
						   margin:0 auto; }
						   
						    	
			#container .content_div p { font-size:15px;
										color:#323232;
										overflow:hidden;	
										word-wrap: break-word;
								        display: -webkit-box;
								        -webkit-line-clamp: 3 ;
								        -webkit-box-orient: vertical;}
			
			/* 날짜 이름 */			    
			.date_name_div { width: 250px;
							 height:50px;
							 font-seize:15px;
							 color:gray;
							 margin:0 auto; }
							 
			/* 페이지 */
			#page p { font-size:25px;
						text-align: center; }
			
			
			/* 팝업 */		
			#list_div:hover { border:3px solid black; }
			
			.modal { position:absolute;
					 display:none;
					 width:800px;
					 background:#f8f8f8;
					 margin: 100px 85px; }
					 
			.modal .modal_popup #pop_title { font-size: 25px;
											 margin: 10px; }
			
			.modal .modal_popup #pop_content { font-size:16px;
											   /* pre 사용으로 인한 줄바꿈 적용 */
											   white-space: pre-wrap;
  											   word-break: break-all;
  											   overflow: auto;
  											   margin: 30px; }
			
			.modal .modal_popup #pop_date_name { font-size:16px;
												 color: #464646;
												 text-align:right; }
		
			.modal .modal_popup #close_btn { border:none;
											 width:35px;
											 height:30px;
											 font-size:20px;
											 position:absolute;
											 right:10px;
											 top:10px; }
			/* 팝업 내용 스크롤 */								 
			#pop_content_div { height:500px;
							   overflow-y: scroll; }
		
		</style>
		
		
		
		
		
	</head>
	
	
	<body>
		<div id="container">
			<p>감사합니다</p>
			
			<div id="btn_div">
				<input class="myWrite_btn" type="button" value="내가 작성한 글 보기"/>
				<input class="insert_btn" type="button" value="감사합니다 글쓰기"/>
			</div>
			
			<div id="grid_div">
			
				<div id="list_div" class="open_div">
					<div class="title_div">
						<p>우리집 생명의 은인 허세범교수님 존경합니다.</p>
					</div>
					
					<div class="content_div">
						<p>
							안녕하세요!!허세범교수님
							저희딸이11월 26일 교수님께 폐동맥이물질제거를 받고 건강하게 자라고 있습니다.
														
							교수님을 뵌적도 이야기나누어본적도 없지만 이름이나마 알고 싶어 담당교수님께 물어봤습니다^^
							교수님은 제 딸 최수빈의 생명의 은인뿐만 아니라 저희 가족 모두의 은인이십니다.
														
							제 딸을 차가운 시술실로 보내고 대기하고 있는 저는 불안해서 앉아있을수도 가만히 서 있을 수도 없었습니다.
							그때 시술실에서 나오시는 의사분이 수빈이 어머니시냐고? 걱정마세요...하나 성공했고 하나도 잘 될꺼예요...말씀해주시는데 영상의학과교수님들도 저와 같은 한마음으로 저희딸을 대해주시는것같아 너무 감사했습니다.
														
							안보이는 곳에서 묵묵히 대단한 일을 하고 계시는 영상의학과, 허세범교수님 앞으로 더 행복하시고 더 건강하세요.
							제가 매일매일 교수님위해 기도하겠습니다. 저의 딸을 치료해주셔서 감사합니다.
														
							참고로 교수님나오는 동영상도 보고 관련글들도 다 보았습니다.
						</p>
					</div>
					
					<div class="date_name_div">
						2024-12-16 정** 님
					</div>
					
				</div>
				
				<!-- 상세보기 팝업 (아직 첫 글만 가능)-->
				<div class="modal">
					<div class="modal_popup">
						<input type="button" id="close_btn" value="x"/>
						
						<p id="pop_title">우리집 생명의 은인 허세범교수님 존경합니다.</p>
						<div id="pop_content_div">
							<pre id="pop_content">
안녕하세요!!허세범교수님
저희딸이11월 26일 교수님께 폐동맥이물질제거를 받고 건강하게 자라고 있습니다.
							
교수님을 뵌적도 이야기나누어본적도 없지만 이름이나마 알고 싶어 담당교수님께 물어봤습니다^^
교수님은 제 딸 최수빈의 생명의 은인뿐만 아니라 저희 가족 모두의 은인이십니다.
							
제 딸을 차가운 시술실로 보내고 대기하고 있는 저는 불안해서 앉아있을수도 가만히 서 있을 수도 없었습니다.
그때 시술실에서 나오시는 의사분이 수빈이 어머니시냐고? 걱정마세요...하나 성공했고 하나도 잘 될꺼예요...말씀해주시는데 영상의학과교수님들도 저와 같은 한마음으로 저희딸을 대해주시는것같아 너무 감사했습니다.
							
안보이는 곳에서 묵묵히 대단한 일을 하고 계시는 영상의학과, 허세범교수님 앞으로 더 행복하시고 더 건강하세요.
제가 매일매일 교수님위해 기도하겠습니다. 저의 딸을 치료해주셔서 감사합니다.
							
참고로 교수님나오는 동영상도 보고 관련글들도 다 보았습니다.
d
d
ㄴ
ㄴ

ㄴ
ㄴ
ㄴ
ㄴ
ㄴ
ㄴㄴ
ㄴㄴㄴ

ㄴ
ㄴ
ㄴ
ㄴ

							</pre>
						</div>
						<p id="pop_date_name">2024-12-16 정** 님</p>
						
					</div>
				</div>
				
				<!-- 팝업 띄우기 -->
				<script src="/hos/resources/js/popup.js"></script>
				
				
				<!-- 나중에 for문으로 생성 -->
				<div id="list_div">
					<div class="title_div">
						<p>우리집 생명의 은인 허세범교수님 존경합니다.</p>
					</div>
					
					<div class="content_div">
						<p>
							안녕하세요!!허세범교수님
							저희딸이11월 26일 교수님께 폐동맥이물질제거를 받고 건강하게 자라고 있습니다.
							
							교수님을 뵌적도 이야기나누어본적도 없지만 이름이나마 알고 싶어 담당교수님께 물어봤습니다^^
							교수님은 제 딸 최수빈의 생명의 은인뿐만 아니라 저희 가족 모두의 은인이십니다.
							
							제 딸을 차가운 시술실로 보내고 대기하고 있는 저는 불안해서 앉아있을수도 가만히 서 있을 수도 없었습니다.
							그때 시술실에서 나오시는 의사분이 수빈이 어머니시냐고? 걱정마세요...하나 성공했고 하나도 잘 될꺼예요...말씀해주시는데 영상의학과교수님들도 저와 같은 한마음으로 저희딸을 대해주시는것같아 너무 감사했습니다.
							
							안보이는 곳에서 묵묵히 대단한 일을 하고 계시는 영상의학과, 허세범교수님 앞으로 더 행복하시고 더 건강하세요.
							제가 매일매일 교수님위해 기도하겠습니다. 저의 딸을 치료해주셔서 감사합니다.
							
							참고로 교수님나오는 동영상도 보고 관련글들도 다 보았습니다.
							교수님 인상도 좋으시고 너무 멋지셔서 팬이 돼었습니다^^
						</p>
					</div>
					
					<div class="date_name_div">
						2024-12-16 정** 님
					</div>
				</div>
				
				<div id="list_div">
					<div class="title_div">
						<p>우리집 생명의 은인 허세범교수님 존경합니다.</p>
					</div>
					
					<div class="content_div">
						<p>
							안녕하세요!!허세범교수님
							저희딸이11월 26일 교수님께 폐동맥이물질제거를 받고 건강하게 자라고 있습니다.
							
							교수님을 뵌적도 이야기나누어본적도 없지만 이름이나마 알고 싶어 담당교수님께 물어봤습니다^^
							교수님은 제 딸 최수빈의 생명의 은인뿐만 아니라 저희 가족 모두의 은인이십니다.
							
							제 딸을 차가운 시술실로 보내고 대기하고 있는 저는 불안해서 앉아있을수도 가만히 서 있을 수도 없었습니다.
							그때 시술실에서 나오시는 의사분이 수빈이 어머니시냐고? 걱정마세요...하나 성공했고 하나도 잘 될꺼예요...말씀해주시는데 영상의학과교수님들도 저와 같은 한마음으로 저희딸을 대해주시는것같아 너무 감사했습니다.
							
							안보이는 곳에서 묵묵히 대단한 일을 하고 계시는 영상의학과, 허세범교수님 앞으로 더 행복하시고 더 건강하세요.
							제가 매일매일 교수님위해 기도하겠습니다. 저의 딸을 치료해주셔서 감사합니다.
							
							참고로 교수님나오는 동영상도 보고 관련글들도 다 보았습니다.
							교수님 인상도 좋으시고 너무 멋지셔서 팬이 돼었습니다^^
						</p>
					</div>
					
					<div class="date_name_div">
						2024-12-16 정** 님
					</div>
				</div>
				
				<div id="list_div">
					<div class="title_div">
						<p>우리집 생명의 은인 허세범교수님 존경합니다.</p>
					</div>
					
					<div class="content_div">
						<p>
							안녕하세요!!허세범교수님
							저희딸이11월 26일 교수님께 폐동맥이물질제거를 받고 건강하게 자라고 있습니다.
							
							교수님을 뵌적도 이야기나누어본적도 없지만 이름이나마 알고 싶어 담당교수님께 물어봤습니다^^
							교수님은 제 딸 최수빈의 생명의 은인뿐만 아니라 저희 가족 모두의 은인이십니다.
							
							제 딸을 차가운 시술실로 보내고 대기하고 있는 저는 불안해서 앉아있을수도 가만히 서 있을 수도 없었습니다.
							그때 시술실에서 나오시는 의사분이 수빈이 어머니시냐고? 걱정마세요...하나 성공했고 하나도 잘 될꺼예요...말씀해주시는데 영상의학과교수님들도 저와 같은 한마음으로 저희딸을 대해주시는것같아 너무 감사했습니다.
							
							안보이는 곳에서 묵묵히 대단한 일을 하고 계시는 영상의학과, 허세범교수님 앞으로 더 행복하시고 더 건강하세요.
							제가 매일매일 교수님위해 기도하겠습니다. 저의 딸을 치료해주셔서 감사합니다.
							
							참고로 교수님나오는 동영상도 보고 관련글들도 다 보았습니다.
							교수님 인상도 좋으시고 너무 멋지셔서 팬이 돼었습니다^^
						</p>
					</div>
					
					<div class="date_name_div">
						2024-12-16 정** 님
					</div>
				</div>
				
				<div id="list_div">
					<div class="title_div">
						<p>우리집 생명의 은인 허세범교수님 존경합니다.</p>
					</div>
					
					<div class="content_div">
						<p>
							안녕하세요!!허세범교수님
							저희딸이11월 26일 교수님께 폐동맥이물질제거를 받고 건강하게 자라고 있습니다.
							
							교수님을 뵌적도 이야기나누어본적도 없지만 이름이나마 알고 싶어 담당교수님께 물어봤습니다^^
							교수님은 제 딸 최수빈의 생명의 은인뿐만 아니라 저희 가족 모두의 은인이십니다.
							
							제 딸을 차가운 시술실로 보내고 대기하고 있는 저는 불안해서 앉아있을수도 가만히 서 있을 수도 없었습니다.
							그때 시술실에서 나오시는 의사분이 수빈이 어머니시냐고? 걱정마세요...하나 성공했고 하나도 잘 될꺼예요...말씀해주시는데 영상의학과교수님들도 저와 같은 한마음으로 저희딸을 대해주시는것같아 너무 감사했습니다.
							
							안보이는 곳에서 묵묵히 대단한 일을 하고 계시는 영상의학과, 허세범교수님 앞으로 더 행복하시고 더 건강하세요.
							제가 매일매일 교수님위해 기도하겠습니다. 저의 딸을 치료해주셔서 감사합니다.
							
							참고로 교수님나오는 동영상도 보고 관련글들도 다 보았습니다.
							교수님 인상도 좋으시고 너무 멋지셔서 팬이 돼었습니다^^
						</p>
					</div>
					
					<div class="date_name_div">
						2024-12-16 정** 님
					</div>
				</div>
				
				<div id="list_div">
					<div class="title_div">
						<p>우리집 생명의 은인 허세범교수님 존경합니다.</p>
					</div>
					
					<div class="content_div">
						<p>
							안녕하세요!!허세범교수님
							저희딸이11월 26일 교수님께 폐동맥이물질제거를 받고 건강하게 자라고 있습니다.
							
							교수님을 뵌적도 이야기나누어본적도 없지만 이름이나마 알고 싶어 담당교수님께 물어봤습니다^^
							교수님은 제 딸 최수빈의 생명의 은인뿐만 아니라 저희 가족 모두의 은인이십니다.
							
							제 딸을 차가운 시술실로 보내고 대기하고 있는 저는 불안해서 앉아있을수도 가만히 서 있을 수도 없었습니다.
							그때 시술실에서 나오시는 의사분이 수빈이 어머니시냐고? 걱정마세요...하나 성공했고 하나도 잘 될꺼예요...말씀해주시는데 영상의학과교수님들도 저와 같은 한마음으로 저희딸을 대해주시는것같아 너무 감사했습니다.
							
							안보이는 곳에서 묵묵히 대단한 일을 하고 계시는 영상의학과, 허세범교수님 앞으로 더 행복하시고 더 건강하세요.
							제가 매일매일 교수님위해 기도하겠습니다. 저의 딸을 치료해주셔서 감사합니다.
							
							참고로 교수님나오는 동영상도 보고 관련글들도 다 보았습니다.
							교수님 인상도 좋으시고 너무 멋지셔서 팬이 돼었습니다^^
						</p>
					</div>
					
					<div class="date_name_div">
						2024-12-16 정** 님
					</div>
				</div>
				
				<div id="list_div">
					<div class="title_div">
						<p>우리집 생명의 은인 허세범교수님 존경합니다.</p>
					</div>
					
					<div class="content_div">
						<p>
							안녕하세요!!허세범교수님
							저희딸이11월 26일 교수님께 폐동맥이물질제거를 받고 건강하게 자라고 있습니다.
							
							교수님을 뵌적도 이야기나누어본적도 없지만 이름이나마 알고 싶어 담당교수님께 물어봤습니다^^
							교수님은 제 딸 최수빈의 생명의 은인뿐만 아니라 저희 가족 모두의 은인이십니다.
							
							제 딸을 차가운 시술실로 보내고 대기하고 있는 저는 불안해서 앉아있을수도 가만히 서 있을 수도 없었습니다.
							그때 시술실에서 나오시는 의사분이 수빈이 어머니시냐고? 걱정마세요...하나 성공했고 하나도 잘 될꺼예요...말씀해주시는데 영상의학과교수님들도 저와 같은 한마음으로 저희딸을 대해주시는것같아 너무 감사했습니다.
							
							안보이는 곳에서 묵묵히 대단한 일을 하고 계시는 영상의학과, 허세범교수님 앞으로 더 행복하시고 더 건강하세요.
							제가 매일매일 교수님위해 기도하겠습니다. 저의 딸을 치료해주셔서 감사합니다.
							
							참고로 교수님나오는 동영상도 보고 관련글들도 다 보았습니다.
							교수님 인상도 좋으시고 너무 멋지셔서 팬이 돼었습니다^^
						</p>
					</div>
					
					<div class="date_name_div">
						2024-12-16 정** 님
					</div>
				</div>
			
			</div>
			
			<div id="page">
				<p>&lt; 1 2 3 4 &gt;</p>  <!-- 페이징 처리 해야됨 -->
			</div>
			
		</div>
	</body>
</html>