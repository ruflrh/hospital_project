<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<style>
			*{margin: 0; padding: 0;}
		
			#banner_insert_table{
				position: absolute; /* 절대 위치 */
		        top: 50%; /* 화면의 50% 높이 */
		        left: 50%; /* 화면의 50% 너비 */
		        transform: translate(-50%, -50%); /* 중앙 정렬 */
		        border-collapse: collapse; /* 테이블 테두리 간격 제거 */
		        background: white; /* 테이블 배경색 */
			}
			
			th, td {
		        padding: 10px; /* 셀 안쪽 여백 */
		    }
			
			input[type="button"] {
		        margin: 5px; /* 버튼 간격 */
		        padding: 10px 20px; /* 버튼 크기 */
		        cursor: pointer;
		        border: 1px solid #ddd;
		        background-color: #fff;
		        transition: background-color 0.3s;
		    }
		
		    input[type="button"]:hover {
		        color: red; /* 버튼 호버 색상 */
		    }
		    
		    #name_input{
		    	border: none;
		    	outline: none;	
		    }
		</style>
		
		<script>
			function send(f) {
				if(f.banner_name.value === ''){
					alert("배너 이름을 입력하세요");
					return;
				}
				if(f.photo.value === ''){
					alert("사진을 선택하세요");
					return;
				}
				
				f.action = "insert_banner.do?pat_idx=${param.pat_idx}";
				f.submit();
			}
		</script>
		
	</head>
	<body>
		<!-- 메뉴바: 관리자만 들어올 수 있는 페이지이므로 if로 관리자 확인X -->
		<jsp:include page="/WEB-INF/views/main/MenuBar_Master.jsp"/>
		        
		<form method="post" enctype="multipart/form-data">
			<table border="1" id="banner_insert_table">
				<tr>
					<th>배너이름</th>
					<td>
						<input placeholder="배너 이름을 입력하세요." name="banner_name" id="name_input">
					</td>
				</tr>
				<tr>
					<th>배너사진</th>
					<td>
						<input type="file" name="photo">
					</td>
				</tr>
				<tr>
					<td colspan="2" align="right">
						<input type="button" value="배너 추가" onclick="send(this.form);">
						<input type="button" value="취소" onclick="history.back();">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>





