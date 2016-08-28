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

               <br>
               <center>
                   <h4> <strong>Result of Voting</strong></h4>
               </center>
               <br>
                <table class="table table-bordered">
                  <thead>
                    <tr>
                      <th>Divisions</th>
                        <c:forEach var="party" items="${parties}">
                      <th>${party.name}</th>
                      </c:forEach>
                    </tr>
                  </thead>
                  <c:forEach var="entry" items="${results}">
                  <tbody>
                    <tr>
                      <td>${entry.key}</td>
                      <c:forEach var="party" items="${parties}">
                          <td>${entry.value[party.name]}</td>
                      </c:forEach>
                      
                     </tr>
                  </tbody>
                  </c:forEach>
                </table>
               </div>
           </div>
    </body>
</html>
