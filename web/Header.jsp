<%-- 
    Document   : CreateAccount
    Created on : May 14, 2016, 5:40:10 AM
    Author     : windows10
--%>

<%@page import="com.ovp.entities.Commisner"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="bootstrap/js/jquery.js"></script>

        <script >
            <%@include file="bootstrap/js/bootstrap.js" %>
        </script>
<style>
            
                ul {
                    list-style-type: none;
                    margin: 0;
                    padding: 0;
                    overflow: hidden;
                    background-color:#12436d;
                    position: fixed;
                    width: 100%;
                    background-image: url("2016-05-8--20-29-05 (2).jpeg");
                    background-repeat: no-repeat;
                    background-position:top left;
                    background-attachment: fixed;
                    background-size:100% 100%; 
                } 
                li {
                    float: left;
                    border-right:1px solid #bbb;
                  
                }
                li a {
                    display: block;
                    color: white;
                    text-align: center;
                    padding: 14px 16px;
                    text-decoration: none;
                }
                li a:hover {
                    background-color: #185890;
                }
                li.a:active {
                      background-color:darkorchid;
                }
             .header{margin-right:10px;  padding:none; width:100%; }

            
            .website_name{height:80px; width:100%; margin:auto; background-color:#165083;  position: fixed;
                         padding-top:10px; color:burlywood; text-align:center;
                        background-image: url("2016-05-8--20-29-05 (2).jpeg");
                    background-repeat: no-repeat;
                    background-position:top left;
                    background-attachment: fixed;
                    background-size:100% 20%; }
            .footer{height:90px; width:100%; margin:auto; color:lightgrey; padding-top:5px; padding-bottom:20px;  background-color:darkmagenta; text-align:center;}
            
        </style>
        <title>JSP Page</title>
        
</head>
        
   
    <body>
        
           
            <div class="header"> 
            <div class="website_name" ><h1>Online voting portal</h1>
    
            <ul class="nav nav-tabs">
                <%
                    Commisner verifiedCommisner =(Commisner)session.getAttribute("verifiedCommisner");
                    boolean admin=false;
                if (verifiedCommisner!= null){
                     admin=true;}
                %>          
               
           <% 
                if (admin){
           %>
                <li><a href="addCampaign.jsp"><span class="glyphicon glyphicon-cog"></span>&nbsp;Election Setup</a></li>
                <li><a  href="partyRegistration.jsp"><span class="glyphicon glyphicon-cog"></span>&nbsp; Party Setup</a></li>  
                <li><a  href="addPost.jsp"><span class="glyphicon glyphicon-cog"></span>&nbsp; Post Set Up</a></li>       
                <li ><a href="./CandidateServlet"><span class="glyphicon glyphicon-earphone"></span>&nbsp; Candidate Set up</a></li>
                <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-out"></span> &nbsp;Logout</a></li>
            <% }else{%>
            <li ><a href="registrationForm.jsp"><span class="glyphicon glyphicon-earphone"></span>&nbsp;Registration</a></li>
            <li ><a href="ballot.jsp"><span class="glyphicon glyphicon-hand-up"></span>&nbsp;Vote</a></li>
            <li ><a href="#about"><span class="glyphicon glyphicon-heart-empty"></span>&nbsp;About Us</a></li>
            <% }%>
            </ul>
            </div>
             </div>    
        
            
       
    </body>
</html>
