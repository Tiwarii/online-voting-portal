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
    <body >
         <%@include file="Header.jsp" %>
        <div class="main">
            <div class="box1">
            
              
                    <fieldset class="scheduler-border">
                       <center>
		<h3>${sessionScope.voter.firstName}</h3>
                your pin have successfully send to your email ... please check 
                and enter the pin for verification
                </center>
               <form method="get" action="VoterLoginHandler">

                    <p><input type="text" name="pin" value="" placeholder="#####"></p>
            
                    <p class="submit"><input type="submit" name="Login" value="Done"></p>
                </form>
	
                </fieldset>
                
                    
            </div>   
            
        </div>
                       
    </body>
</html>
