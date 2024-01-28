<%@page import="java.util.List"%>
<%@page import="product.productDTO"%>
<%@page import="product.productDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%
request.setCharacterEncoding("UTF-8");
	String id =(String)session.getAttribute("code");
	productDTO product = new productDTO();
	
	productDAO setProduct = new productDAO();
	
	ArrayList<productDTO> list = (ArrayList<productDTO>)session.getAttribute("cartlist");
	if(list ==null) list=new ArrayList<productDTO>();
	
	product = setProduct.setProduct(id);
	
	
	session.setAttribute("cartlist", list);
	
	int cnt = 0;
	productDTO goodsQnt = new productDTO();
	for(int i=0; i<list.size(); i++){
		goodsQnt = list.get(i);
		// 요청 파라미터 아이디 addCart.jsp?id=P1234의 상품이 장바구니에 이미 담겨있다면 해당 상품의 수량을 1증가
		if(goodsQnt.getP_code().equals(id)){ //리스트를 입력받은 값이 존재하면,
			cnt++; //cnt++
			int orderQuatity = goodsQnt.getQuantity()+1;
			goodsQnt.setQuantity(orderQuatity);

		}
	}
	if(cnt == 0) {

		list.add(product);
	}
	response.sendRedirect("PDinfo.jsp?id="+id);
%>