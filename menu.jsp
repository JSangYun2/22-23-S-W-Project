<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String sessionID = (String)session.getAttribute("sessionId");

if(sessionID == null) {
%>

<a href = "login.jsp" onclick="alert('인증되지않는 접근입니다.')"><img id = "usericon" src = "./image/user.JPG"></a>
<a href = "cart.jsp"><img id = "basketicon" src = "./image/basket.JPG"></a>
<button id="loginbutton" onclick = "location.href='login.jsp'">로그인</button>
<%
} else{
%>
<a href = "MyPage.jsp"><img id = "usericon" src = "./image/user.JPG"></a>
<a href = "cart.jsp"><img id = "basketicon" src = "./image/basket.JPG"></a>

<p style = "
    margin-top: -160px;
    margin-left: 1040px;
    width: 190px;
"><%=sessionID%>(<%=session.getAttribute("sessionNickname") %>)님 환영합니다.</p><button id="loginbutton" onclick = "location.href='logout.jsp'">로그아웃</button>
<%}%>
