<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>일루컴 수정 페이지</title>
<link rel="stylesheet" href="css/styleMypage.css">
<script type="text/javascript">
		function formCheck() {
			if(!formChk.name.value) {
				alert("이름을 입력해주세요.");
				formChk.name.focus();
				return false;
			}if(!formChk.nickname.value) {
				alert("닉네임을 입력해주세요.");
				formChk.nickname.focus();
				return false;
			}if(!formChk.phone.value) {
				alert("전화번호를 입력해주세요.");
				formChk.phone.focus();
				return false;
			}if(!formChk.address.value) {
				alert("주소를 입력해주세요.");
				formChk.address.focus();
				return false;
			}
			if(!formChk.password.value) {
				alert("비밀번호를 입력해주세요.");
				formChk.password.focus();
				return false;
			}
			if(!formChk.email.value) {
				alert("이메일를 입력해주세요.");
				formChk.email.focus();
				return false;
			}
			if(formChk.name.value == " ") {
				alert("이름은 빈칸으로 할수없습니다.");
				formChk.name.focus();
				return false;
			}
			if(formChk.nickname.value == " ") {
				alert("닉네임은 빈칸으로 할수없습니다.");
				formChk.nickname.focus();
				return false;
			}
			if(formChk.phone.value == " ") {
				alert("전화번호는 빈칸으로 할수없습니다.");
				formChk.phone.focus();
				return false;
			}
			if(formChk.address.value == " ") {
				alert("주소는 빈칸으로 할수없습니다.");
				formChk.address.focus();
				return false;
			}
			if(formChk.password.value == " ") {
				alert("비밀번호는 빈칸으로 할수없습니다.");
				formChk.password.focus();
				return false;
			}if(formChk.email.value == " ") {
				alert("이메일은 빈칸으로 할수없습니다.");
				formChk.email.focus();
				return false;
			}
			
			
			return true;
		}
		
	</script>
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
<%@include file = "dbconn.jsp" %>
<%
	String sql = "select * from member where id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, (String)session.getAttribute("sessionId"));
	ResultSet rs = pstmt.executeQuery();
	if(rs.next()){
%>

    <div class = "top" id = "top">
        <jsp:include page="logo.jsp"></jsp:include>
        <jsp:include page="menu.jsp"></jsp:include>
    </div>
    <hr>
    <div class = "middle" id = "middle">
        <h4>안녕하세요 추춘봉 회원님!</h4>
        <div class = "left" id = "left">
                <a href="MyPage.jsp"><p id = "font7">My Page</p></a>
                <hr>
                <h4 id = "font4">나의 쇼핑 내역</h4>
                <a href="MyPageModify.jsp"><p id = "font5">회원 정보 수정</p></a>
                <a href="MyPageWithdrawal.jsp"><p id = "font6">회원 탈퇴</p></a>
                <hr>
        </div>
        <h1 id = "font8">회원 정보 수정</h1>
        <p id = "font9">고객님의 정보보호를 위해 최선을 다하겠습니다. </p>
		<form method = "post" name = "formChk" action = "member_update_proc.jsp" onsubmit="return formCheck()">
            <h4 id = "font13">변경 할 이름</h4>
        <input type = "text" value ="<%=rs.getString("name") %>" name= "name"placeholder="이름 입력" id = "inputPassword2">
        <h4 id = "font13">닉네임 변경</h4>
            <input type = "text" value = "<%=rs.getString("nickname") %>" name = "nickname" placeholder="닉네임 입력" id = "inputPassword2">
        <h4 id = "font13">휴대폰 변경</h4>
            <input type = "text" value = "<%=rs.getString("phone")%>"name ="phone" placeholder="휴대폰 입력" id = "inputPassword2">
        <h4 id = "font13">주소 변경</h4>
            <input type = "text" value = "<%=rs.getString("address")%>"name = "address" placeholder="주소 입력" id = "inputPassword2">
        <h4 id = "font13">비밀번호 변경</h4>
            <input type = "text" value = "<%=rs.getString("password") %>"name = "password" placeholder="비밀번호 입력" id = "inputPassword2">
 		<h4 id = "font13">이메일 변경</h4>
            <input type = "text" value = "<%=rs.getString("email") %>"name = "email" placeholder="이메일 입력" id = "inputPassword2">

        <input id = "button2" type="submit" value="수정">
        </form>
    </div>

	<%
	}
		rs.close();
		pstmt.close();
		conn.close();
	%>
</body>
</html>
