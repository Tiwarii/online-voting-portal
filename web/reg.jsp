<%@page import="utils.Database_connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.List"%>
<html>
    <head>
        <link rel="stylesheet" href="css/reg.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script type="text/javascript" src="jquery.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {
	$('#contact_name').on('input', function() {
	var input=$(this);
	var is_name=input.val();
	if(is_name){input.removeClass("invalid").addClass("valid");}
	else{input.removeClass("valid").addClass("invalid");}
});
$('#contact_email').on('input', function() {
	var input=$(this);
	var re = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
	var is_email=re.test(input.val());
	if(is_email){input.removeClass("invalid").addClass("valid");}
	else{input.removeClass("valid").addClass("invalid");}
});
$('#contact_message').keyup(function(event) {
	var input=$(this);
	var message=$(this).val();
	console.log(message);
	if(message){input.removeClass("invalid").addClass("valid");}
	else{input.removeClass("valid").addClass("invalid");}	
});
$("#contact_submit button").click(function(event){
	var form_data=$("#contact").serializeArray();
	var error_free=true;
	for (var input in form_data){
		var element=$("#contact_"+form_data[input]['name']);
		var valid=element.hasClass("valid");
		var error_element=$("span", element.parent());
		if (!valid){error_element.removeClass("error").addClass("error_show"); error_free=false;}
		else{error_element.removeClass("error_show").addClass("error");}
	}
	if (!error_free){
		event.preventDefault(); 
	}
	else{
		alert('No errors: Form will be submitted');
	}
});
}); 
});
var form = $('#form1');
form.submit(function () {
 
$.ajax({
type: form.attr('method'),
url: form.attr('action'),
data: form.serialize(),
success: function (data) {
var result=data;
$('#result').attr("value",result);
 
}
});
        </script>
        </head>
        <body>

<form id="contact" method="post" action="">
	<!-- Name -->
	<div>
		<label for="contact_name">Name:</label>
		<input type="text" id="name" name="name"></input>
		<span class="error">This field is required</span>
	</div>
	<!-- Email -->
					
	<!--Website -->
	<div>
		<label for="contact_website">email</label>
		<input type="email" id="email" name="email"></input>
		<span class="error">A valid url is required</span>								
	</div>						
	<!-- Message -->
	<div>
		<td>
   <select name="district">

     <%    String query="select* from districts";
            PreparedStatement pstm=new Database_connection().getPreparedStatement(query);
            ResultSet rs=pstm.executeQuery();
            while(rs.next()){
               
                %>
                <option value="<%rs.getInt("id");%>"><%=rs.getString("name")%></option>
                <%}%>
</select>
</td>												
	</div>					
	<!-- Submit Button -->
	<div id="contact_submit">				
		<button type="submit">Submit</button>
	</div>
</form>
            </body>
            </html>