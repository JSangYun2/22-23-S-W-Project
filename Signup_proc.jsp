<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@include file = "dbconn.jsp"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String nickname = request.getParameter("nickname");
	
	Date now = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy.MM.dd hh:mm");
	String today = sf.format(now);
	
	int result = 0;
	int idCk = 0;
	int code =0;
	
	String sql = "select * from member where id = ?"; 
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	ResultSet rs = pstmt.executeQuery();
	
	if(rs.next()) {
		idCk = -1;
	}else {
		sql = "insert into member values(?,?,?,?,?,?,?,?,?,?)"; 
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2,password);
		pstmt.setString(3,name);
		pstmt.setString(4,nickname);
		pstmt.setString(5,email);
		pstmt.setInt(6, 010);
		pstmt.setString(7," ");
		pstmt.setInt(8,code);
		pstmt.setString(9,today);
		pstmt.setString(10,null);
		result = pstmt.executeUpdate();
		request.setAttribute("id", id);
		request.setAttribute("nickname", nickname);
		
	}
	request.setAttribute("result", result);
	request.setAttribute("idCk", idCk);
	
	
	if(rs != null) {
		rs.close();
	}
	if(conn != null) {
		conn.close();
	}
	if(pstmt != null) {
		pstmt.close();
	}
	
%>
<jsp:forward page="Signup_result.jsp"/>
