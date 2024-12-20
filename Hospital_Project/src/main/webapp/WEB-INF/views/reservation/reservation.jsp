<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>진료과목 선택</title>
    <link rel="stylesheet" href="resources/css/reservation-kty/reservation.css">
</head>
<body>
    <div class="container">
        <!-- 왼쪽 메인 콘텐츠 -->
        <div class="main-content">
            <h2>진료과목 선택</h2>
            <ul id="main-internal">
                <li class="drop-down">
                    <a>내과</a>
                    <ul id="sub-internal" class="sub">
                        <li>소화기내과</li>
                        <li>호흡기내과</li>
                        <li>심장내과</li>
                        <li>내분비내과</li>
                        <li>신장내과</li>
                        <li>류마티스내과</li>
                        <li>감염내과</li>
                    </ul>
                </li>
            </ul>
            <ul id="main-surgical">
                <li class="drop-down">
                    <a>외과</a>
                    <ul id="sub-surgical" class="sub">
                        <li>흉부외과</li>
                        <li>정형외과</li>
                        <li>신경외과</li>
                        <li>성형외과</li>
                        <li>산부인과</li>
                        <li>비뇨기의학과</li>
                        <li>소아외과</li>
                    </ul>
                </li>
            </ul>
            <ul id="main-mental">
                <li class="drop-down">
                    <a>정신건강의학과</a>
                    <ul id="sub-mental" class="sub">
                        <li>우울증, 불안장애, 정신분열</li>
                        <li>중독 치료(알코올, 약물)</li>
                        <li>소아청소년 정신건강</li>
                    </ul>
                </li>
            </ul>
            
        </div>

    </div>

	<script>
		document.addEventListener('DOMContentLoaded', function () {
		    // 드롭다운 클릭 이벤트 처리
		    function handleDropDownClick(event) {
		        event.preventDefault();
		        const parent = this.parentElement;
	
		        // 다른 열린 드롭다운 닫기
		        document.querySelectorAll('.drop-down').forEach(function (item) {
		            if (item !== parent) {
		                item.classList.remove('open');
		            }
		        });
	
		        // 현재 드롭다운 열기/닫기
		        parent.classList.toggle('open');
		    }
	
		    // 이벤트 리스너 등록
		    document.querySelectorAll('.drop-down > a').forEach(function (link) {
		        link.addEventListener('click', handleDropDownClick);
		    });
		});
	
	</script>

</body>
</html>
