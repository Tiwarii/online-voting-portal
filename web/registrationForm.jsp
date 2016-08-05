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
                            <label for="last-name">Last name:</label>
                            <input type="text" class="form-control" id="last-name" placeholder="last name">
                        </div>
                          <div class="form-group">
                            <label for="district">District:</label>
                            <input type="text" class="form-control" id="district" placeholder="District">
                        </div>
                        <div class="form-group">
                            <label for="dob">Date of birth:</label>
                            <div class='input-group date' id='datetimepicker2'>
                                <input type="date" class="form-control" placeholder="mm/dd/yy"/>
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                    
                             </div>
                        </div>
                         
                          <div class="form-group">
                            <label for="ctn">Citizenship No.:</label>
                            <input type="text" class="form-control" id="ctn" placeholder="enter your citizenship number">
                        </div>
                        <div class="form-group">
                            <label for="vid">Voter ID:</label>
                            <input type="text" class="form-control" id="vid" placeholder="enter your voter id">
                        </div>
                          <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="email" class="form-control" id="email" placeholder="Enter email">
                          </div>
                          
                          <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </fieldset>
                
                    
            </div>   
            <script type="text/javascript">
            $(function () {
                $('#datetimepicker2').datetimepicker({
                    locale: 'ru'
                });
            });
             </script>
        </div>
    </body>
</html>
