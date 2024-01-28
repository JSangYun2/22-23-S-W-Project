<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet" href="css/styleexplanation.css">
<head>
    <title>메인보드 설명 페이지</title>
</head>
<body>
    <div class = "top" id = "top">
        <jsp:include page="logo.jsp"></jsp:include>
    </div>

    <div class = "exmiddle" id = "exmiddle">
        <hr id = "hr">
        </hr>
        <image src="image/mainboard.JPG" id = "exmainboard"></image>
        <p id = "exCenter">
            <b>컴퓨터</b></span>는 하나의 <span style="color:red"><b>시스템</b></span> 같은 느낌입니다.<br><br>

            딱 <span style="color:red"><b>놀이공원</b></span>이랑 비슷한 느낌인데요.<br><br>

            <span style="color:red"><b>메인보드</b></span>는 놀이기구의 골격/뼈대 (기초 공사)같은 느낌입니다.<br><br>

            <span style="color:red"><b>구매 TIP)</b></span> 메인보드까지는 굳이 많이 생각을 하지 않아도 되지만, <br>
            CPU,RAM,GPU가 오래 되고 메인보드가 최신이라면 호환이 되지 않을 수 있습니다.<br>
            반대도 마찬가지입니다. <br><br>

            (CPU,RAM,GPU가 최신이고 메인보드가 오래된거라면 호환이 되지 않을 수 있습니다.
        </p>
        <img src ="image/chunbong.png" id = "chunbong">
        <button onClick="history.back();" id = "backButton">뒤로가기</button>
    </div>

</body>
</html>