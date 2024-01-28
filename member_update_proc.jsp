<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="dbconn.jsp" %>
<%
	int result = 0;

	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String nickname = request.getParameter("nickname");
	int phone = Integer.parseInt(request.getParameter("phone"));
	String address = request.getParameter("address");
	String email = request.getParameter("email");
	String id = (String)session.getAttribute("sessionId");
	
	String sql ="select * from member where id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	ResultSet rs = pstmt.executeQuery();
	
	if(rs.next()) {
		sql = "update member set name =?, password =?,nickname =?,phone =?,address =?, email =? where id =?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, password);
		pstmt.setString(3, nickname);
		pstmt.setInt(4, phone);
		pstmt.setString(5, address);
		pstmt.setString(6, email);
		pstmt.setString(7, (String)session.getAttribute("sessionId"));
		pstmt.executeUpdate();
		
		session.removeAttribute("sessionName");
		
		session.setAttribute("sessionNickname", nickname);
	}else {
		result = -1;
	}
	request.setAttribute("result", result);

	
	rs.close();
	pstmt.close();
	conn.close();
%>
<jsp:forward page="member_update_result.jsp"></jsp:forward>
