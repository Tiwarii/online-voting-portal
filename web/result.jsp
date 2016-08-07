<%-- 
    Document   : ballot
    Created on : Jul 10, 2016, 12:26:49 AM
    Author     : Rashmi Tiwari
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
        <%@page import="com.ovp.entities.Candidate"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="bootstrap/js/jquery.js"></script>
        <script >
            <%@include file="bootstrap/js/bootstrap.js" %>
        </script>
        
        <link rel="stylesheet" type="text/css" href="styleSheet.css">
    </head>
    <% 
       
        boolean readOnly = true;
        
       %>
    <body>
        <%@include file="Header.jsp" %>
       <div class="main">
           <div class="container">
               <br>
               <br>
               <center> <label>Select post you want to vote for &nbsp;</label>
                
                <div class="dropdown">
                    <button class="dropbtn btn-primary">Choose Post</button>
                    
                    <div class="dropdown-content">
                        <c:forEach var="campaign" items="${campaigns}">
                      <a href="./ResultServlet?campaign_id=${campaign.id}">${campaign.title}</a>
                        </c:forEach>
                    </div>
                </div>
                   </center>
               <br> 
               
               <br>
               <center>
                   <h4> <strong>vote for president</strong></h4>
               </center>
               <br>
                <table class="table table-bordered">
                  <thead>
                    <tr>
                      <th>Post</th>
                      <th>candidates</th>
                    </tr>
                  </thead>
                  <c:forEach var="entry" items="${results}">
                  <tbody>
                    <tr>
                      <td>${entry.key}</td>
                      <c:forEach var="candidate" items="${entry.value}">
                          <td>${candidate.name}<br><button type="button" class="btn btn-danger">${candidate.votes}</button> </td>
                       </c:forEach>
                    </tr>
                    
                  </tbody>
                  </c:forEach>
                </table>
               </div>
           </div>
      

    </body>
</html>
