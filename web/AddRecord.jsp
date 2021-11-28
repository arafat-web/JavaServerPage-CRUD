<%-- 
    Document   : AddRecord
    Created on : Nov 26, 2021, 1:10:49 AM
    Author     : Arafat Hossain Ar
--%>

<%@page import="java.sql.*, java.util.*"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<%

    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String phone = request.getParameter("phone");

    Connection con;
    PreparedStatement ps;
    String sql = "INSERT into records(id, name, phone) values(?, ?, ?)";

    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://sql6.freemysqlhosting.net/sql6454572", "sql6454572", "Qzyu2Xhpuy");
    ps = con.prepareStatement(sql);
    ps.setInt(1, Integer.parseInt(id));
    ps.setString(2, name);
    ps.setString(3, phone);
    ps.execute();
%>
<script>
    alert("Record Added Succesfully");
</script>
<%
    String redirectURL = "add.jsp";
    response.sendRedirect(redirectURL);

%>


