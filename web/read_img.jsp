<%-- 
    Document   : read_img
    Created on : Aug 8, 2016, 2:29:01 PM
    Author     : Rashmi Tiwari
--%>

<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
       <%
 //retrieve image
           Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ovp", "root", "");
           
        PreparedStatement ps = con.prepareStatement("SELECT * FROM img_store WHERE id = ?");
        ps.setInt(1, 5);
        ResultSet rs = ps.executeQuery();
        
            String img_123;
                  String a_123=null;
                while(rs.next()) {
                    img_123 =  rs.getString("path");     
                    a_123 =  "images/" + img_123;
                }
%>    
                          <img src="<%=a_123%>" alt="<%=a_123%>" style="width:40px;height:40px;">
                  
        
    </body>
</html>
