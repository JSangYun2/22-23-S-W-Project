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
                        <script type="text/javascript">
                                alert("수정 완료!");
                                location.href = "shoppingPD.jsp";
                                </script>

                </c:when>
                <c:when test="${result == -1 }">
                        <script type = "text/javascript">
                        alert("알수없는 오류가 나타났습니다.");
                        history.go(-1);
                        </script>
                </c:when>

        </c:choose>

</body>
</html>
