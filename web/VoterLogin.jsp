<!DOCTYPE html>

 <html lang="en"> <!--<![endif]-->
<head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <script type="text/javascript" src="Date.jsp"></script>
                       <script type="text/javascript" src="js/time.js"></script>

    <title>Candidate List</title>
    <link rel="stylesheet" href="css/login_style.css">
 <script type="text/javascript">
</script>
    </head>
    <body onload="notify_date()">
<section class="container">

    
        <form method="post" action="vlogin">
            <input type="hidden" name="page" value="VoterForm">
    <div class="message_error">${message}</div>
    <p><input type="text" name="citizenship" value="" placeholder="Citizenship"></p>
            <p><input type="text" name="voter_id" value="" placeholder="Voter_id"></p>
            <p><input type="text" name="pin" value="" placeholder="pin"></p>

            <p class="submit"><input type="submit" name="Login" value="Login"></p>
        </form>
    

    <div class="login-help">
        <p>Forgot your password? <a href="index.html">Click here to reset it</a>.</p>
    </div>
</section>
</body>
</html>
