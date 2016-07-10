<%-- 
    Document   : ballot
    Created on : Jul 10, 2016, 12:26:49 AM
    Author     : Rashmi Tiwari
--%>

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
                      <a href="./voting?position=president">President</a>
                      <a href="#">Vice President</a>
                      <a href="#">Prime Minister</a>
                      <a href="#">Chief Minister </a>
                    </div>
                </div>
                   </center>
               <br>
               
               <br>
               <center>
                   <h4> <strong>vote for president</strong></h4>
               </center>
               <br>
                <table class="table table-condensed ">
                  <thead>
                    <tr>
                      <th>S.N.</th>
                      <th>logo</th>
                      <th>Name</th>
                      <th>Party</th>
                      <th>Vote</th>
                    </tr>
                  </thead>
                  <c:forEach var="candidate" items="${candidates}">
                  <tbody>
                    <tr>
                      <td>${candidate.id}</td>
                      <td>logo</td>
                      <td>${candidate.name}</td>
                      <td>${candidate.party}</td>
                      <td><button class="btn btn-primary btn-group-sm">vote me</button></td>
                    </tr>
                    
                  </tbody>
                  </c:forEach>
                </table>
               </div>
           </div>
      

    </body>
</html>
