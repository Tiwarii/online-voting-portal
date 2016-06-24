<%-- 
    Document   : home
    Created on : Jun 3, 2016, 10:59:14 PM
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
        <link rel="stylesheet" type="text/css" href="style.css">
            </head>
    <body>
        <div class="main">
            <div class="right1">
                <label  ><h1>Election Commission of Nepal </h1> </label>
            </div>
            <br>
            <div class="right" >
                <center>
                    <label >  login as </label>
                </center>
                <br>
  <!-- Trigger the modal with a button -->
  <div class="btn-group btn-group-justified">
    <a href="main.jsp?a=a" class="btn btn-primary btn-block button1">Voter</a>
  </div>
  <br><br>
  <div>
  <button type="button" class="btn btn-primary btn-group-justified button1" id="myBtn">Election&nbsp;commissioner</button>

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
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="text" class="form-control" id="usrname" placeholder="Enter email">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="text" class="form-control" id="psw" placeholder="Enter password">
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
  </div>
            </div>
            <div class="right2">
                <center> "Ballot is stronger than bullet".<br><br> "your VOTE is your VOICE".<br><br> "If you don't VOTE
                    you lose the right to complain".<br>
                </center> 
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