<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="product.productDTO" %>
    <%@page import ="product.productDAO" %>
    
<%@include file="dbconn.jsp" %>
<%
	String p_id = request.getParameter("code");
	
	String select_sql = "select * from product where p_code = ?";
	pstmt = conn.prepareStatement(select_sql);
	pstmt.setString(1, p_id);
	ResultSet rs = pstmt.executeQuery();

	productDAO dao = productDAO.getInstance();
	
	ArrayList<productDTO> cartList = (ArrayList<productDTO>)session.getAttribute("cartlist");
	productDTO goodsQnt = new productDTO();
	
	
	if(rs.next()) {
		 try {
			String delete_form = "delete from product where p_code =?";
			pstmt = conn.prepareStatement(delete_form);
			pstmt.setString(1, p_id);
			pstmt.executeUpdate();
			if(cartList != null ) {
				for (int i = 0; i < cartList.size();i++) {
					goodsQnt = cartList.get(i);
					if (goodsQnt.getP_code().equals(p_id)) {
						cartList.remove(goodsQnt);
					}
				}
			}
		 }catch (Exception e) {
			
		 }
	}
 response.sendRedirect("shoppingPD.jsp");

%>
