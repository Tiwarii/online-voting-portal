<%-- 
    Document   : map
    Created on : Jul 24, 2016, 5:16:02 PM
    Author     : Lenovo G40
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="utils.Database_connection"%>
<%@page import="java.util.List"%>
<%-- 
    Document   : map
    Created on : Jul 24, 2016, 5:16:02 PM
    Author     : Lenovo G40
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <script type="text/javascript" >
$(function() { 
    $('a, .map').click(function() {
    var id=this.id;
   
    document.getElementById("result1").innerHTML="oooooo";
  });
   });
            </script>
    </head>
    <body>


<center><img  STYLE="position:absolute; TOP:200px; LEFT:350px; WIDTH:730px; HEIGHT:353px" src="MAPNEPAL.jpg"  alt="Planets" usemap="#planetmap" align="right">
</center>
<map name="planetmap" >
    
  <area shape="rect" coords="542,37,558,80"  href="" class="map" id="2" alt="Lalitpur"  />
        <area shape="rect" coords="554,24,593,38" href="define?page=1"  target="swmapfr" alt="Bhaktapur"/>
        <area shape="rect" coords="505,8,561,28"  href="define?page=1"  target="swmapfr" alt="Kathmandu" />
        <area shape="rect" coords="96,77,144,91" href="define?page=1"  target="swmapfr" alt="Bhajang" />
        <area shape="rect" coords="262,75,318,145" href="define?page=1"  target="swmapfr" alt="Dolpa" />
        <area shape="rect" coords="633,302,653,326" href="define?page=6"  target="swmapfr" alt="Sunsari"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         >
        <area shape="rect" coords="658,293,684,331" href="define?page=5"  target="swmapfr" alt="Morang" />
        <area shape="rect" coords="82,158,134,182" href="define?page=1"  target="swmapfr" alt="Kailali" />
        <area shape="rect" coords="-3,152,72,179" href="define?page=1"  target="swmapfr" alt="Kanchanpur" />
        <area shape="rect" coords="6,119,78,150" href="define?page=1"  target="swmapfr" alt="Dadeldhura" />
        <area shape="rect" coords="597,289,644,303" href="define?page=13"  target="swmapfr" alt="Udayapur" />
        <area shape="rect" coords="192,95,236,122" href="define?page=1"  target="swmapfr" alt="Jumla" />
        <area shape="rect" coords="523,243,580,254" href="define?page=1"  target="swmapfr" alt="Ramechaap"/>
        <area shape="rect" coords="675,259,723,272" href="define?page=3"  target="swmapfr" alt="Panchthar" />
        <area shape="rect" coords="143,10,221,45" href="define?page=1"  target="swmapfr" alt="Humla" />
        <area shape="rect" coords="591,313,633,328" href="define?page=11"  target="swmapfr" alt="Saptari" />      
              <area shape="rect" coords="50,93,90,112" href="define?page=1"  target="swmapfr" alt="Baitadi"/>
    <area shape="rect" coords="50,93,90,112" href="define?page=1"  target="swmapfr" alt="Baitadi" />

        <area shape="rect" coords="50,93,90,112" href="define?page=1"  target="swmapfr" alt="Baitadi" />   
        <area shape="rect" coords="50,93,90,112" href="define?page=1"  target="swmapfr" alt="Baitadi" />  
        <area shape="rect" coords="50,93,90,112" href="define?page=1"  target="swmapfr" alt="Baitadi" />
        <area shape="rect" coords="50,53,109,71" href="define?page=1"  target="swmapfr" alt="Dharchula"/>
        <area shape="rect" coords="191,68,253,90" href="define?page=1"  target="swmapfr" alt="Mugu" />
        <area shape="rect" coords="689,274,720,292" href="define?page=2"  target="swmapfr" alt="Illam" />
        <area shape="rect" coords="136,87,176,105" href="define?page=1"  target="swmapfr" alt="Bajura" />
        <area shape="rect" coords="327,97,380,132" href="define?page=1"  target="swmapfr" alt="Mustang" />
        <area shape="rect" coords="527,295,540,332" href="define?page=1"  target="swmapfr" alt="Mahottari" />
        <area shape="rect" coords="559,303,595,316" href="define?page=12"  target="swmapfr" alt="Siraha" />
        <area shape="rect" coords="351,142,407,159" href="define?page=1"  target="swmapfr" alt="Manang" />
        <area shape="rect" coords="661,245,715,256" href="define?page=9"  target="swmapfr" alt="Terathum" />
        <area shape="rect" coords="616,196,658,236" href="define?page=10"  target="swmapfr" alt="Sankhuwashava" />
        <area shape="rect" coords="694,306,716,319" href="define?page=0"  target="swmapfr" alt="Jhapa" />
        <area shape="rect" coords="85,123,122,146" href="define?page=1"  target="swmapfr" alt="Doti" />
        <area shape="rect" coords="673,194,709,238" href="define?page=4"  target="swmapfr" alt="Taplejung" />
        <area shape="rect" coords="643,258,665,296" href="define?page=8"  target="swmapfr" alt="Dhankuta" />
        <area shape="poly" coords="474,212" href="#" />
        <area shape="poly" coords="458,201" href="define?page=0"  alt="Jhapa" target="swmapfr" />
        <area shape="rect" coords="156,169,200,191" href="define?page=1"  target="swmapfr" alt="Surketh" />
        <area shape="rect" coords="133,192,176,213" href="define?page=1"  target="swmapfr" alt="Bardia" />
        <area shape="rect" coords="173,222,218,246" href="define?page=1"  target="swmapfr" alt="Banke" />
        <area shape="rect" coords="227,219,265,249" href="define?page=1"  target="swmapfr" alt="Banke" />
        <area shape="rect" coords="257,219,265,228" href="define?page=1"  alt="Dang" />
        <area shape="rect" coords="202,184,231,208" href="define?page=1"  target="swmapfr" alt="Salayan" />
        <area shape="rect" coords="244,183,280,207" href="define?page=1"  target="swmapfr" alt="Rautahat" 
        <area shape="rect" coords="168,117,194,141" href="define?page=1"  target="swmapfr" alt="kalikot" />
        <area shape="rect" coords="236,151,280,177" href="define?page=1"  target="swmapfr" alt="Rukum" />
        <area shape="rect" coords="194,147,235,165" href="define?page=1"  target="swmapfr" alt="Jajarkot" />
        <area shape="rect" coords="156,141,198,157" href="define?page=1"  target="swmapfr" alt="Dailekh" />
        <area shape="rect" coords="382,209,423,228" href="define?page=1"  target="swmapfr" alt="Tanahu" />
        <area shape="rect" coords="290,157,335,179" href="define?page=1" target="swmapfr" alt="Myagdi" />
        <area shape="rect" coords="306,210,335,226" href="define?page=1" target="swmapfr" alt="Gulmi" />
        <area shape="rect" coords="278,230,328,244" href="define?page=1" target="swmapfr" alt="Argakhachi" />
        <area shape="rect" coords="254,254,313,268" href="define?page=1" target="swmapfr" alt="Kapilbastu" />
        <area shape="rect" coords="315,253,340,286" href="define?page=1" target="swmapfr" alt="Rupendehi" />
        <area shape="rect" coords="342,251,371,272" href="define?page=1" target="swmapfr" alt="Nawalparasi" />
        <area shape="rect" coords="331,230,369,246" href="define?page=1" target="swmapfr" alt="Palpa" />
        <area shape="rect" coords="260,208,306,223" href="define?page=1" target="swmapfr" alt="Pyuthan" />
        <area shape="rect" coords="286,179,329,199" href="define?page=1" target="swmapfr" alt="Baglung" />
        <area shape="rect" coords="341,211,380,228" href="define?page=1" target="swmapfr" alt="Syangja" />
        <area shape="rect" coords="417,157,457,184" href="define?page=1" target="swmapfr" alt="Gorkha" />
        <area shape="rect" coords="352,165,378,195" href="define?page=1" target="swmapfr" alt="Kaski" />
        <area shape="rect" coords="384,171,421,195" href="define?page=1" target="swmapfr" alt="Lamjung" />
        <area shape="rect" coords="395,244,422,268" href="define?page=1" target="swmapfr" alt="Chitwan" />
        <area shape="rect" coords="338,181,349,207" href="define?page=1" target="swmapfr" alt="Palpa" />
        <area shape="rect" coords="438,195,452,236" href="define?page=1" target="swmapfr" alt="Dhading" />
        <area shape="rect" coords="436,240,475,268" href="define?page=1" target="swmapfr" alt="Makwanpur" />
        <area shape="rect" coords="497,232,520,259" href="define?page=1" target="swmapfr" alt="Kavre Palanchook" />
        <area shape="rect" coords="496,188,528,227" href="define?page=1" target="swmapfr" alt="Sindhupalanchok" />
        <area shape="rect" coords="538,181,564,230" href="define?page=1" target="swmapfr" alt="Dolakha" />
        <area shape="rect" coords="578,185,609,251" href="define?page=1" target="swmapfr" alt="Solukhumbu" />
        <area shape="rect" coords="420,272,458,297" href="define?page=1" target="swmapfr" alt="Palpa" />
        <area shape="rect" coords="500,264,549,279" href="define?page=1" target="swmapfr" alt="Sindhuli" />
        <area shape="rect" coords="501,288,525,311" href="define?page=1" target="swmapfr" alt="Sarlahi" />
        <area shape="rect" coords="541,291,560,324" href="define?page=1" target="swmapfr" alt="Dhanusha" />
        <area shape="rect" coords="620,244,641,286" href="define?page=7" target="swmapfr" alt="Bhojpur" />
        <area shape="rect" coords="597,253,619,281" href="define?page=14" target="swmapfr" alt="Khotang" />
        <area shape="rect" coords="562,252,591,264" href="define?page=15" target="swmapfr" alt="Okhaldhunga" />
        <area shape="rect" coords="460,276,474,316" href="define?page=1" target="swmapfr" alt="Bara" />
        <area shape="rect" coords="478,285,494,316" href="define?page=1" target="swmapfr" alt="Rautahat" />
        <area shape="rect" coords="465,175,512,190" href="define?page=1" target="swmapfr" alt="Rasuwa" />
        <area shape="rect" coords="454,207,497,221" href="define?page=1" target="swmapfr" alt="Nuwakot" />
    </map>

<div id="result1"></div>
</body>  
</html>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             