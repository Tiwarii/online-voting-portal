<%-- 
    Document   : admin
    Created on : Aug 27, 2016, 6:32:51 PM
    Author     : Rashmi Tiwari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <div class="modal fade" id="myModal" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header" style="padding:35px 50px;">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h3><span class="glyphicon glyphicon-lock"></span> Admin Login</h3>
                                </div>
                                <div class="modal-body" style="padding:40px 50px;">
                                    <form action="CommisnerLoginServlet" role="form" method="post">
                                        <div class="form-group">
                                            <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
                                            <input type="text" class="form-control" name="userName" placeholder="Enter email">
                                        </div>
                                        <div class="form-group">
                                            <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
                                            <input type="password" class="form-control" name="password" placeholder="Enter password">
                                        </div>

                                        <button type="submit" class="btn btn-primary btn-block"><span class="glyphicon glyphicon-off"></span> Login</button>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <a href = "home.jsp" class="btn btn-info" role="button" >Cancel</a>
                                </div>
                            </div>

                        </div>
        </div>
    </body>
    <script>


            $(document).ready(function () {
                    $("#myModal").modal();
            });

        </script>
</html>
