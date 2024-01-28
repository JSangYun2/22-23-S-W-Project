<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<link rel="stylesheet" href="./css/stylelogin.css">
<head>
    <title>SW프로젝트 웹사이트 일루컴 로그인 페이지</title>
</head>
<body>
	<script type="text/javascript">
		function check() {
			if(!post.id.value) {
				alert("아이디를 입력하세요.");
				post.id.focus();
				return false;
			}
			if(!post.password.value) {
				alert("비밀번호를 입력하세요.");
				post.password.focus();
				return false;
			}
			return true;
		}
	</script>
	
    <a href="index.jsp"><img src="image/logo.JPG" id ="logo"></a>
    <div><a id = "font1" href="index.jsp">홈</a>
    <a id = "font2" href="intro.jsp">소개</a>
    <a id = "font3" href="">쇼핑몰</a>
    </div>
    <hr>
    <br><br><br>
    <form action="login_process.jsp" name = "post" method="post" onsubmit="return check()">
        <div id="ex1" style = margin-left:588px>
        	<%
        		String err = request.getParameter("error");
        		if (err != null) {
        	%>
        	<label style ="color: red; margin-top:10px; margin-left:220px;">아이디나 비밀번호가 존재하지않습니다.</label>
        	<% } %>
        <p>
            <img src="image/login1.JPG" id = "idImage">
            <strong id = "id">아이디</strong>
		    <input id = "idInput" type="text" name="id" placeholder="아이디 입력" style="border:0 solid black">
        </p>

        <hr style = "width: 480px;">

        <p>
            <img src="image/login2.JPG"  id = "passImage">
            <strong id = "pw">비밀번호</strong>
            <input id = "pwInput" type="password" name="password" placeholder="비밀번호 입력" style="border:0 solid black">
        </p>

        <hr style = "width: 480px;">

        
        <p>
            <input id = "button1" type="submit" value="Login">
        </p>
        <a id = "signup" href="Signup.jsp">회원가입</a>
        <a id = "SearchIdpw" href="#">아이디 / 비밀번호 찾기</a>
        </div>
    </form>
</body>
</html>

