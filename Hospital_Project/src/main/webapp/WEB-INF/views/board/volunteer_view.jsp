<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>자원봉사 상세보기</title>
		
		<style>
			#main_div{
				width: 1000px;
				margin: 0px auto;
			}
			
			#title, #period, #hit_and_regdate{
				text-align: center;
				margin: 20px;
			}
			
			/* 파일첨부 div */
			#file{
				position: relative;
				width: 1000px;
				height: 50px;
				margin: 20px auto;
				background-color: lightgray;
			}
			#file a{
				position: absolute;
				top: 13px;
				left: 10px;
				color: #3232FF;
			}
			
			/* 댓글입력 div */
			#comment_input{
				position: relative;
				height: 150px;
			}
			#comment_input img{
				width: 40px;
				height: 40px;
				margin: 0px;
			}
			#comment_input a{
				position: absolute;
				left: 60px;
				top: 15px;
			}
			#comment_input textarea{
				position: absolute;
				left: 5px;
				width: 990px;
				resize: none;
				border: none;	
			}
			
			/* 댓글조회 div */
			.comment_list{
				position: relative;
				height: 150px;
			}
			.comment_list img{
				width: 40px;
				height: 40px;
				margin: 0px;
			}
			.comment_list a{
				position: absolute;
				left: 60px;
				top: 15px;
			}
			.comment_list p{
				margin: 5px;
			}
			.comment_list hr{
				margin-top: 20px;
			}
			
			/* 이전글 & 다음글 */
		</style>
	</head>
	<body>
		<div id="main_div">
			<hr>
			<div id="title">
				<a>[2024년 1학기 모집중]</a><br>
				<a>봉사 가능한 학생은 방문접수 바랍니다.</a>
			</div>
	
			<div id="period">
				<a>2024-02-01 ~ 2024-02-29</a>
			</div>
			
			<div id="hit_and_regdate">
				<a>조회수 : 3345 | 등록일 : 2024-02-19</a>
			</div>
			<hr>
			
			<div id="contents">
				<p>
					2024년 1학기 봉사 가능하신 분은 의료사회복치팀(의생명연구원 1층)으로 신청서 및 동의서(첨부파일) 작성해서 방문 접수 바랍니다.
					*주 2회 이상 봉사가능한 학생은 방문접수 시 담당자에게 말씀해주세요.
				</p>
			</div>
			
			<!-- 첨부파일 div -->
			<div id="file">
				<a>파일첨부</a>
			</div>
			
			<!------------------------------------------------------------------->
			
			<!-- 댓글입력 div -->
			<div id="comment_input">
				<img id="profile" src="/hos/resources/img/profile.png">
				<a>김태희</a><br>
				<textarea rows="5" placeholder="댓글을 입력하세요"></textarea>
			</div>
			<hr>
			
			<!-- 댓글조회 div -->
			<div class="comment_list">
				<img src="/hos/resources/img/profile.png">
				<a>김태희 | 2024.12.11</a><br>			
				<p>신청합니다.</p>
				<hr>
			</div>
		</div>
	</body>
</html>