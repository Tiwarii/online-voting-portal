<%-- 
    Document   : partyRegistration
    Created on : Jul 9, 2016, 12:01:01 PM
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
                    <label><center> Enter District Area Name </center></label>
                </div>
            <fieldset class="scheduler-border">
                        <legend class="scheduler-border" >District Area</legend>
                      <form role="form" method="post"  name="formal" action="DistrictAreaServlet">
                    
                        <div class="form-group" >
                            <label for="name"> District Area</label>
                            <input type="text" class="form-control" name="district_area" placeholder="district_area" >
                        </div>
                                             
                        <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </fieldset>
        
            </div>
        </div>
    </body>
</html>
