<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<c:choose>
		<c:when test="${result == 0 }">
		
		<%response.sendRedirect("MyPageModify.jsp"); %>
		</c:when>
		<c:when test="${result == -1 }">
			<script type = "text/javascript">
			alert("비밀번호를 다시 입력해주세요.");
			history.go(-1);
			</script>
		</c:when>
			
	</c:choose>

</body>
</html>
