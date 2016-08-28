<%-- 
    Document   : contestent
    Created on : Jun 25, 2016, 9:09:50 PM
    Author     : Rashmi Tiwari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>home</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <style>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
            <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
            /* Remove the navbar's default margin-bottom and rounded borders */
            .navbar {
                margin-bottom: 0;
                border-radius: 0;
            }

            /* Add a gray background color and some padding to the footer */
            footer {
                background-color: #f2f2f2;
                padding: 25px;
            }
        </style>
    </head>
    <body>
        <%@include file="Header.jsp" %>

        <div class="jumbotron">
            <div class="container text-center">

            </div>
        </div>

        <div class="container-fluid bg-3 text-center">
            <h3>Participating candidates in election</h3><br>
            <div class="row">
                <c:forEach var="candidate" items="${candidates}">
                    <div class="col-sm-3">
                        <img src="./ImageServlet?image_id=${candidate.photoId}" class="img-responsive" style="width:200px; height:200px;" alt="Image">
                        Name:${candidate.name}
                        <br>
                        Party:${candidate.party.name}
                        <br>
                        Electoral Area: ${candidate.districtArea}
                        <br>
                    </div>
                </c:forEach>  

            </div>
        </div>
        <footer class="container-fluid text-center">
        </footer>

    </body>
</html>