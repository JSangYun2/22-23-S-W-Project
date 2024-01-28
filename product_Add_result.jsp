<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
        <c:choose>
                <c:when test="${idCk == -1 }">
                        <script type="text/javascript">
                                        alert("이미 등록된 상품코드 입니다.");
                                        history.go(-1);
                        </script>
                </c:when>
                <c:when test="${result > 0 }">
                		<script type="text/javascript">
                			alert("등록 성공!!");
                		</script>
                        <jsp:forward page="shoppingPD.jsp"></jsp:forward>
                </c:when>
                <c:when test="${result == -1 }">
                        <script type = "text/javascript">
                        alert("상품 등록 실패.");
                        history.go(-1);
                        </script>
                </c:when>

        </c:choose>
</body>
</html>
