<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src = "js/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="./css/styleMypage.css">
<title>일루컴 회원탈퇴 페이지</title>
</head>
<body>

<%
	if(session.getAttribute("sessionId")== null) {
		%>
		<script type="text/javascript">
			alert("잘못된 경로입니다.");
			history.go(-1);
		</script>
	
	<% }%>

<script type="text/javascript">
	function deleteForm1() {
		
		if (!$("input:checked[id='checkbox1']").is(":checked")){ alert("체크를 해주세요."); $("#checkbox1").focus(); return false; }
		
		
		return true;
	}
</script>
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
                <a onclick = "alert('인증을 해주세요.')"href="MyPage.jsp"><p id = "font5">회원 정보 수정</p></a>
                <a href="MyPageWithdrawal.jsp"><p id = "font6">회원 탈퇴</p></a>
                <hr>
            
        </div>
        <h1 id = "font8">회원 정보 수정</h1>
        <p id = "font9">고객님의 정보보호를 위해 최선을 다하겠습니다. </p><br><br><br>
        <p id = "center">탈퇴 후 회원정보 및 개인형 서비스 이용기록은 모두 삭제됩니다.<br>
            회원정보 및 메일, 블로그, 주소록 등 개인형 서비스 이용기록은 모두 삭제되며, <br>
            삭제된 데이터는 복구되지 않습니다.<br>
            삭제되는 내용을 확인하시고 필요한 데이터는 미리 백업을 해주세요. <br>
            이용약관에 따라 5년은 저장되고 5년후에 즉시 삭제됩니다.</p>
            <form action = "member_delete.jsp" method="post" name = "deleteForm" onsubmit="return deleteForm1()">
       			<input type="checkbox" name = "Checkbox" id = "checkbox1"><p id = "font14">안내 사항을 모두 확인하였으며, 이에 동의합니다</p>
       			<input id = "button3" type="submit" value="확인"> 
       		</form>
    </div>
</body>
</html>
