<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<link rel="stylesheet" href="./css/stylesuccess.css">
<head>
    <title>회원가입 성공 페이지</title>
</head>
<body>
    <div class = "top" id = "top">
        <jsp:include page="logo.jsp"/>
        <hr style="width:1900px;">
    </div>
    <div class = "middle" id = "middle">
        <img src="image/succ	ess.JPG" id = "successicon">
        <h3 id="font4">${id } (${nickname }) 님</h3>
        <h3 id="font5">회원가입이 완료되었습니다!</h3>
        <h3 id="font6">일루컴에서 제공하는  다양한 서비스를 경험해보세요!</h3>
        <button id = "loginbutton" onclick = "location.href='login.jsp'">Login</button>
    </div>
    <div class="bottom" id = "bottom">
        <h3 id="font7">ⓒ 2022 Create Project_IWS 일루컴 </h3>
    </div>
</body>
</html>
