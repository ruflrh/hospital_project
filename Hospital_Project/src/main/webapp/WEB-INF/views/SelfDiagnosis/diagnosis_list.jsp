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
	padding: 20px;
}

.title {
	font-size: 24px;
	font-weight: bold;
	margin-bottom: 20px;
}

.diagnosis-box {
	width: 1500px;
	height: 750px;
	background-color: white;
	border: 1px solid #ccc;
	border-radius: 5px;
	padding: 10px;
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
	<div class="title">자가진단 서비스</div>
	<div class="diagnosis-box">
		<!-- 질병 목록은 나중에 추가할 예정 -->
		<h1>질병 목록</h1>
		<table border="1">
			<tbody>
				<c:forEach var="vo" items="${list}" varStatus="status">
					<c:if test="${status.index % 4 == 0}">
						<tr>
					</c:if>
					<td>
						<!-- 질병 이름을 클릭하면 팝업을 띄움 --> <a
						onclick="showPopup('${vo.ill_idx}');"> ${vo.ill_name} </a> <%-- 						<a href="javascript:void(0);" onclick="showPopup('${vo.ill_idx}');"> ${vo.ill_name} </a> --%>
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