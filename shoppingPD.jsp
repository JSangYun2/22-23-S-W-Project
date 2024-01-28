<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="product.productDTO" %>
<%@page import="product.productDAO" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/shoppingPD.css">
<script src="js/jquery-1.12.4.js" type="text/jscript"></script>
<script src="js/script.js" type="text/jscript"></script>

<meta charset="UTF-8">
<title>일루컴 쇼핑 페이지</title>

</head>
<body>
<%@include file = "dbconn.jsp" %>
        <div class = "top" id = "top">
            <jsp:include page="logo.jsp"></jsp:include>
            <form action ="search.jsp">
            <input id = "Search" type="text" name = "search">
            <input type = "submit" id = "Searchbutton" value = "검색">
            </form>
            <jsp:include page="menu.jsp"></jsp:include>
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
                <div class = "screen2" id = "screen2">
                    <div id = "screen3-2-1">
                        <h3 id = "font10">상품 목록</h3>
                        <%
                              ResultSet rs2 =null; 
								 String sql1 = "select * from member where id = ?";
                                pstmt = conn.prepareStatement(sql1);
                                String sessionID = (String)session.getAttribute("sessionId");
                                pstmt.setString(1, sessionID);
                                ResultSet rs1 = pstmt.executeQuery();
                                if(rs1.next()) {
                                        if(rs1.getInt("code") >= 1) {
                        %>
                        <button id="PDinsert" onclick="location.href='product_Add.jsp'"> 상품 등록 </button>
                        <%              }
                                }%>
                    </div>
                    <div id = "screen3-2-2">
                        <h3 id ="font11">상품 사진</h3>
                        <h3 id ="font12">상품 정보</h3>
                        <h3 id ="font11">가격</h3>
                    </div>
                    <hr>

                    <%
                        ResultSet rs = null;
                        String sql = "select * from product";
                        pstmt = conn.prepareStatement(sql);
                        rs = pstmt.executeQuery();
                        while (rs.next()) {
                    %>
                    <div id = "screen3-2-3">
                        <div id = "screenImg">
                            <img style="width:150px;height: 145px;" src ='image/product/<%=rs.getString("file")%>' >
                        </div>
                        <div id = "screenInfo">
                            <h2>상품 이름 : <%=rs.getString("p_name") %> </h2>
                            <p>상품 설명 : <%=rs.getString("p_description") %></p>
                            <p>수량 <%=rs.getString("p_unitstock") %>개 </p>
                        </div>
                        <div id = "screenPrice">
                            <h2 style ="margin: 0; height:80px">
                         <%=rs.getString("p_price") %> 원</h2>
                <button class = "btn btn-info"onclick="location.href='./PDinfo.jsp?id=<%=rs.getString("p_code")%>'">상품 상세정보</button>
                <%

                                pstmt = conn.prepareStatement(sql1);
                                 sessionID = (String)session.getAttribute("sessionId");
                                pstmt.setString(1, sessionID);
				rs2 = pstmt.executeQuery();

				 if(rs2.next() ){
			if(rs2.getInt("code")>=1){
                                                %>
                <button class = "btn btn-info"id="PDupdate" onclick="location.href = 'product_Update.jsp?p_code=<%=rs.getString("p_code")%>'"> 상품 수정 </button>
				
			
					
					<a href="product_delete.jsp?code=<%=rs.getString("p_code") %>" class = "btn btn-danger"id="PDdelete" onclick="deleteToProduct()" style = "margin-top:-40px;"> 상품 삭제 </a>
			
				
                                        <%
 	                               }
 		}

%>
 </div>



</div>
                    <hr>
                    <%
                        }
			rs1.close();
                        rs.close();
                        pstmt.close();
                        conn.close();
			if(rs2!=null)
				rs2.close();                    
%>
                </div>
        </div>
        <div id = "middle-2">
            <div id = "screen3-1">

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
        		sum += total;
        	
        %>
        <div id = "screenKartInfo" >
            <div id ="screenKartInfo1"> <a href ='PDinfo.jsp?id=<%=product.getP_code()%>'><img src='image/product/<%=product.getFile() %>' width="100" height="100"> </a> </div>
            <div id ="screenKartInfo2"> <%=product.getName() %> / <%=product.getQuantity()  %>개<br> <%=sum %>원</div>
        </div>
		<%} %>
    </div>
</body>
</html>

