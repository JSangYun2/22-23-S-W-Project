<%@page import="java.sql.*"%> <%-- JDBC API 임포트 작업 --%>
<%
    String driverName="com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/Webmarket";
    String user = "pi";
    String pwd ="gksdnqls103~";
   
    try{
        Class.forName(driverName);     
    }catch(ClassNotFoundException e){
        out.println("Where is your mysql jdbc driver?");
        e.printStackTrace();
        return;
    }
   
    //[2]데이타베이스 연결 
    Connection conn = DriverManager.getConnection(url,user,pwd);
	PreparedStatement pstmt = null;
%>
