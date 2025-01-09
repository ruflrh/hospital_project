<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>교수 선택</title>
    <link rel="stylesheet" href="resources/css/reservation-kty/step2.css">
</head>
<body>
    <h1 style="text-align: center;">교수 선택</h1>
    <div id="professorContainer" class="professor-container">
        <!-- 교수 버튼 -->
        <c:forEach var="vo" items="${list}">
        	<button data-prof-id="${vo.pro_idx}" onclick="selectProfessor('${vo.pro_idx}');">
        		<img alt="" src="resources/images/${vo.pro_file}">
        		<p>${ vo.pro_name }</p>
        	</button>
        </c:forEach>
    </div>
	<div>
		<input id="back" type="button" value="이전" onclick="history.back();">
	</div>

    <script>
	    function selectProfessor(pro_idx) {
			location.href="step3.do?pro_idx="+ pro_idx;
		}
    </script>
    
</body>
</html>
