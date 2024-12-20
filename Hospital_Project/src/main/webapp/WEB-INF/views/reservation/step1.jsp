<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
				
		<style>
            .cover {
                background-color: blue; /* 반투명 검정 배경 */
                width: 400px; /* 오른쪽 화면 전체 덮음 */
                height: 600px;
                position: absolute;
                top: 20px;
                left: 50px;
                display: flex; /* 기본적으로 표시 */
                justify-content: center;
                align-items: center;
                color: white;
                font-size: 24px;
                cursor: pointer; /* 클릭 가능한 마우스 커서 */
                z-index: 10; /* 다른 요소 위로 배치 */
            }
			#parent{position: relative;}
		</style>
		<script>
            // JavaScript로 cover 숨기기 기능 추가
			function hideCover() {
			    let cover = document.getElementById('cover');
			    cover.style.display = 'none'; // cover 숨기기
			}
            
            
            function back() {
                let cover = document.getElementById('cover');
                cover.style.display = 'flex'; // cover 다시 보이게 설정
            }

            
        </script>
	</head>
	<body>
	<div id="parent">
		<table border="1" class="original">
		<caption>회원예약</caption>
			<tr>
				<th>1. 본인 정보 입력</th>
			</tr>
			<tr>
				<th>성명</th>
			</tr>
			<tr>
				<td><input name="회원명" value="회원명" disabled="disabled"></td>
			</tr>
			
			<tr>
				<th>연락처</th>
			</tr>
			<tr>	
				<td><select id="digit">
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="016">016</option>
					<option value="017">017</option>
					<option value="018">018</option>
					<option value="019">019</option>
					<option value="070">070</option>
					<option value="02">02(서울)</option>
					<option value="031">031(경기)</option>
					<option value="032">032(인천)</option>
					<option value="033">033(강원)</option>
					<option value="041">041(충남)</option>
					<option value="042">042(대전)</option>
					<option value="043">043(충북)</option>
					<option value="051">051(부산)</option>
					<option value="052">052(울산)</option>
					<option value="053">053(대구)</option>
					<option value="054">054(경북)</option>
					<option value="055">055(경남)</option>
					<option value="061">061(전남)</option>
					<option value="062">062(광주)</option>
					<option value="063">063(전북)</option>
					<option value="064">064(제주)</option>
				</select> - <input name="midle"> - <input name="back"></td>
			</tr>
			<tr>
				<td>개인정보 수집, 이용 동의</td>
			</tr>
			<tr>
				<td>
				개인정보는 병원정보 조회를 위해서만 사용합니다.
				<br>
				개인정보 이용에 동의합니다.
				 </td>
			</tr>
			<tr>
				<td>
					<input type="radio" name="check_agree" value="yes">동의 합니다.
					<input type="radio" name="check_agree" value="no">동의하지 않습니다.
				</td>
			</tr>
			<tr>
				<td>
					<input type="button" value="다음" onclick="location.href='step2.do'">
					<input type="button" value="이전" onclick="back();">
				</td>
			</tr>
			
			
		</table>
		<!-- 화면 앞에 씌운 커버 -->
 			<div class="cover" id="cover" onclick="hideCover();">
				<h1>회원 예약</h1>
			</div>
	</div>


	</body>
</html>