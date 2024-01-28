<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<link rel="stylesheet" href="css/styleexplanation.css">
<head>
    <title>CPU 설명 페이지</title>
</head>
<body>
    <div class = "top" id = "top">
        <jsp:include page="logo.jsp"></jsp:include>
    </div>

    <div class = "exmiddle" id = "exmiddle">
        <hr id = "hr">
        </hr>
        <image src="image/CPU.JPG" id = "excpu"></image>
        <p id = "exCenter">
            <b>컴퓨터</b></span>는 하나의 <span style="color:red"><b>시스템</b></span> 같은 느낌입니다.<br><br>

            딱 <span style="color:red"><b>놀이공원</b></span>이랑 비슷한 느낌인데요.<br><br>
            
            <span style="color:red"><b>CPU</b></span>라는 부품은 쉽게 비유하자면 놀이공원에서 놀이기구가 잘 움직이는지<br>
            확인하는 부품 입니다. <br><br>

           또한 <span style="color:red"><b>CPU</b></span>는 한 프로그램이 실행될때 그 프로그램이 작동을 시작한 시점부터<br>
            종료까지의 연산(잘 작동하게 만드는 작업)을 하는 부품입니다.
        </p>
        <img src ="image/chunbong.png" id = "chunbong">
        <button onClick="history.back();" id = "backButton">뒤로가기</button>
    </div>

</body>
</html>