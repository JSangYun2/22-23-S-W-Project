<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="product.*" %>
<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("products.jsp");
		return;
	}
	
	productDAO dao = productDAO.getInstance();
			
	ArrayList<productDTO> cartList = (ArrayList<productDTO>)session.getAttribute("cartlist");
	productDTO goodsQnt = new productDTO();
	for (int i = 0; i < cartList.size();i++) {
		goodsQnt = cartList.get(i);
		if (goodsQnt.getP_code().equals(id)) {
			cartList.remove(goodsQnt);
		}
	}
	
	response.sendRedirect("cart.jsp");
%>