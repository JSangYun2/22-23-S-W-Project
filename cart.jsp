<%@page contentType="text/html; charset=utf-8"%>
<%@page import="product.*"%>
<%@page import = "java.util.ArrayList"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<%
	String cartId=session.getId();
%>
<title>장바구니</title>
	
</head>
<body>
<script type="text/javascript">
		function deleteCart() {
			if(confirm("상품을 정말로 전부다 삭제 하시겠습니까")) {
				document.deleteToCart.submit();
			}else {
				document.deleteToCart.reset();
			}
		}
		function creditCart() {
			if(confirm("상품을 정말로 전부다 결제 하시겠습니까")) {
				document.creadit.submit();
			}else {
				document.creadit.reset();
			}
		}
	</script>
	<div class = "wrap" style="position: relative;">
		<jsp:include page="logo.jsp"/>

	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">장바구니</h1>
		</div>
	</div>
	<div class = "container">
		<div class = "row">
			<table width = "100%">
				<tr>
					<form name = "deleteToCart" action = "deleteCart.jsp" method="POST">
					<td align="left"><a href = "#" onclick="deleteCart()" class ="btn btn-danger">삭제하기</a></td>
					</form>
					
					<td align="right"></td>
					
				</tr>
			</table>
		</div>
		<div style ="padding-top:50px">
			<table class = "table table-hover" style="overflow: auto;">
				<tr>
					<th>이미지</th>
					<th>상품 이름</th>
					<th>가격</th>
					<th>수량</th>
					<th>총금액</th>
					<th>비고</th>
				</tr>
				<%
					int sum = 0;
				ArrayList<productDTO> cartList = (ArrayList<productDTO>) session.getAttribute("cartlist");
				if(cartList == null) 
					cartList =new ArrayList<productDTO>();
				
				for(int i = 0; i < cartList.size();i++) {
					productDTO product = cartList.get(i);
					int total = product.getP_price() * product.getQuantity();
					sum = sum + total;
				
				%>
				<tr>
					<td><img style = "width:200px;height: 200px;"src='image/product/<%=product.getFile()%>'></td> 
					<td><%=product.getName() %></td>
					<td><%=product.getP_price() %></td>
					<td><%=product.getQuantity() %></td>
					<td><%=total%></td>
					<td><a href = "./removeCart.jsp?id=<%=product.getP_code()%>" class = "badge badge-danger">삭제</a></td>
				</tr>
				<%
					}
				%>
				<tr>
					<th></th>
					<th></th>
					<th>총액</th>
					<th><%=sum%></th>
					<th></th>
				</tr>
			</table>
			<a href = "./shoppingPD.jsp" class = "btn btn-secondary">&laquo;쇼핑 계속하기</a>
		</div>
		<form name = "creadit" action="creditCart.jsp">
			<a href = "#" class = "btn btn-success"onclick ="creditCart()">결제하기</a>
		</form>
	</div>
	
	
	</div>
</body>
</html>