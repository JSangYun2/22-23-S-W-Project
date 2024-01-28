<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@include file = "dbconn.jsp" %>
<!DOCTYPE html>
<html >
<link rel="stylesheet" href="css/styleMypage.css">
<head>
    <title>일루컴 회원탈퇴 페이지</title>
</head>
<body>
    <div class = "top" id = "top">
        <jsp:include page="logo.jsp"></jsp:include>
        <jsp:include page="menu.jsp"></jsp:include>
    </div>
    <hr>
   <c:choose>
		<c:when test="${result == null }">
			 <div class = "middle" id = "middle">
        <h4>안녕하세요 추춘봉 회원님!</h4>
        <div class = "left" id = "left">
                <a href="MyPage.jsp"><p id = "font7">My Page</p></a>
                <hr>

                <h4 id = "font4">나의 쇼핑 내역</h4>
                <a href="login.jsp" onclick="alert('다시 로그인 해주세요.')"><p id = "font5">회원 정보 수정</p></a>
                <a href="login.jsp" onclick="alert('다시 로그인 해주세요.')"><p id = "font6">회원 탈퇴</p></a>
                <hr>

        </div>
        <h1 id = "font8">회원 정보 수정</h1>
        <p id = "font9">고객님의 정보보호를 위해 최선을 다하겠습니다. </p><br><br><br>
        <h1 id = "font15">일루컴 회원탈퇴 안내</h1>
        
        <p style = "margin-left : 410px; margin-top:-10px;">안녕하세요. <%=session.getAttribute("sessionNickname") %> 회원님<br>
            고객님의 일루컴 회원탈퇴가 완료되었습니다.<br>
            그 동안 일루컴 서비스를 이용해 주신 고객님께 진심으로 감사드립니다.</p>
        <h4 id = "font20">탈퇴일</h4>
        <%
        	String sql = "select * from delete_member where id = ?";
        	pstmt = conn.prepareStatement(sql);
        	pstmt.setString(1, (String)session.getAttribute("sessionId"));
        	ResultSet rs = pstmt.executeQuery();
        	if(rs.next()) {
        %>
        <p id = "font21"><%=rs.getString("delete_date") %></p>
        <%} 
        	pstmt.close();
        	rs.close();
        	conn.close();
        	
        	session.invalidate();
        %>
    </div>
    <button id = "button4" onclick="location.href='index.jsp'">홈으로</button>
		</c:when>
		
		<c:when test="${result != null }">
			<script type = "text/javascript">
			alert("회원 삭제 실패.");
			history.go(-1);
			</script>
		</c:when>
	</c:choose>
</body>
</html>
