<%-- 
    Document   : ForumPage
    Created on : Jul 19, 2016, 10:51:23 AM
    Author     : Sweychya
--%>

<%@page import="java.util.List"%>
<%@page import="Domain.Voter.Forum"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <table>
            
            <% List<Forum> forumList = (List<Forum>)request.getAttribute("forumList");


                            for (Forum forum: forumList){ 
                               
                        %>
                            

                        <tr> 
                           
                            Would you ike to enter somethin that will bw a message regarding if your favorite candidate wins then what are the thing do you expect to be done by him/her .
                            You should enter the candidate name who you want to send a message and  your thought too.
                            <td><%=forum.getCandidate()%></td>
                            <td><%=forum.getWish()%></td>
                         </tr>
                         
                            <%}%>
    </table></body>
</html>
