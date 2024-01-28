<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	session.removeAttribute("sessionId");
	session.removeAttribute("sessionNickname");
	response.sendRedirect("shoppingPD.jsp");	

%>

