<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet" href="css/styleexplanation.css">
<head>
    <title>GPU 설명 페이지</title>
</head>
<body>
    <div class = "top" id = "top">
        <jsp:include page="logo.jsp"></jsp:include>
    </div>

    <div class = "exmiddle" id = "exmiddle">
        <hr id = "hr">
        </hr>
        <image src="image/GPU.JPG" id = "exgpu"></image>
        <p id = "exCenter">
            <b>컴퓨터</b></span>는 하나의 <span style="color:red"><b>시스템</b></span> 같은 느낌입니다.<br><br>

            딱 <span style="color:red"><b>놀이공원</b></span>이랑 비슷한 느낌인데요.<br><br>

            <span style="color:red"><b>GPU</b></span>는 쉽게 비유하자면 놀이기구의 퀄리티 같은 느낌입니다.<br>
            놀이기구가 아무리 많아도 놀이기구가 재미 없는 놀이기구라면 굳이 놀이공원에 가지 않겠죠?<br>
            또한 게임이나 편집 같은 작업을 할때 가장 필요한 부품입니다. <br><br>

            <span style="color:red"><b>GPU</b></span>가 성능이 권장사양에 맞지않으면 일종 "렉" 걸린다 라고 표현을 많이 합니다.<br><br>

            <span style="color:red"><b>구매 TIP)</b></span>게임이나 프로그램은 최소사양과 권장사양이 존재하는데,<br>
            권장사양보다 조금 더 좋게 구매하셔야 렉[병목현상]이 발생하지 않습니다.
        </p>
        <img src ="image/chunbong.png" id = "chunbong">
        <button onClick="history.back();" id = "backButton">뒤로가기</button>
    </div>

</body>
</html>