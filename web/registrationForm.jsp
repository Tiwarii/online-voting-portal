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
        <style>
            .main{ height:850px ; width:100%; margin-left:none; margin:none; padding-top:100px; background-color:cornsilk;}
            .box1{ height:700px ; width:50%; padding-left:80px; margin:none; padding-top: 50px;  background-color:cornsilk;}
            
            .endDate{border-radius:7px 0px; width:250px; border-color:wheat; border-style:solid; padding:3px 3px 3px 3px;   color:black;
                       background-color:#f3cf9d; text-align:center; font-style:oblique; font-family:fantasy; }
            
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
                        <legend class="scheduler-border" >Registration:</legend>
                      <form role="form">
                        <div class="form-group" >
                            <label for="first-name">First name:</label>
                            <input type="text" class="form-control" id="first-name" placeholder="first name">
                        </div>
                        <div class="form-group">
                            <label for="middle-name">Middle name:</label>
                            <input type="text" class="form-control" id="middle-name" placeholder="middle name">
                        </div>
                        <div class="form-group">
                            <label for="last-name">Last name:</label>
                            <input type="text" class="form-control" id="last-name" placeholder="last name">
                        </div>
                         <div class="form-group">
                            <label for="dob">Date of birth:</label>
                            <input type="date" class="form-control" id="dob" placeholder="mm/dd/yy">
                        </div>
                          <div class="form-group">
                            <label for="ctn">Citizenship No.:</label>
                            <input type="number" class="form-control" id="ctn" placeholder="enter your citizenship number">
                        </div>
                        <div class="form-group">
                            <label for="vid">Voter ID:</label>
                            <input type="number" class="form-control" id="vid" placeholder="enter your voter id">
                        </div>
                          <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="email" class="form-control" id="email" placeholder="Enter email">
                          </div>
                          
                          <button type="submit" class="btn btn-default">Submit</button>
                        </form>
                    </fieldset>
                
                    
            </div>    
        </div>
    </body>
</html>
