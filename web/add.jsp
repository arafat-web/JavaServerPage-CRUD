<%-- 
    Document   : add
    Created on : Nov 26, 2021, 12:37:10 AM
    Author     : Arafat Hossain Ar
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP CRUD - Add</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <div class="container">
            <header>
                <h1>JSP CRUD SYSTEM</h1> 
            </header>

            <article>
                <h2>Add Record</h2>
                <hr>

                <form method="POST" action="AddRecord.jsp">
                    <div class="form">
                        <label for="id"><b>ID</b></label>
                        <input type="number" placeholder="Enter ID" name="id"  required>

                        <label for="name"><b>Full Name</b></label>
                        <input type="text" placeholder="Enter Full Name" name="name" required>

                        <label for="phone"><b>Enter Phone</b></label>
                        <input type="tel" placeholder="Enter Phone" name="phone" required> 
                        <div style="max-width: 600px; margin: 0 auto; text-align: center;">
                            <button type="submit" class="btn success">Add Record</button>
                        </div>

                    </div>

                </form>
            </article>

  <jsp:include page="footer.jsp" />  

        </div>


    </body>
</html>