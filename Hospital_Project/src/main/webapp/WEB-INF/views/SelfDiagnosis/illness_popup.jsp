<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>질병 정보</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .info-box {
            background-color: #f9f9f9;
            border: 1px solid #ccc;
            padding: 15px;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <h1>질병 상세 정보</h1>
    <div class="info-box">
        <p><strong>질병 이름:</strong> ${disease.ill_name}</p>
        <p><strong>질병 설명:</strong> ${disease.ill_des}</p>
    </div>
</body>
</html>
