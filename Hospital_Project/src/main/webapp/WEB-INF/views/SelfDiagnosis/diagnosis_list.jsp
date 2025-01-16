<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <title>Insert title here</title> -->
<title>질병 목록</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
	display: flex;
	flex-direction: column;
	align-items: flex-start;
	/* padding: 20px; */   /* 여백 제거 */
}

.title {
	font-size: 24px;
	font-weight: bold;
	margin-bottom: 20px;
	margin-left: 20px; /* 왼쪽 여백 추가 */
}

.diagnosis-box {
	width: 1200px;
	height: 550px;
	background-color: white;
	border: 1px solid #ccc;
	border-radius: 5px;
	padding: 10px;
	/* overflow-y: auto;  세로 스크롤바 추가  */
	overflow: auto; /* 내용 넘칠 시 스크롤 */
	margin-left: 20px; /* 왼쪽 여백 추가 */
}
h2 {
    margin-bottom: 20px; /* 제목 아래에 20px 간격 추가 */
}
table {
	width: 100%;
	border-collapse: collapse;
	font-size: 14px; /* 글자 크기 줄임 */
}

td {
	padding: 4px;
	text-align: left;
	border: none; /* 테두리 제거 */
	font-size: 14px; /* 셀 텍스트 크기 */
	word-break: break-word; /* 긴 텍스트 줄바꿈 */
}

td::before {
	content: "●"; /* 원모양 기호 추가 */
	color: black; /* 원의 색상 */
	margin-right: 8px; /* 원과 텍스트 간격 */
	font-size: 12px; /* 원 크기 */
}
</style>

<script>
function showPopup(illIdx) {
    // 팝업 창 URL에 질병 ID를 전달
    const popupUrl = "diseaseInfo.do?ill_idx=" + illIdx;

    // 팝업 창 열기
    window.open(popupUrl, 'diseasePopup', 'width=600,height=400,scrollbars=yes');
	}
</script>
</head>
<body>
<jsp:include page="/WEB-INF/views/main/MenuBar_User.jsp"/>
	<div class="title">자가진단 서비스</div>
	<div class="diagnosis-box">
		<h2>일반적인 증상</h2>
		<table>
			<tbody>
				<c:forEach var="vo" items="${list}" varStatus="status">
					<c:if test="${status.index % 4 == 0}">
						<tr>
					</c:if>
					<td>
						<!-- 질병 이름을 클릭하면 팝업을 띄움 --> <a
						onclick="showPopup('${vo.ill_idx}');">${vo.ill_name}</a>
					</td>
					<c:if test="${status.index % 4 == 3}">
						</tr>
					</c:if>
					<c:if test="${status.index >= 52}">
						<!-- 여기서 반복 종료 -->
					</c:if>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>