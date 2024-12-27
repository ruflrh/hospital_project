<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>          
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>의료기기정보</title>

<style>
/* 부모 컨테이너: Flexbox로 가로 정렬 */
.gallery-container {
	display: flex; /* Flexbox 활성화 */
	flex-wrap: wrap; /* 줄바꿈 허용 (3개씩 정렬 후 다음 줄로 이동) */
	gap: 20px; /* 카드 사이의 간격 */
	justify-content: space-around; /* 아이템 간격을 균등 배치 */
	padding: 20px;
}

/* 각 게시물 박스 스타일 */
.device_box {
	width: 300px; /* 각 박스의 너비 */
	border: 1px solid #ccc;
	padding: 10px;
	text-align: center; /* 내용 가운데 정렬 */
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* 박스 그림자 */
	border-radius: 8px; /* 박스 모서리 둥글게 */
}

/* 이미지 스타일 */
.device_box img {
	max-width: 100%; /* 이미지를 박스 너비에 맞춤 */
	border-radius: 4px; /* 이미지 모서리 둥글게 */
}

/* 이름 텍스트 스타일 */
.device_name {
	margin-top: 10px;
	font-size: 16px;
	font-weight: bold;
	color: #333;
}

body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f9f9f9;
}

.header {
	padding: 20px;
	background-color: #007bff;
	color: white;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.header h1 {
	margin: 0;
}

.header .search {
	display: flex;
	align-items: center;
}

.header .search input {
	padding: 5px;
	font-size: 16px;
	border: 1px solid #ccc;
	border-radius: 4px;
	margin-right: 10px;
}

.main {
	padding: 20px;
}

.info {
	margin-bottom: 20px;
	font-size: 16px;
	color: #555;
}

.devices {
	display: flex;
	justify-content: space-between;
	gap: 10px;
}

.device {
	width: 30%;
	background-color: white;
	border: 1px solid #ddd;
	border-radius: 5px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
	padding: 10px;
	text-align: center;
}

.device img {
	max-width: 100%;
	height: auto;
	border-radius: 5px;
}

.footer {
	padding: 20px;
	text-align: center;
	background-color: #f1f1f1;
}

.footer .pagination {
	display: inline-block;
}

.footer .pagination button {
	padding: 10px 15px;
	margin: 0 5px;
	font-size: 16px;
	border: 1px solid #007bff;
	background-color: white;
	color: #007bff;
	border-radius: 4px;
	cursor: pointer;
}

.footer .pagination button.active {
	background-color: #007bff;
	color: white;
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

<div class="header">
        <h1>의료기기정보</h1>
        
        <div align="center">
			<input type="button" value="글쓰기"
				onclick="location.href='insert_form.do'">
		</div>
		
		<div>
		<input id="search">
		<input type="button" value="검색" onclick="search();">		
		</div>

		<div class="search" style="text-align: right;">
			<form action="${pageContext.request.contextPath}/search.do" method="get">
				<!-- 검색 기준 선택 -->
				<select name="searchType">
					<option value="name">이름</option>
					<option value="content">내용</option>
					 <option value="all">이름+내용</option>
				</select>
				<!-- 검색어 입력 -->
				<input type="text" name="keyword" placeholder="의료기기 검색...">
				<button type="submit">검색</button>
			</form>
		</div>		 
    </div>

	<div class="gallery-container">
		<c:forEach var="vo" items="${list}">
			<div class="device_box">
				<c:if test="${vo.dev_filename ne 'no_file'}">
					<img
						src="${pageContext.request.contextPath}/resources/upload/${vo.dev_filename}"
						width="330">
						
					<!-- 의료기기 이미지를 클릭하면 팝업을 띄움 -->
					<a onclick="showPopup('${vo.dev_idx}');">${vo.dev_filename}</a>	
				
				</c:if>
				<div class="device_name">${vo.dev_name}</div>
			</div>
		</c:forEach>
	</div>

	<div align="center" style="margin-top: 20px; margin-bottom: 50px;">
		${ pageMenu }</div>


	<div class="main">
        <div class="info">총 게시물: 19개</div>
        <div class="devices">
            <div class="device">
                <img src="device1.jpg" alt="Device 1">
                <p>의료기기 1</p>
            </div>
            <div class="device">
                <img src="device2.jpg" alt="Device 2">
                <p>의료기기 2</p>
            </div>
            <div class="device">
                <img src="device3.jpg" alt="Device 3">
                <p>의료기기 3</p>
            </div>
        </div>
    </div>

    <div class="footer">
        <div class="pagination">
            <button class="active">1</button>
            <button>2</button>
            <button>3</button>
            <button>4</button>
            <button>5</button>
            <button>6</button>
            <button>7</button>
        </div>
    </div>



</body>
</html>