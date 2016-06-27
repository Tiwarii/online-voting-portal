<%-- 
    Document   : addContestant
    Created on : Jun 26, 2016, 9:15:47 PM
    Author     : Rashmi Tiwari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="bootstrap/js/jquery.js"></script>

        <script >
            <%@include file="bootstrap/js/bootstrap.js" %>
        </script>
        <link rel="stylesheet" type="text/css" href="styleSheet.css">
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <div class="main">
            <div class="box1">
                <div>
                    <label><center> Enter contestant details below</center></label>
                </div>
            <fieldset class="scheduler-border">
                        <legend class="scheduler-border" >contestant:</legend>
                      <form role="form">
                          
                        <div class="form-group" >
                            <label for="name"> Name:</label>
                            <input type="text" class="form-control" id="name" placeholder="party name" >
                        </div>
                          
                        <div class="form-group">
                             <label for="members">No. of members: </label>
                             <input class="form-control"  type="number" id="members" placeholder="No. of members in party" >
                         </div>
                        
                        
                        </form>
                    </fieldset>
        
            </div>
        </div>
    </body>
</html>
