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
        <link rel="stylesheet" type="text/css" href="styleSheet.css">
    </head>
    <body>
        
        <%@include file="Header.jsp" %>
        <div class="main">
            <div class="box1">
            
              <%
              String a = request.getParameter("a");
                      if(a==null){
                         a=""; 
                      }
              
              %>
                    <fieldset class="scheduler-border">
                        <legend class="scheduler-border" >  campaign:</legend>
                      <form role="form">
                        <div class="form-group" >
                            <label for="start-date">Start date:</label>
                            <input type="date" class="form-control" id="start-date" value="2017/06/02" <%=a.equals("a")?"readonly":""%>>
                        </div>
                          
                        <div class="form-group">
                             <label for="endDate">End Date:</label>
                             <input class="form-control"  type="date" id="endDate" value="2017/07/22" <%=a.equals("a")?"readonly":""%>>
                         </div>
                        
                        
                        </form>
                    </fieldset>
                
                    
            </div>    
        </div>
        
    </body>
</html>
