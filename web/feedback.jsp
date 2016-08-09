<%-- 
    Document   : feedback
    Created on : Jul 26, 2016, 9:03:20 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <script type="text/javascript" src="Date.jsp"></script>
                       <script type="text/javascript" src="js/time.js"></script>

    <title>Candidate List</title>
    <link rel="stylesheet" href="css/login_style.css">
 <script type="text/javascript">
</script>
    </head>
    <body onload="notify_date()">
        <h1>Hello World!</h1>
        <form action="regardings">
             Would you ike to enter somethin that will bw a message regarding if your favorite candidate wins then what are the thing do you expect to be done by him/her .
                            You should enter the candidate name who you want to send a message and  your thought too.
            <form method="post" name="form">
            
                           
                               <tr>   <td>Candidate</td> <td> <input type="text" name="candidate"  ></td></tr>
                               <tr>

                                   <td>wish</td><td><input type="text" name="wish"  ></td>
                               </tr>
                               <input type="submit" value="post" name="page" value="post" onclick="javascript:form.action='post';"/>
                          
                   <input type="submit" value="checkout" name="page" value="checkout" onclick="javascript:form.action='checkout';"/>       
            </form>
    </body>
</html>
