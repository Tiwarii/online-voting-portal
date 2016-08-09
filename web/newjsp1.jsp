<%-- 
    Document   : index
    Created on : Jul 29, 2016, 12:07:37 PM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
          
<script type="text/javascript">
   $(document).ready(function(){
    $("#submit").click(function(){
       var result = prompt("Enter the pin sent to your email");
           $.ajax({
                        type: 'GET',
                        url: 'go',
                        data:{ 
                            name:recipient,
                            wish:result 
                        },
                        success: function(data){
                             $('#pin').show();
                           $('#pin').html("data");
                        }
                    }); 
          
});
    });
});
         
        </script>
<style>
            input{
    display:inline-block;
    position:relative;
}
input:last-child{
    left:-40px;
}
        </style>
    </head>
    <body>
        <form >
          
       <input type="text" name="recipient"/>
<input type='submit' id="submit" value='GO'  />
        </form>
        <div id="pin"></div>
    </body>
</html>
