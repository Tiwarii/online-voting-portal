<%-- 
    Document   : addContestant
    Created on : Jun 26, 2016, 9:15:47 PM
    Author     : Rashmi Tiwari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
        <%@page import="com.ovp.entities.Campaign"%>
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
                    <label><center> Enter candidate details below</center></label>
                </div>
            <fieldset class="scheduler-border">
                        <legend class="scheduler-border" >Candidate form:</legend>

                    <form  method="post" action="CandidateServlet" enctype="multipart/form-data">
                            <div  class="form-group" id="container">		
                             <p id="first">
                                 <label>Campaign:</label>
                            <select  name="selectCampaign" class="form-control small" >
                                <c:forEach var="campaign" items="${campaigns}">
                                    <option value="${campaign.id}"> <c:out value="${campaign.title}" /></option>
                                </c:forEach>
                                                
                            </select>
                        <div class="form-group" >
                            <label for="name"> Name:</label>
                            <input type="text" class="form-control" name="name" placeholder="Your name" >

                        <div class="form-group">
                             <label for="voterID">Voter ID: </label>
                             <input class="form-control"  type="text"  name="voterID" placeholder="Enter your Voter ID" >
                        </div>
                             
                          <div  class="form-group" id="container">		
                             <p id="first">
                                 <label>Electoral Area:</label>
                            <select name="districtArea" class="form-control small ">
                                    <c:forEach var="districtArea" items="${districtAreas}">
                                    <option value="${districtArea}"> <c:out value="${districtArea}" /></option>
                                </c:forEach>
                                                
                            </select>
                       <div  class="form-group" id="container">		
                             <p id="first">
                                 <label>Party:</label>
                            <select id="sample1" class="form-control small " name="selectParty" >
                                    <c:forEach var="party" items="${parties}">
                                    <option value="${party.name}"> <c:out value="${party.name}" /></option>
                                </c:forEach>
                                                
                            </select>
                            <div>
                                <label>Image:</label>
                                <input name="photo" type="file" class="form-control"/>
                            </div>
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
