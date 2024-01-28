<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file = "dbconn.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	int result = 0;

	String id = (String)session.getAttribute("sessionId");
	String password = request.getParameter("password");
	
	String sql = "select * from member where id = ? and password = ?";
	
	
	ResultSet rs = null;
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, password);
	rs = pstmt.executeQuery();
	
	if(rs.next()) {
		
		
	}else {
		result = -1;
	}
	
	request.setAttribute("result", result);
	conn.close();
	rs.close();
	pstmt.close();
%>
<jsp:forward page="MyPage_result.jsp"></jsp:forward>
