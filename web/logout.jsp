<%-- 
    Document   : logout
    Created on : Jun 25, 2016, 5:15:40 PM
    Author     : Rashmi Tiwari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
        session.invalidate();
        response.sendRedirect("home.jsp");
        %>
    </body>
</html>
