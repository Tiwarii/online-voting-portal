<%-- 
    Document   : voterList
    Created on : Jul 26, 2016, 1:04:00 PM
    Author     : acer
--%>

<%@page import="Domain.Voter.VotedVoter"%>
<%@page import="java.util.List"%>
<%@page import="Domain.Voter.Voter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
           hahahahahah
           
            <% List<VotedVoter> VotedVoterList = (List<VotedVoter>)request.getAttribute("VotedList");


                            for (VotedVoter vv: VotedVoterList){ 
                                
                        %>
                         <tr> 
                            <td><%=vv.getVoted_id()%></td>
                           <td><%=vv.getTime()%></td>
                          
                           
                     </tr>
                            <%}%>
        </table>
    </body>
</html>
