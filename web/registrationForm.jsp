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
                      <form role="form" method="post"  name="formal" action="VoterRegistrationHandller">
                        <div class="form-group" >
                            <label for="first-name">First name:</label>
                            <input type="text" class="form-control" name="firstName" placeholder="first name">
                        </div>
                        
                          <div class="form-group">
                            <label for="last-name">Last name:</label>
                            <input type="text" class="form-control" name="lastName" placeholder="last name">
                        </div>
                          <div class="form-group">
                            <label for="district">District:</label>
                            <input type="text" class="form-control" name="district" placeholder="District">
                        </div>
                        <div class="form-group">
                            <label for="dob">Date of birth:</label>
                            <div class='input-group date' id='datetimepicker2'>
                                <input type="date" class="form-control" name="dob" placeholder="mm/dd/yy"/>
                                
                    
                             </div>
                        </div>
                         
                          <div class="form-group">
                            <label for="ctn">Citizenship No.:</label>
                            <input type="text" class="form-control" name="citizenshipNum" placeholder="enter your citizenship number">
                        </div>
                        <div class="form-group">
                            <label for="vid">Voter ID:</label>
                            <input type="text" class="form-control" name="voterId" id="voterId" placeholder="enter your voter id">
                        </div>
                          <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="email" class="form-control" name="email" placeholder="Enter email">
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
