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

    <body>
        <%@include file="Header.jsp" %>
        <div class="main">
            <div class="container">
                <br>
                <br>
                <center> <label>Vote candidate you want to vote for &nbsp;</label>

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
                                <td><h4>${candidate.id}</h4></td>
                                <td><img src="./ImageServlet?image_id=${candidate.party.photoId}" class="img-responsive" style="width:80px; height: 80px;" alt="Image"></td>
                                <td><h4>${candidate.name}</h4></td>
                                <td><h4>${candidate.partyName}</h4></td>
                                <td>
                                    <a href="./VotingServletHandler?id=${candidate.id}"> <button class="btn btn-warning"> <span class="glyphicon glyphicon-cog"></span> Vote Me</button> <br> Warning:"vote me on ur own risk"</a></td>
                        
                            </tr>       
                        </tbody>
                    </c:forEach>
                </table>
            </div>
        </div>


    </body>
</html>
