<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file = "dbconn.jsp"%>
<%
Date now = new Date();
SimpleDateFormat sf = new SimpleDateFormat("yyyy.MM.dd hh:mm");
String today = sf.format(now);	

	String id = (String)session.getAttribute("sessionId");
	String sql = "insert into delete_member select * from member where id = ?";
	try{
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.executeUpdate();
	}catch(Exception e) {
		request.setAttribute("result", "오류");
	}
	try{
	sql = "update delete_member set delete_date =? where id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, today);
	pstmt.setString(2, id);
	pstmt.executeUpdate();
	}catch(Exception e){
		request.setAttribute("result", "종료 일이 추가가안됨");
	}
	try{
	sql = "delete from member where id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, (String)session.getAttribute("sessionId"));
	pstmt.executeUpdate();
	}catch(Exception e ){
		request.setAttribute("result", "삭제가 안됨");
	}
	request.setAttribute("result", null);

	if(conn != null) {
		conn.close();
	}
	if(pstmt != null) {
		pstmt.close();
	}
%>
<jsp:forward page="MyPageSuccess_delete.jsp"></jsp:forward>
