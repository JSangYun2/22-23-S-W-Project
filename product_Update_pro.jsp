<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="dbconn.jsp" %>
<%
        int result = 0;
		request.setCharacterEncoding("UTF-8");
		String file_image = "/image/product";
		String realPath = application.getRealPath(file_image);
		int max = 1024*1024*10;
			
		MultipartRequest mq = new MultipartRequest(request,realPath,max,"UTF-8", new DefaultFileRenamePolicy());
        
        String p_code = mq.getParameter("p_code");
        String p_category = mq.getParameter("p_category");
        String p_name = mq.getParameter("p_name");
        int p_price = Integer.parseInt(mq.getParameter("p_price"));
        int p_unitStock = Integer.parseInt(mq.getParameter("p_unitStock"));
        String p_description = mq.getParameter("p_description");
        String file = mq.getFilesystemName("image_file");
		Runtime.getRuntime().exec("chmod 777 " + realPath+file);

        String sql ="select * from product where p_code = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,p_code);
        ResultSet rs = pstmt.executeQuery();

        if(rs.next()) {
                sql = "update product set p_name = ?, p_price =?, p_description =?, p_category =?,p_unitstock=?,file=? where p_code =?";
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, p_name);
                pstmt.setInt(2, p_price);
                pstmt.setString(3, p_description);
                pstmt.setString(4, p_category);
                pstmt.setInt(5, p_unitStock);
                pstmt.setString(6, file);
                pstmt.setString(7, p_code);
                pstmt.executeUpdate();

        }else {
                result = -1;
        }
        request.setAttribute("result", result);


        rs.close();
        pstmt.close();
        conn.close();
	%>
<jsp:forward page="product_Update_result.jsp"/>

