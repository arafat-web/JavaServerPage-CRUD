<%-- 
    Document   : edit-process
    Created on : Nov 26, 2021, 10:14:24 PM
    Author     : Arafat Hossain Ar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*, java.util.*"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<%
    try {
        String ID = request.getParameter("id");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        
        int id = Integer.parseInt(ID);
        
        Connection con;
        PreparedStatement ps;
        String sql = "Update records set name= ?, phone= ? where id=" + id;

        Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://sql6.freemysqlhosting.net/sql6454572", "sql6454572", "Qzyu2Xhpuy");
        ps = con.prepareStatement(sql);
        ps.setString(1, name);
        ps.setString(2,phone);
        ps.executeUpdate();
    } catch (Exception ex) {
        out.println(ex);
    }
%>
<script>
    alert("Record Updated Succesfully");
</script>
<%
    String redirectURL = "edit.jsp";
    response.sendRedirect(redirectURL);

%>
