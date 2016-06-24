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
       
        <style>
            .main{ height:850px ; width:100%; margin-left:none; margin:none; padding-top:20px; }
            .right{ height:300px;  width:40%; padding-right:100px;position: absolute; margin-top:100px; 
                    right: 0px; padding-top: 50px; margin-right: 40px; }
            .modal-header, h4, .close { background-color: #185890; color:white !important; text-align: center; font-size: 30px;}
            .modal-footer {background-color: #f9f9f9;}
            label{color:#0e497c; font-family: cursive; font-size: 20px; display: ruby-base; }
            .button1 { box-shadow: 0 12px 16px 0 rgba(0,0,0,0.5), 0 16px 20px 0 rgba(0,0,0,0.19);background-color: #185890; /* Green */
                border: none;  color: white; padding: 5px 12px; text-align: center;display: inline-block;
                 font-size: 20px; border-radius: 17px 0px;}
            body {
                   background-image: url("Nepal-Flag-Wallpaper1.jpg");
                    background-repeat: no-repeat;
                    background-position: left top;
                    background-attachment: fixed;
                    background-size: 100% 100%;
                    
                    
                }
            .right1{ height:100px ; width:50%; padding-left:90px;position: absolute; 
                    right: 0px; padding-top: 10px;  }   
            .right2{ height:200px ; width:50%; padding-left:50px;position: absolute; 
                    right: 0px; padding-top: 10px;   margin-top: 400px; color:#0e497c; margin-right:40px;  font-family: cursive; font-size: medium; } 
        </style>
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
