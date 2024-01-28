<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID중복 확인</title>
</head>
<body>
        <div class = "text-center">
                <h3>* 상품코드 중복 확인 *</h3>
                <form method="POST" action="p_codeCheckPro.jsp" onsubmit="return blankCheck(this)">
                        상품코드 입력 : <input type ="text" name = "id" maxlength="14" autofocus>
                        <input type = "submit" value ="중복확인">
                </form>
        </div>

        <script>
                function blankCheck(f) {
                        var id =f.id.value;
                        id = id.trim();
                        if(id.length<=0) {
                                        alert("아이디는 1자 이상 입력해주십시오.");
                                        return false;
                        }
                }

        </script>
</body>
