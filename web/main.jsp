<%-- 
    Document   : main
    Created on : Jun 2, 2016, 5:41:01 PM
    Author     : Rashmi Tiwari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
        <style>
            .main{ height:850px ; width:100%; margin-left:none; margin:none; padding-top:100px; background-color:cornsilk;}
            .box1{ height:270px ; width:50%; padding-left:80px; margin:none; padding-top: 50px;  background-color:cornsilk;}
            
            .endDate{border-radius:7px 0px; width:250px; border-color:wheat; border-style:solid; padding:3px 3px 3px 3px;   color:black;
                       background-color:#f3cf9d; text-align:center; font-style:oblique; font-family:fantasy; }
            .container{width: 50%;}
            fieldset.scheduler-border {border: 1px groove #ddd !important; padding: 0 1.4em 1.4em 1.4em !important;border:none;
          margin: 0 0 1.5em 0 !important; -webkit-box-shadow:  0px 0px 0px 0px #000;  box-shadow:  0px 0px 0px 0px #000;}

            legend.scheduler-border { font-size: 1.2em !important; font-weight: bold !important; text-align: left !important;}
             
          
        </style>
       
    </head>
    <body>
        
        <%@include file="Header.jsp" %>
        <div class="main">
            <div class="box1">
            
              
                    <fieldset class="scheduler-border">
                        <legend class="scheduler-border" >campaign:</legend>
                      <form role="form">
                        <div class="form-group" >
                            <label for="start-date">Start date:</label>
                            <input type="date" class="form-control" id="start-date" value="2017/06/02">
                        </div>
                          
                        <div class="form-group">
                             <label for="endDate">Password:</label>
                            <input class="form-control" type="date" id="endDate" value="2017/07/22">
                         </div>
                        
                          <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="email" class="form-control" id="email" placeholder="Enter email">
                          </div>
                          <div class="form-group">
                            <label for="pwd">Password:</label>
                            <input type="password" class="form-control" id="pwd" placeholder="Enter password">
                          </div>
                          <div class="checkbox">
                            <label><input type="checkbox"> Remember me</label>
                          </div>
                          <button type="submit" class="btn btn-default">Submit</button>
                        </form>
                    </fieldset>
                
                    
            </div>    
        </div>
        
    </body>
</html>
