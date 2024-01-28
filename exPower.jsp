<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet" href="css/styleexplanation.css">
<head>
    <title>파워 서플라이 설명 페이지</title>
</head>
<body>
    <div class = "top" id = "top">
        <jsp:include page="logo.jsp"></jsp:include>
    </div>

    <div class = "exmiddle" id = "exmiddle">
        <hr id = "hr">
        </hr>
        <image src="image/Power.jpg" id = "expower"></image>
        <p id = "exCenter">
            <b>컴퓨터</b></span>는 하나의 <span style="color:red"><b>시스템</b></span> 같은 느낌입니다.<br><br>

            딱 <span style="color:red"><b>놀이공원</b></span>이랑 비슷한 느낌인데요.<br><br>

            <span style="color:red"><b> 파워(서플라이)</b></span>는 놀이기구에 들어가는 "전기"라고 생각하시면 되겠습니다. <br>
            놀이기구가 운영되는데에는 보통 전기를 사용하여 놀이기구를 운영하는데 <span style="color:red"><b>파워</b></span>도 마찬가지입니다.<br>
            GPU는 많은 전력을 사용하기 때문에, 파워는 매우 중요하다고 할 수 있습니다. <br><br>

            <span style="color:red"><b>구매 TIP)</b></span> GPU를 보면 최소 전력 몇 W 이상 이라고 기재 되어있는데<br>
            파워를 구매하실때에는 최소 몇 W 이상에 맞춰서 사시면 될거 같습니다.
        </p>
        <img src ="image/chunbong.png" id = "chunbong">
        <button onClick="history.back();" id = "backButton">뒤로가기</button>
    </div>

</body>
</html>