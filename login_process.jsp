<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file = "dbconn.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	String sql = "select * from member where id = ? and password = ?";
	
	ResultSet rs = null;
	pstmt = conn.prepareStatement(sql);
	int result = 0;
	
	pstmt.setString(1, id);
	pstmt.setString(2, password);
	rs = pstmt.executeQuery();
	
	if(rs.next()) {
		session.setAttribute("sessionId", id);
		session.setAttribute("sessionNickname", rs.getString("nickname"));
		session.setAttribute("code",rs.getString("code"));
		response.sendRedirect("./shoppingPD.jsp");

		
	}else {
		response.sendRedirect("./login.jsp?error=1");
	}
	conn.close();
	rs.close();
	pstmt.close();
%>

