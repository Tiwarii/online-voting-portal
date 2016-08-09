<%-- 
    Document   : a
    Created on : Jul 25, 2016, 11:39:29 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="bag">
            <img src="pictures/bag.jpg" id="1" name="pic"/></div>
    </body>
</html>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
$("#bag").click(function() {
    var src=$(this).attr("src");
    var id=${this}.attr("id");
    ("#pic").attr("src",src);
    ("#pic").attr("id",id);
    $.get("AjuxServlet",function(data){
        console.log(data);
    });
    });
    </script>