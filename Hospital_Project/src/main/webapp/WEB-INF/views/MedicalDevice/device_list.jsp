<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>          
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>의료기기정보</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f9f9f9;
}

.header {
	padding: 20px;
	background-color: #f89e35;
	color: white;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.header h1 {
	margin: 0;
}

.top-bar {
	display: flex;
	justify-content: space-between; /* 좌우 정렬 */
	align-items: center; /* 수직 정렬 */
	padding: 10px 20px;
	background-color: #fff;
	border-bottom: 1px solid #ddd;
	margin-bottom: 20px;
}

.info {
	font-size: 16px;
	color: #333;
}

.search {
	display: flex;
	align-items: center;
}

.search select,
.search input,
.search button {
	margin-left: 10px;
	padding: 5px;
	font-size: 14px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

.gallery-container {
	display: flex; /* Flexbox 활성화 */
	flex-wrap: wrap; /* 줄바꿈 허용 */
	gap: 15px; /* 카드 간의 간격 줄이기 */
	justify-content: space-around; /* 간격 균등 배치 */
	padding: 20px;
}

.device_box {
	width: 400px; /* 박스 너비 확대 */
	border: 1px solid #ccc;
	padding: 15px;
	text-align: center;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* 박스 그림자 */
	border-radius: 8px; /* 박스 모서리 둥글게 */
	background-color: #fff;
}

.device_box img {
	width: 100%; /* 이미지를 박스 너비에 맞춤 */
	height: 250px; /* 이미지 높이 설정 */
	object-fit: cover; /* 이미지가 박스에 맞게 자름 */
	border-radius: 4px;
}

.pagination {
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 20px 0;
    list-style: none;
    padding: 0;
}

.pagination li {
    margin: 0 5px;
}

.pagination a {
    display: block;
    padding: 10px 15px;
    text-decoration: none;
    color: #333;
    border: 1px solid #ddd;
    border-radius: 4px;
    transition: all 0.3s ease;
}

.pagination a:hover {
    background-color: #f89e35;
    color: white;
}

.pagination .active {
    background-color: #f89e35;
    color: white;
    pointer-events: none;
    border: 1px solid #f89e35;
}

</style>
<script>
function showPopup(devIdx) {
    // 팝업 창 URL에 의료기기 ID를 전달
    const popupUrl = "deviceInfo.do?dev_idx=" + devIdx;

    // 팝업 창 열기
    window.open(popupUrl, 'devicePopup', 'width=600,height=400,scrollbars=yes');
	}
</script>

</head>
<body>
<jsp:include page="/WEB-INF/views/main/MenuBar_User.jsp"/>

<div class="header">
        <h1>의료기기정보</h1>
				 
    </div>

	<div class="top-bar">
		<div class="info">총 게시물: 19개</div>
		<!-- 좌측 상단 -->
		<div class="search">
			<!-- 우측 상단 -->
			<form action="${pageContext.request.contextPath}/search.do"
				method="get">
				<select name="searchType">
					<option value="name">이름</option>
					<option value="content">내용</option>
					<option value="all">이름+내용</option>
				</select> <input type="text" name="keyword" placeholder="의료기기 검색...">
				<button type="submit">검색</button>
			</form>
		</div>
	</div>
	
	<div class="gallery-container">
	<c:forEach var="vo" items="${list}">
		<div class="device_box">
			<c:if test="${vo.dev_filename ne 'no_file'}">
				<img
					src="${pageContext.request.contextPath}/resources/upload/${vo.dev_filename}">
				<a onclick="showPopup('${vo.dev_idx}');">${vo.dev_filename}</a>
			</c:if>
		</div>
	</c:forEach>
</div>

	<div align="center" style="margin-top: 20px; margin-bottom: 50px;">
		<ul class="pagination">${pageMenu}
		</ul>
	</div>

</body>
</html>