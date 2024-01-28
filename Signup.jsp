<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<link rel="stylesheet" href="./css/Sign.css">
<head>
    <title>SW프로젝트 웹사이트 일루컴 회원가입 페이지</title>
    <script src="./js/Signup.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body>
    <div class = "lab">

   <a href="index.jsp"><img src="image/logo.JPG" id ="logo"></a>
    <form method = "post" name = "createForm" action = "Signup_proc.jsp" onsubmit="return check()" >
    
    <h1 id = "Member">일반 회원</h1>
    <div id="ex1"><h3 id="ex2">아래 항목을 모두 필수로 입력해주세요.</h3></div><br><br><br><br><br><br>

    <input type="checkbox" id="checkbox1" onclick='selectAll(this)'><h3 id="Checkboxfont1">약관 모두 동의하기</h3>
    
    <input type="checkbox" onclick = "inform()"name = "Checkbox" id="checkbox2"><h3 id="Checkboxfont2">만 14세 이상입니다.</h3>
    <h3 id="CheckboxfontRed1">(필수)</h3>

    <input type="checkbox"onclick = "inform()" name = "Checkbox" id="checkbox3"><h3 id="Checkboxfont2">서비스 이용 약관</h3>
    <h3 id="CheckboxfontRed2">(필수)</h3>

    <input type="checkbox"onclick = "inform()" name = "Checkbox" id="checkbox4"><h3 id="Checkboxfont2">개인정보 수집 및 이용</h3>
    <h3 id="CheckboxfontRed3">(필수)</h3>

    <h4 id = "emailadr">이메일 주소</h4>
    <input name = "email" type="text" placeholder = "이메일 주소 입력" id = "inputText">

    <h4 id = "id">아이디</h4>
    <input name ="id"  type="text" placeholder = "영문 4자 이상, 최대 20자, 특수문자 사용 불가능" id = "inputText2">

    <h4 id ="password">비밀번호</h4>
    <input name = "password" type="password" placeholder = "숫자, 영문, 특수문자 포함 최소 8자 이상" id = "inputText3">

    <h4 id = "password2">비밀번호 확인</h4>
    <input name = "passwordCheck" type="password" placeholder = "숫자, 영문, 특수문자 포함 최소 8자 이상" id = "inputText4">

    <h4 id = "name">이름</h4>
    <input name = "name" type="text" placeholder = "한글 8자, 영문 16자 까지 가능" id = "inputText5">

    <h4 id = "nickname">닉네임</h4>
    <input name = "nickname" type="text" placeholder = "한글 8자, 영문 16자 까지 가능" id = "inputText6">

    <input id = "loginbutton" type="submit" value="등록">
    </form>
    <button id = "doubleCheck" onclick="idCheck()"> 중복체크 </button>
    </div>
</body>
</html>
