<%-- 
    Document   : try
    Created on : Jun 4, 2016, 2:19:56 PM
    Author     : Rashmi Tiwari
--%>

        <html> 
        <head> 
        <script language="Javascript" type="text/javascript"> 

        var counter = 1; 
        var limit = 3; 
        function addInput(divName){ 
        if (counter == limit) { 
        alert("Reached adding limit" + counter + " inputs"); 
        } 
        else { 
        var newdiv = document.createElement('div'); 
        newdiv.innerHTML = "Entry " + (counter + 1) + " 
        <input type='text' name='myInputs[]'>"; 
        document.getElementById(divName).appendChild(newdiv); 
        counter++; 
        } 
        } 

        </script> 
        </head> 


        <body> 
        <form method="POST"> 
        <div id="dynamicInput"> 
        Entry 1
        <input type="text" name="myInputs[]"> 
        </div> 
        <input type="button" value="Add another text input" onClick="addInput('dynamicInput');"> 
        </form> 
        </body> 
        </html> 