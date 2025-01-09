<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="vo" items="${list}">
					<div id="list_div" class="open_div">
					<div class="title_div">
						<p>${ vo.board_title }</p>
					</div>
					
					<div class="content_div">
						<p>
							${ vo.board_content }
						</p>
					</div>
					
					<div class="date_name_div">
						2024-12-16 정** 님
					</div>
					
					</div>
				</c:forEach>
</body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="vo" items="${list}">
					<div id="list_div" class="open_div">
					<div class="title_div">
						<p>${ vo.board_title }</p>
					</div>
					
					<div class="content_div">
						<p>
							${ vo.board_content }
						</p>
					</div>
					
					<div class="date_name_div">
						2024-12-16 정** 님
					</div>
					
					</div>
				</c:forEach>
</body>
>>>>>>> branch 'main' of https://github.com/ruflrh/hospital_project.git
</html>