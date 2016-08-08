<%@page import="Domain.Voter.Forum"%>
<%@page import="Domain.Voter.User"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html ; charset=UTF-8">
        <title>JQuery Ajax Tutorial</title>

        </head>
        <body>
            <h1>jQuery Ajax</h1>
            <h2>Coffee Orders</h2>
            <ul >
              <form id="form1">
            <h4>Add a Coffee Order</h4>
            <p> Candidate name:</p><input type="text"  id="name"></p>
            Wish:<input type="text" style="font-size: 18pt; height: 300px; width:1000px; " id="wish">
         <input type="button" value="submit" id="submit">
           <table>
                      <div id="result1" ></div>

              
              </form>
        </body></html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
    
            $(document).ready(function(){
                $("#submit").click(function(){
                    var name=$("#name").val();
                    var wish=$("#wish").val();
                    $.ajax({
                        type: 'GET',
                        url: 'AjuxServlet',
                        data:{ 
                            name:name,
                            wish:wish
                        },
                        success: function(data){
                            
                           $('#result1').prepend("Thank you For Your FeedBack");
                        }
                    });
                });
            });
         
//       
            
        </script>