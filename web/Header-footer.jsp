<%-- 
    Document   : CreateAccount
    Created on : May 14, 2016, 5:40:10 AM
    Author     : windows10
--%>

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
                    background-color:purple;
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
                    background-color: #660066;
                }
                li.a:active {
                      background-color:darkorchid;
                }
            .main{height:850px; width:1024px; margin:auto; background-color:wheat;}
            .website_name{height:100px; width:1024px; margin:auto; background-color:darkmagenta; padding-top:10px; color:burlywood; text-align:center;}
            .footer{height:90px; width:1024px; margin:auto; color:lightgrey; padding-top:5px; padding-bottom:20px;  background-color:darkmagenta; text-align:center;}
        </style>
        <title>JSP Page</title>
        
</head>
        
   
    <body>
        <div class="main">
            <div class="website_name"><h1>Online voting portal</h1>
                
            </div>
            <ul class="nav nav-tabs">
            <li class="active"><a  href="#home">Home</a></li>
            <li ><a href="#election_setup">Election Setup</a></li>
            <li ><a href="#contact">Contact</a></li>
            <li ><a href="#vote">Vote</a></li>
            <li ><a href="#about">About</a></li>
        </ul>
     
        </div>
        <div class="footer" > <h2>bla bla bla</h2></br>
            copyright information</br>
            
        </div>
    </body>
</html>
