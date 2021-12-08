<%-- 
    Document   : DeleteRecord
    Created on : Nov 26, 2021, 7:32:44 PM
    Author     : Arafat Hossain Ar
--%>

<%@page import="java.sql.*, java.util.*"%>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
    String id = request.getParameter("id");
    Connection con;
    PreparedStatement ps;
    String sql = "DELETE FROM records WHERE id="+id;

    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost/jspcrud", "root", "");
    ps = con.prepareStatement(sql);
    ps.executeUpdate();
    
    String redirectURL = "delete.jsp";
    response.sendRedirect(redirectURL);

%>
