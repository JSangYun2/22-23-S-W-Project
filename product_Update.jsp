<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file = "dbconn.jsp" %>
<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/PDinsert.css">
    <title>Document</title>
</head>
<body>
    <div class = "top" id = "top">
        <jsp:include page="logo.jsp"></jsp:include>
    </div>
    <hr>
    <div class="middle">
        <div class="middle0">
            <h2 style="text-align: center;"> 상품 수정 페이지입니다.</h2>
        </div>
        <%
        	request.setCharacterEncoding("UTF-8");
        	String p_code = request.getParameter("p_code");
        	String sql ="select * from product where p_code = ?";
        	pstmt = conn.prepareStatement(sql);
        	pstmt.setString(1, p_code);
        	ResultSet rs = pstmt.executeQuery();
        	if(rs.next()){
        %>
        <form action ="product_Update_pro.jsp" enctype="multipart/form-data" method="POST" name = "UpdateForm" onsubmit="return UpdateFo()">
        <div class="middle1">
            <tr>
                <td>
                    <h3 class ="describe"> 상품 종류</h3>
                    <select name = "p_category" id="p_category" >
                    	<option value="<%=rs.getString("p_category")%>"selected><%=rs.getString("p_category") %></option>
                        <option value="CPU">CPU</option>
                        <option value="GPU">GPU</option>
                        <option value="RAM">RAM</option>
                        <option value="POWER">파워 서플라이</option>
                        <option value="DISK">SSD/HDD</option>
                        <option value="MAINBOARD">MAINBOARD</option>
                      </select>
                </td>
            </tr>
            <input name = "image_file"type = "file" value = "image/product/<%=rs.getString("file")%>">
            <img style = "width: 150px;height: 150px;" src = 'image/product/<%=rs.getString("file")%>'>
        </div>
        <div class="middle2">
            <tr>
                <td>
                     <h3 class = "describe"> 상품 코드 </h3>
                     <p id = "p_code" class="code"> <%=p_code %></p>
                    <input type ="hidden" value = "<%=p_code%>" name = "p_code"> 

                     <br><br>
                </td>
            </tr>
            <tr>
                <td>
                    <h3 class ="describe"> 상품 이름</h3>
                    <input name ="p_name" value = "<%=rs.getString("p_name")%>"type="text" placeholder = "상품의 이름을 적어주세요" id ="p_name" class="name">
                    <br><br>
                </td>
            </tr>
            <tr>
                <td>
                    <h3 class ="describe"> 상품 가격</h3>
                    <input name = "p_price" value = "<%=rs.getString("p_price")%>"type="text" placeholder = "상품의 가격을 적어주세요" id ="p_price" class="name">
                    <br><br>
                </td>
            </tr>
            <tr>
                <td>
                    <h3 class ="describe"> 상품 재고</h3>
                    <input name = "p_unitStock" value = "<%=rs.getString("p_unitstock")%>"type="text" placeholder = "상품 재고를 적어주세요" id ="p_unitstock" class="unitstock">
                    <br><br>
                </td>
            </tr>
        </div>
        <div style = "margin-top: 100px;"class ="middle3">
            <tr>
                <td>
                    <h3 class ="describe"> 상품 설명</h3>
                    <input name = "p_description" value = "<%=rs.getString("p_description")%>" type="text" placeholder = "상품의 설명을 적어주세요" id ="p_description" class="description">
                </td>
            </tr>
            <br><br>
            <input type = "submit" value = "등록하기">
        </div>
        </form>
        <%}
        	conn.close();
        	pstmt.close();
        	rs.close();
        	%>
    </div>
</body>
</html>

