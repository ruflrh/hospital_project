<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
   <title>지도 API를 활용해보자</title>
</head>
<body>
   <div id="map" style="width:600px;height:300px;"></div>

   <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7e65d449202d3df349a4ceebb55749b9"></script>
   <script>
      var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
          mapOption = {
              center: new kakao.maps.LatLng(37.49854, 127.03258), // 지도의 중심좌표
              level: 1, // 지도의 확대 레벨
              mapTypeId : kakao.maps.MapTypeId.ROADMAP // 지도종류
          }; 

      // 지도를 생성한다 
      var map = new kakao.maps.Map(mapContainer, mapOption); 

      // 지도에 확대 축소 컨트롤을 생성한다
      var zoomControl = new kakao.maps.ZoomControl();

      // 지도의 우측에 확대 축소 컨트롤을 추가한다
      map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

      // 지도에 마커를 생성하고 표시한다
      var marker = new kakao.maps.Marker({
          position: new kakao.maps.LatLng(37.49854, 127.03258), // 마커의 좌표
          map: map // 마커를 표시할 지도 객체
      });
   </script>
</body>
</html>




