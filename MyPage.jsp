<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/styleMypage.css">
 <title>일루컴 마이페이지</title>
</head>
<body>
<%
	if(session.getAttribute("sessionId") == null) {
%>
	<script type="text/javascript">
		alert('아이디를 입력해주세요.')
		location.href="login.jsp";
	</script>
<%
	}
%>


<script type="text/javascript">
	function pwdchk() {
		if(!pwdChk.password.value) {
			alert("비밀번호를 쳐주세요");
			pwdChk.password.focus();
			return false;
		}
		return true;
	}
</script>
<div class = "top" id = "top">
        <jsp:include page="logo.jsp"></jsp:include>
        <jsp:include page="./menu.jsp"></jsp:include>
    </div>
    <hr>
    <div class = "middle" id = "middle">
        <h4>안녕하세요 <%=session.getAttribute("sessionNickname") %> 회원님!</h4>
        <div class = "left" id = "left">
                <a href="MyPage.jsp"><p id = "font7">My Page</p></a>
                <hr id = "hr1">
                <h4 id = "font4">나의 쇼핑 내역</h4>
                <a href="MyPage.jsp" onclick="alert('인증을 해주세요.')"><p id = "font5">회원 정보 수정</p></a>
                <a href="MyPage.jsp" onclick="alert('인증을 해주세요.')"><p id = "font6">회원 탈퇴</p></a>
        </div>
        <h1 id = "font8">회원 정보 수정</h1>
        <p id = "font9">고객님의 정보보호를 위해 최선을 다하겠습니다. </p>
        <p id = "font10">고객님의 개인정보 보호를 위해 본인확인을 진행합니다.</p>
        <p id = "font11">일루컴 비밀번호를 입력해주세요.</p>
        <form action = "MyPage_pwd_process.jsp" method="post" name = "pwdChk" onsubmit="return pwdchk()">
        <input type = "text" placeholder="비밀번호 입력" id = "inputPassword" name ="password">
        <input id = "button1" type="submit" value="확인">
        </form>
    </div>
</body>
</html>
