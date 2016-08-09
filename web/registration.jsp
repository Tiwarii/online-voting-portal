<%-- 
    Document   : registration
    Created on : Jul 23, 2016, 10:02:53 AM
    Author     : Sweychya
--%>

<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
        <script type="text/javascript" src="jquery-3.1.0.js"></script>
        <script type="text/javascript">
        $(document).ready(function(){
        $('#checkrslt').load('checkreg.jsp').show();
        $('#name').keyup(function(){
       $.ajax({
    url: 'checkreg.jsp',
    data: {
        myPostVar:name
    },
   
        function(result){
            $('#checkrslt').html(result).show();
        });
        
        });
        });
        </script>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form name="form">
    <table >
		
                        
<!--                        <tr>
				<td >voter_id</td>
				<td><input type="text" id="voter_id" name="voter_id" /></td>
			</tr>-->
			<tr>
				<td >name </td>
				<td><input type="text" id="name" name="name" value=""/></td>
			</tr>
			
<!--			
			<tr>
				<td colspan="2" align="center"><input type="submit" value="Send"/></td>
			</tr>
		</table>
        </form>
        <div id="checkrslt"></div>
    </body>
</html>
