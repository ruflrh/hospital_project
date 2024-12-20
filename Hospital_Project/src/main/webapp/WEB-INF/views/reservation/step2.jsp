<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>교수 선택</title>
    <link rel="stylesheet" type="text/css" href="resources/css/reservation-kty/step2.css">
</head>
<body>
    <h1 style="text-align: center;">교수 선택</h1>
    <div id="professorContainer" class="professor-container">
        <!-- 교수 버튼 -->
        <input type="button" value="교수 A" class="professor-card" onclick="selectProfessor('professorA')">
        <input type="button" value="교수 B" class="professor-card" onclick="selectProfessor('professorB')">
        <input type="button" value="교수 C" class="professor-card" onclick="selectProfessor('professorC')">
    </div>
	<div>
		<input type="button" value="이전" onclick="history.back();">
	</div>
    


    <script>
	    function selectProfessor( professor ) {
	    	let availableDays;
	    	
			switch(professor){
			case "professorA":
				availableDays = [2, 3, 6];//진료가능 날짜
				break;
			case "professorB":
				availableDays = [2, 5, 6];//진료가능 날짜
				break;
			case "professorC":
				availableDays = [3, 4, 5];//진료가능 날짜
				break;
	        default:
	            availableDays = []; // 예외 처리: 교수 정보가 없을 경우 빈 배열
	            console.error("올바르지 않은 교수 ID: " + professor);	
			}
			
			alert(professor + "교수의 진료 날짜는 : " + availableDays.join(", "));
			
			location.href="step3.do?professor="+professor+"&availableDays=" + availableDays;
		}
	        

    </script>
</body>
</html>
