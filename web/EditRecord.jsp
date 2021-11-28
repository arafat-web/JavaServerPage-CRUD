<%-- 
    Document   : editRecord
    Created on : Nov 26, 2021, 10:04:46 PM
    Author     : Arafat Hossain Ar
--%>

<%@page import="java.sql.*, java.util.*"%>
<% Class.forName("com.mysql.jdbc.Driver");%>


<%
    String id = request.getParameter("id");
    try {
        Connection con;
        PreparedStatement ps;
        ResultSet resultSet;
        String sql = "select * from records where id=" + id;

        Class.forName("com.mysql.jdbc.Driver");
//        con = DriverManager.getConnection("jdbc:mysql://localhost/jspcrud", "root", "");
        con = DriverManager.getConnection("jdbc:mysql://sql6.freemysqlhosting.net/sql6454572", "sql6454572", "Qzyu2Xhpuy");
        ps = con.prepareStatement(sql);
        resultSet = ps.executeQuery();
        while (resultSet.next()) {

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP CRUD - Update</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <div class="container">
            <header>
                <h1>JSP CRUD SYSTEM</h1> 
            </header>
            <article>

                <form method="POST" action="edit-process.jsp">
                    <div class="form">
                        <label for="id"><b>ID</b></label>
                        <input type="number" value="<%=resultSet.getString("id")%>" name="id"  readonly>

                        <label for="name"><b>Name</b></label>
                        <input type="text" value="<%=resultSet.getString("name")%>" name="name" required>

                        <label for="phone"><b>Phone</b></label>
                        <input type="tel" value="<%=resultSet.getString("phone")%>" name="phone" required> 
                        <div style="max-width: 600px; margin: 0 auto; text-align: center;">
                            <button type="submit" class="btn success">Update Record</button>
                            <button type="button" class="btn success">Cancel</button>
                        </div>

                    </div>

                    <%                                                }
                            con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>

                </form>
            </article>

                      <jsp:include page="footer.jsp" />  
        </div>


    </body>
</html>
