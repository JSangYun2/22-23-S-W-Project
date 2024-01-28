<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "product.*" %>
<%@include file = "dbconn.jsp" %>
<%
ArrayList<productDTO> cartlist = (ArrayList<productDTO>)session.getAttribute("cartlist");
Date now = new Date();
SimpleDateFormat sf = new SimpleDateFormat("yyyy.MM.dd hh:mm");
String today = sf.format(now);	

ResultSet rs = null;
%>


<%
	String sessionID = (String)session.getAttribute("sessionId");

if(sessionID == null) {
%>
	<script type="text/javascript">
		alert("아이디를 로그인해주세요.");
		history.go(-1);
	</script>

<%
} if(cartlist == null){
	cartlist = new ArrayList <productDTO>();
%>
	<script type="text/javascript">
		alert("장바구니가 비어있습니다.");
		history.go(-1);
	</script>
<%} 
	if(sessionID!=null) {
	PreparedStatement pstmt3 = null;
	String select_member = "select * from member where id = ?";
	pstmt3 = conn.prepareStatement(select_member);
	pstmt3.setString(1, sessionID);
	rs = pstmt3.executeQuery();
	if(rs.next()){
		if(rs.getString("address").equals(null)) {
			%>
			<script type="text/javascript">
				alert("주소가 빈칸입니다.");
				location.href = "MyPage.jsp";
			</script>
		<%}else if (rs.getString("address").equals(" ")) {%>
			<script type="text/javascript">
				alert("주소가 빈칸입니다.");
				location.href = "MyPage.jsp";
			</script>
		<% } else { 
			productDTO product = new productDTO();
			
			
			//삭제
				int j =0;
			 String insert_sql = "insert into creditCart(p_code,id,credit_Date,Quantity,sum) values(?,?,?,?,?)";
			 while (j<cartlist.size()) {
				 product = cartlist.get(j);
				 pstmt = conn.prepareStatement(insert_sql);
				 pstmt.setString(1, product.getP_code());
				 pstmt.setString(2, sessionID);
				 pstmt.setString(3, today);
				 pstmt.setInt(4, product.getQuantity());
				 pstmt.setInt(5, product.getQuantity()*product.getP_price());
				 pstmt.executeUpdate();
				 j++;
			 }
			
			
			//삭제
			 int i =0;
			 String sql = "update product set p_unitstock=p_unitstock-? where p_code = ?";
			 while (i<cartlist.size()) {
				 product = cartlist.get(i);
				 pstmt = conn.prepareStatement(sql);
				 pstmt.setInt(1, product.getQuantity());
				 pstmt.setString(2, product.getP_code());
				 pstmt.executeUpdate();
				 i++;
			 }
			 
			 session.removeAttribute("cartlist");
			 request.setAttribute("result", 1);
			}
		}
	}
	if(rs != null)
		rs.close();
	%>
<jsp:forward page="creditCart_process.jsp"></jsp:forward>
		
		
