<%-- 
    Document   : delete
    Created on : Nov 26, 2021, 12:37:42 AM
    Author     : Arafat Hossain Ar
--%>

<%@page import="java.sql.*, java.util.*"%>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP CRUD - View</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <div class="container">
            <header>
                <h1>JSP CRUD SYSTEM</h1> 
            </header>

            <article>
                <h2>Delete Record</h2>
                <hr>


                <table>
                    <tr>
                        <td>ID</td>
                        <td>Name</td>
                        <td>Phone</td>
                        <td>Action</td>

                    </tr>
                    <%
                        try {
                            Connection con;
                            PreparedStatement ps;
                            ResultSet resultSet;
                            String sql = "select * from records";

                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://sql6.freemysqlhosting.net/sql6454572", "sql6454572", "Qzyu2Xhpuy");
                            ps = con.prepareStatement(sql);
                            resultSet = ps.executeQuery();
                            while (resultSet.next()) {

                    %>
                    <tr>
                        <td><%=resultSet.getString("id")%></td>
                        <td><%=resultSet.getString("name")%></td>
                        <td><%=resultSet.getString("phone")%></td>
                        <td style="text-align: center;" ><a href="DeleteRecord.jsp?id=<%=resultSet.getString("id")%>"><button type="button" class="danger">Delete</button></a></td>
                    </tr>
                    <%
                            }
                            con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                </table>
            </article>

                  <jsp:include page="footer.jsp" />  
        </div>


    </body>
</html>
