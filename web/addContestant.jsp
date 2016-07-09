<%-- 
    Document   : addContestant
    Created on : Jun 26, 2016, 9:15:47 PM
    Author     : Rashmi Tiwari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
                        <form  method="post" action="CandidateServlet">
                    
                        <div class="form-group" >
                            <label for="name"> Name:</label>
                            <input type="text" class="form-control" name="name" placeholder="Your name" >
                        </div>
                        <div class="form-group">
                             <label for="voterID">Voter ID: </label>
                             <input class="form-control"  type="text"  name="voterID" placeholder="Enter your Voter ID" >
                        </div>
                          <div class="form-group">
                             <label for="position">Post: </label>
                             <input class="form-control"  type="text"  name="position" placeholder="Enter your post for this election" >
                        </div>
                       <div  class="form-group" id="container">		
                             <p id="first">
                                 <label>Party:</label>
                            <select id="sample1" class="form-control small " name="selectParty" >
                                    <option value=""> </option>
                          
                                    <option value="Individual">Individual</option>
                                    <option value="Congress">Congress</option>
                                    <option value="Maoist">Maoist</option>
                                                
                            </select>
                             <div class="list-group">
                                 <label>Agendas:</label>
                                 <textarea class="list-group-item form-control "  name="agendas"></textarea>
                             </div>  
                             </div>                      
                        <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </fieldset>
        
            </div>
        </div>
    </body>
</html>
