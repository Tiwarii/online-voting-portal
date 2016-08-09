<%-- 
    Document   : emailreg
    Created on : Jul 29, 2016, 9:20:15 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
$(document).ready(function () {

    $('#myform').validate({ // initialize the plugin
        rules: {
            field1: {
                required: true,
                email: true
            },
            field2: {
                required: true,
                minlength: 5
            }
        }
    });

});
</script>
        
        <style>
            input{
    display:inline-block;
    position:relative;
}
input:last-child{
    left:-40px;
}
        </style>
    </head>
    <body>
       <input type='text' />
<input type='submit' value='GO'/>
        
    </body>
</html>
