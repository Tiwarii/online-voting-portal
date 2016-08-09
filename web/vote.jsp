<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
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
        ${sessionScope.voter.name};
        ${sessionScope.district};
                   <a href="CandidateList?page=CandidateList">vote</a>
                  


       
    </body>
</html>
