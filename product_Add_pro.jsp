<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@include file = "dbconn.jsp"%>
<%
        request.setCharacterEncoding("UTF-8");

		String file_image = "/image/product";
		String realPath = application.getRealPath(file_image);
		int max = 1024*1024*10;
		
		MultipartRequest mq = new MultipartRequest(request,realPath,max,"UTF-8", new DefaultFileRenamePolicy());

		String p_code= mq.getParameter("p_code");
		String p_name = mq.getParameter("p_name");
		int p_price = Integer.parseInt(mq.getParameter("p_price"));
		String p_category = mq.getParameter("p_category");
		int p_unitStock = Integer.parseInt(mq.getParameter("p_unitStock"));
		String p_description = mq.getParameter("p_description");
		String file = mq.getFilesystemName("image_file");
		String id = (String)session.getAttribute("sessionId");

        Date now = new Date();
        SimpleDateFormat sf = new SimpleDateFormat("yyyy.MM.dd hh:mm");
        String today = sf.format(now);

        int result = 0;
        int idCk = 0;
        int code =0;

        String sql = "select * from product where p_code= ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, p_code);
        ResultSet rs = pstmt.executeQuery();

        if(rs.next()) {
                idCk = -1;
        }else {
        	sql = "insert into product values(?,?,?,?,?,?,?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, p_code);
            pstmt.setString(2, p_name);
            pstmt.setInt(3, p_price);
            pstmt.setString(4, p_description);
            pstmt.setString(5, p_category);
            pstmt.setInt(6, p_unitStock);
            pstmt.setString(7, today);
            pstmt.setString(8, file);
            pstmt.setString(9, id);
            result = pstmt.executeUpdate();

        }
        request.setAttribute("result", result);
        request.setAttribute("idCk", idCk);


        if(rs != null) {
                rs.close();
        }
        if(conn != null) {
                conn.close();
        }
        if(pstmt != null) {
                pstmt.close();
        }

%>
<jsp:forward page="product_Add_result.jsp"/>
