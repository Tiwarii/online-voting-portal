<%-- 
    Document   : registrationForm
    Created on : Jun 2, 2016, 10:25:23 PM
    Author     : Rashmi Tiwari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="styleSheet.css">
         <script type="text/javascript">
          </script>
    </head>
    <body onload="pig()">
         <%@include file="Header.jsp" %>
        <div class="main">
            <div class="box1">
            
              
                    <fieldset class="scheduler-border">
                         <legend class="scheduler-border" >Registration:</legend>
                      <form role="form"  method="post" action="submitemail" id="myForm">
                             <input type="hidden" name="page" value="emailpin1" >
                             <h1>${mesemail1}</h1>
                       
                        <div class="form-group" id="emailpin">
                      
                            <label >Pin:</label>
                            <input type="text" class="form-control" id="pin" name="pin" placeholder="pin">
                           <input type="submit" id="btn2" value="submit" >
                        
                       </form>  </div>
                    </fieldset>
                
                    
            </div>   
            
        </div>
                       
    </body>
</html>
