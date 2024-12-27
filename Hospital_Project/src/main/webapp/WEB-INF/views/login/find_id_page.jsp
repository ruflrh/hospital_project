<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<p>아이디를 확인하신 후 로그인 해주시기 바랍니다.</p>
 	<p>아이디 : ${ param.pat_id }</p>
 	<input type="button" value="메인으로 이동" onclick="location.href='main.do'">
 	<input type="button" value="로그인" onclick="location.href='login_page.do'">
</body>
</html>