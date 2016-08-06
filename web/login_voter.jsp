<%-- 
    Document   : login
    Created on : Jun 24, 2016, 8:24:17 PM
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
        <LINK REL=StyleSheet HREF="style.css" TYPE="text/css" MEDIA=screen>
    </head>
    <body>
        <!-- Modal -->
     <div class="modal fade" id="myModal" role="dialog">
         <div class="modal-dialog">
    
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header" style="padding:35px 50px;">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h3><span class="glyphicon glyphicon-lock"></span> Login</h3>
                </div>
            <div class="modal-body" style="padding:40px 50px;">
                <form action="main.jsp" role="form">
                    <div class="form-group">
                        <label for="voterId"><span class="glyphicon glyphicon-user"></span> VoterID</label>
                        <input type="text" class="form-control" id="usrname" placeholder="Enter voterId">
                    </div>
                    <div class="form-group">
                      <label for="email"><span class="glyphicon glyphicon-eye-open"></span> Email</label>
                      <input type="text" class="form-control" id="psw" placeholder="Enter Email">
                    </div>
                    <button type="submit" class="btn btn-primary btn-block"><span class="glyphicon glyphicon-off"></span> Login</button>
                </form>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <p>Forgot <a href="#">Password?</a></p>
            </div>
            </div>
      
         </div>
    </div> 
         <script>
            $(document).ready(function(){
            $("#myBtn").click(function(){
            $("#myModal").modal();
             });
            });
         </script>  

   </body>
</html>
