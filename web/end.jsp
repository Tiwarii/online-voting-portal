<%-- 
    Document   : end
    Created on : Jul 26, 2016, 9:12:13 AM
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
        <table><tr>
            <th>party</th>
            <th>number of votes</th>
            <th> percentage</th>
            
                </tr><%String query="select name,party,sum(value) from tblcandidate group by district";
                
                
                
                %>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                        

                     
        </table>
    </body>
</html>
