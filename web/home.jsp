<%--
    Document   : home
    Created on : Jun 3, 2016, 10:59:14 PM
    Author     : Rashmi Tiwari
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
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>


        <div class="main">
            <div class="right1">
                <label  ><h1>Election Commission of Nepal </h1> </label>
            </div>
            <center>
                <%
                    boolean unRegisterdUser = true;
                    Object activeCampaign = request.getAttribute("activeCampaign");
                    if (activeCampaign == null) {
                %>

                <br>


                No Active Campaign Found
                <br>
                <%
                } else {
                %>
                Running Election for Campaign: ${activeCampaign.title}
                <%
                    }
                %>
            </center>
            <div class="right" >
                <div>
                <%
                     if (activeCampaign != null) { %> 
                <center>
                    <label >  login as </label>
                </center>
                <br>

                <br><br>
                

                    <button type="button" class="btn btn-primary btn-group-justified button1" id="voterBtn">Voter</button>
                    <br><br>
                    <center><a href="./DisplayCandidate" ><strong>See Candidates</strong></a></center>
                    <% }%>
                    <!-- Modal -->
                    <div class="modal fade" id="voterModal" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header" style="padding:35px 50px;">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h3><span class="glyphicon glyphicon-lock"></span> Login</h3>
                                </div>
                                <div class="modal-body" style="padding:40px 50px;">
                                    <form action="VoterLoginHandler" role="form" method="post">
                                        <div class="form-group">
                                            <label for="usrname"><span class="glyphicon glyphicon-user"></span>Voter_id</label>
                                            <input type="text" class="form-control" name="voter_id" placeholder="voter_id">
                                        </div>
                                        <div class="form-group">
                                            <label for="psw"><span class="glyphicon glyphicon-eye-open"></span>Citizenship</label>
                                            <input type="password" class="form-control" name="citizenship" placeholder="Citizenship_no.">
                                        </div>
                                        <button type="submit" class="btn btn-primary btn-block"><span class="glyphicon glyphicon-off"></span> Login</button>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>

                                    <p>Forgot <a href="#">Password?</a></p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <br><br>
                                <div>

                </div>
            </div>
            <div class="right2">
                <center> "Ballot is stronger than bullet".<br><br> "your VOTE is your VOICE".<br><br> "If you don't VOTE
                    you lose the right to complain".<br>
                </center>
            </div>

        </div>
        <script>
            $(document).ready(function () {
                $("#voterBtn").click(function () {
                    $("#voterModal").modal();
                });
            });

            $(document).ready(function () {
                $("#myBtn").click(function () {
                    $("#myModal").modal();
                });
            });

        </script>
    </body>
</html>
