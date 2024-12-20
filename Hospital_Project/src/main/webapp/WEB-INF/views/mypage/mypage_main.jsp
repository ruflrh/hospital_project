<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <style>
            * {margin: 0; padding: 0;}

            a {
                text-decoration: none;
                color: black;
                font-weight: bold;
                font-size: 16px;
                cursor: pointer;
            }

            a:hover {
                color: red;
            }

            body {
                display: flex; /* Flexbox 활성화 */
                flex-wrap: wrap; /* 콘텐츠가 줄바꿈되도록 설정 */
                justify-content: center; /* 가로 중앙 정렬 */
                align-items: center; /* 세로 중앙 정렬 (선택 사항) */
                background-color: #f5f5f5; /* 배경색 */
            }

            .container {
                width: 600px;
 				height: 200px;
                padding: 20px;
                border: 2px solid black; /* 테두리 */
                border-radius: 10px; /* 모서리 둥글게 */
                text-align: left;
                margin: 5px; /* 간격 추가 */
            }

			.container:hover {
				border: 2px solid #228006; /* 테두리 */
			}

            #welcome {
                display: inline;
                margin-right: 5px; /* "님 환영합니다!"와 간격 조정 */
            }

            #patient_table {
                border-spacing: 0 15px; /* 행 간 15px 간격 */
                border-collapse: separate; /* border-spacing 활성화 */
            }

            .sub_image {
                width: 30px;
                margin-left: 10px;
            }

            .container_a {
                display: inline;
                font-size: 32px;
                font-weight: bold;
            }

            .container_ul {
                margin-top: 10px;
                margin-left: 20px;
            }
            
            .container1_buttons{
            	padding: 5px 10px;
			    font-weight: bold;
			    cursor: pointer;
			    transition: all 0.3s ease;
            }
            
            .container1_buttons:hover{
            	color: red;
            }
            
            .container3_div {
			    display: inline-block;
			    padding: 10px;
			    width: 200px;
			    border: 1px solid black;
			    border-radius: 5px;
			    cursor: pointer;
			    text-align: center; /* 내부 텍스트(또는 a 태그)를 중앙 정렬 */
			    transition: all 0.3s ease;
			}
			
			.container3_div:hover {
				background-color: #228006;
			}
			
			.container3_p {
			    display: inline-block;
			    font-weight: bold;
			    cursor: pointer;
			    line-height: normal; /* p 태그 내부 텍스트의 줄 높이 초기화 */
			    vertical-align: middle; /* 필요시 세로 정렬 보정 */
			}
			
			.container3_image{
				width: 150px;
			}
			
			#container3_div_reservation{
				display: inline-block;
			    padding: 10px;
			    width: 350px;
			    height: 177px; /* 동일한 높이로 설정 */
			    vertical-align: top; /* 세로 정렬 */
			    border: 1px solid black;
			    border-radius: 5px;
			    text-align: center; /* 내부 텍스트(또는 a 태그)를 중앙 정렬 */
			    transition: all 0.3s ease;
			}
        </style>
    </head>
    <body>
        <div class="container" style="margin-top: 200px;">
            <h1 id="welcome">${vo.pat_name}</h1><span>님 환영합니다!</span>
            <input type="button" class="container1_buttons" value="회원정보 수정"
            	style="margin-left: 20px;" onclick="location.href='update_info.do'">
            <hr width="580px;" style="margin-top: 10px;">
            <table id="patient_table">
                <tr>
                    <th>연락처 |</th>
                    <td>&emsp;${vo.pat_phone}</td>
                </tr>
                <tr>
                    <th>이메일 |</th>
                    <td>&emsp;${vo.pat_email}</td>
                </tr>
                <tr>
                    <th>주소&emsp; |</th>
                    <td>&emsp;${vo.pat_address_road},<br>
                        &emsp;${vo.pat_address_detail}</td>
                </tr>
            </table>
        </div><br>
        <div class="container" style="width: 400px; margin-top: 200px;">
            <a class="container_a" href="certificates_print.do">증명서 발급 안내</a>
            <span><img src="/hos/resources/images/증명서 발급.png" class="sub_image"></span>
            <hr width="380px;" style="margin-top: 10px;">
            <ul class="container_ul">
                <li>진단서 발급 안내</li>
                <li>진료 사실 확인서</li>
                <li>진료비 납입 확인서</li>
                <li>진료비 계산서, 영수증</li>
                <li>처방전 사본</li>
                <li>진단서 사본</li>
            </ul>
        </div>
        <div class="container" style="width: 1060px; position: relative;">
        	<div class="container3_div" onclick="location.href='reservation_list.do'">
        		<img src="/hos/resources/images/마이페이지_예약내역.png" class="container3_image"><br>
            	<p class="container3_a">예약내역</p>
        	</div>
        	<div class="container3_div" onclick="location.href='payment_page.do'">
        		<img src="/hos/resources/images/마이페이지_진료비결제.png" class="container3_image"><br>
            	<p class="container3_a">진료비결제</p>
        	</div>
        	<div class="container3_div" onclick="location.href='managing_posts.do'">
        		<img src="/hos/resources/images/마이페이지_작성글관리.png" class="container3_image"><br>
            	<p class="container3_a">작성글관리</p>
        	</div>
        	<div id="container3_div_reservation">
        		<a class="container_a" href="#" style="display: inline;">예약 검색/조회</a>
        		<img src="/hos/resources/images/마이페이지_검색.png" class="sub_image" style="margin-left: 20px;"><br>
        	</div>
        </div>
    </body>
</html>




