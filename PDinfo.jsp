<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import ="product.productDAO" %>
<%@page import ="product.productDTO" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/PDinfo.css">
<script src="js/jquery-1.12.4.js" type="text/jscript"></script>
<script src="js/script.js" type="text/jscript"></script>
<%@include file = "dbconn.jsp" %>
<meta charset="UTF-8">
<title>상품 상세정보</title>
<script type = "text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		}else {
			document.addForm.reset();
		}
	}
</script>
</head>
<body>


	<div class = "top" id = "top">
            <jsp:include page="logo.jsp"></jsp:include>
            <form action="#" method="post">
            <input id = "Search" type="text">
            <input type = "submit" id = "Searchbutton" value="검색">
            </form>
            <jsp:include page="./menu.jsp"></jsp:include>
        </div>

    <div id = "contents">
        <div class = "middle" id = "middle">
            <br>
            <div class = "screen1" id = "left">
                <div class="nav">
                        <ul class="menu">
                        <li><a href="#">CPU</a>
                            <ul class="submenu">
                                <li><a href="#">인텔</a></li>
                                <li><a href="#">인텔 12세대</a></li>
                                <li><a href="#">인텔 11세대</a></li>
                                <li><a href="#">인텔 10세대(R)</a></li>
                            </ul>
                        </li>
                        <li><a href="#">GPU</a>
                            <ul class="submenu">
                                <li><a href="#">NVIDIa 칩셋</a></li>
                                <li><a href="#">AMD 칩셋</a></li>
                                <li><a href="#">기타 칩셋</a></li>
                            </ul>
                        </li>
                        <li><a href="#">RAM</a>
                            <ul class="submenu">
                                <li><a href="#">4GB</a></li>
                                <li><a href="#">8GB</a></li>
                                <li><a href="#">16GB</a></li>
                            </ul>
                        </li>
                        <li><a href="#">파워서플라이</a>
                            <ul class="submenu">
                                <li><a href="#">ATX파워</a></li>
                                <li><a href="#">M-ATX(SFX)파워</a></li>
                                <li><a href="#">모듈러 파워</a></li>
                                <li><a href="#">TFX,Flex-ATX파워</a></li>
                                <li><a href="#">80 PLUS 인증 파워</a></li>
                                <li><a href="#">화이트 색상 파워</a></li>
                            </ul>
                        </li>
                        <li><a href="#">SSD/HDD</a>
                            <ul class="submenu">
                                <li><a href="#">128GB</a></li>
                                <li><a href="#">256GB</a></li>
                                <li><a href="#">512GB</a></li>
                                <li><a href="#">1TB</a></li>
                                <li><a href="#">2TB</a></li>
                            </ul>
                        </li>
                        <li><a href="#">메인보드</a>
                            <ul class="submenu">
                                <li><a href="#">인텔용 메인보드</a></li>
                                <li><a href="#">AMD용 메인보드</a></li>
                                <li><a href="#">DDR5 메모리 지원</a></li>
                                <li><a href="#"> PCld5.0 지원</a></li>
                                <li><a href="#">XMP / EXPO 지원</a></li>
                                <li><a href="#">WI-FI지원 메인보드</a></li>
                            </ul>
                        </li>

                    </ul>
                </div>
            </div>
            <%
            	request.setCharacterEncoding("UTF-8");
            	String code = request.getParameter("id");
            	session.setAttribute("code", code);
            	String sql = "select * from product where p_code = ?";
            	pstmt = conn.prepareStatement(sql);
            	pstmt.setString(1, code);
            	ResultSet rs = pstmt.executeQuery();
            	if(rs.next()){
            %>
                <div class = "screen2" id = "screen2">
                    <div class = "screen2-1" id = "screen2-1">
                          <img src= 'image/product/<%=rs.getString("file") %>' width="450" height="400">
                    </div>
                    <div class = "screen2-2" id = "ex2">
                        <h3 id="font4"><%=rs.getString("p_name") %></h3>
                        <h3 id="font5">
                           <%=rs.getString("p_description") %>  
                        </h3>
                        <h3 id="font6">
                            <%=rs.getString("p_unitstock") %>
                        </h3>
                        <h3 id="font6">
                            <%=rs.getString("p_category") %>
                        </h3><br>
                        <% if(rs.getString("p_category").equals("CPU")) { %>
                        <a href="exCPU.jsp" id = "font9">▶해당 부품 상세 정보 보러 가기 ◀</a>
                        <%}else if(rs.getString("p_category").equals("GPU")){ %>
                        <a href="exGPU.jsp" id = "font9">▶해당 부품 상세 정보 보러 가기 ◀</a>
                        <%}else if(rs.getString("p_category").equals("MAINBOARD")) {%>
                        <a href="exMainboard.jsp" id = "font9">▶해당 부품 상세 정보 보러 가기 ◀</a>
                        <%}else if(rs.getString("p_category").equals("POWER")) {%>
                        <a href="exPower.jsp" id = "font9">▶해당 부품 상세 정보 보러 가기 ◀</a>
                        <%}else if(rs.getString("p_category").equals("RAM")) {%>
                        <a href="exRAM.jsp" id = "font9">▶해당 부품 상세 정보 보러 가기 ◀</a>
                        <%}else if(rs.getString("p_category").equals("DISK")) { %>
                        <a href="explanation.jsp" id = "font9">▶해당 부품 상세 정보 보러 가기 ◀</a>	
                        <%}else{ %>
                        <a href="explanation.jsp" id = "font9">▶해당 부품은 카테고리에 없습니다. ◀</a>
                        <%} %>
                    </div>
                   
                    <div class = "screen2-3" id = "screen2-3">
                    	<form name ="addForm" action ="addCart.jsp?id=<%= rs.getString("p_code")%>" method="POST">
                        <a href="./cart.jsp" id="buybutton">구매하러 가기</a>
                        <a href="#" id="kartbutton" onclick="addToCart()">장바구니</a>
                        </form>
                        <h2 id="LowPrice"> <%=rs.getString("p_price") %> 원 </h2>
                        
                        <a id = "explain" href ="explanation.jsp">▶ 컴퓨터 부품에 대한 설명 보러가기</a>
                    </div>
                </div>
                 <% }
            		conn.close();
            		rs.close();
            		pstmt.close();
            	%>
        </div>  
        <div id = "middle-2">
            <div id = "screen3-1">
                
            </div>
            <div id = "screen3-2">
            </div>    
        </div>
    </div>
    <div id = "right" style = "overflow: auto;">
        <div id = "screenKartImage">
            <h3 id = "font-Kart"> <a href ="cart.jsp"><img src="image/basket2.jpg"> </a></h3>
        </div>
        <% 
        	int sum = 0;
        	ArrayList<productDTO> cartlist = (ArrayList<productDTO>)session.getAttribute("cartlist");
        	
        	
        	
        	if(cartlist ==null) {
        		cartlist = new ArrayList<productDTO>();
        	}
        	for(int i =0 ; i<cartlist.size();i++) {
        		productDTO product = cartlist.get(i);
        		int total = product.getP_price() * product.getQuantity();
        		sum+=total;
        	
        %>
        <div id = "screenKartInfo">
            <div id ="screenKartInfo1"> <a href ='PDinfo.jsp?id=<%=product.getP_code()%>'><img src='image/product/<%=product.getFile() %>' width="100" height="100"> </a> </div>
            <div id ="screenKartInfo2"> <%=product.getName() %> / <%=product.getQuantity() %>개<br> <%=total %>원</div>
        </div>
		<%} %>
		합계:<%=sum %>원
    </div>
	
</body>
</html>
