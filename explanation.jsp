<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet" href="css/styleexplanation.css">
<head>
    <title>일루컴 설명 페이지</title>
</head>
<body>
    <div class = "top" id = "top">
        <jsp:include page="logo.jsp"></jsp:include>
    </div>

    <div class = "middle" id = "middle">
        <hr id = "hr">
        </hr>
        <div class = "nemo" id = "nemo">
            <h3 id = "font4">일루컴 부품 설명 페이지에 오신것을 환영합니다!</h3>
            <h3 id = "font4">어떤 부품이 궁금하신가요?</h3>

            <img src="image/RAM.jpg" id = "ram">
            <h3 id = "font5">RAM에 대해 알고싶어요!</h3>
            <a href="exRAM.jsp"><h3 id = "font6">▶ 설명 보기</h3></a>

            <img src="image/CPU.JPG" id = "cpu">
            <h3 id = "font7">CPU에 대해 알고싶어요!</h3>
            <a href="exCPU.jsp"><h3 id = "font8">▶ 설명 보기</h3></a>

            <img src="image/GPU.JPG" id = "gpu">
            <h3 id = "font9">GPU에 대해 알고싶어요!</h3>
            <a href="exGPU.jsp"><h3 id = "font10">▶ 설명 보기</h3></a>

            <img src="image/Power.jpg" id = "power">
            <h3 id = "font11">파워 서플라이에 대해 알고싶어요!</h3>
            <a href="exPower.jsp"><h3 id = "font12">▶ 설명 보기</h3></a>

            <img src="image/mainboard.JPG" id = "mainboard">
            <h3 id = "font13">메인보드에 대해 알고싶어요!</h3>
            <a href="exMainboard.jsp"><h3 id = "font14">▶ 설명 보기</h3></a>
        </div>
    </div>

    <div class = "low" id = "low">
        <button id = "HomeButton" onclick="location.href='index.jsp'">홈으로 이동</button >
        <button id = "ShoppingButton" onclick="location.href='shopping.jsp'">쇼핑몰로 이동</button >
        <h3 id = "font15">ⓒ 2022 Create Project_IWS 일루컴 </h3>
    </div>
</body>
</html>