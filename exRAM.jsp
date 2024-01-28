<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet" href="css/styleexplanation.css">
<head>
    <title>RAM 설명 페이지</title>
</head>
<body>
    <div class = "top" id = "top">
        <jsp:include page="logo.jsp"></jsp:include>
    </div>

    <div class = "exmiddle" id = "exmiddle">
        <hr id = "hr">
        </hr>
        <image src="image/RAM.jpg" id = "exram"></image>
        <p id = "exCenter"><span style="color:red"><b>컴퓨터</b></span>는 하나의 <span style="color:red"><b>시스템</b></span> 같은 느낌입니다.<br><br>

            딱 <span style="color:red"><b>놀이공원</b></span>이랑 비슷한 느낌인데요.<br><br>
            
            <span style="color:red"><b>RAM</b></span>이라는 부품은 쉽게 비유하자면 놀이공원의 "크기(규모)"라고 
            생각하시면 됩니다!<br><br>
             
            놀이공원이 크면 클수록 놀이기구 개수가 많아지는 것처럼, <br><br>
            
            <span style="color:red"><b>RAM</b></span>도 프로그램이 한번에 몇개까지 실행되는지를 담당하는 부품입니다.<br>
            (예: 크롬을 키고, 엑셀을 열고, 음악을 듣는 등)
        </p>
        <img src ="image/chunbong.png" id = "chunbong">
        <button onClick="history.back();" id = "backButton">뒤로가기</button>
    </div>

</body>
</html>