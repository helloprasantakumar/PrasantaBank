<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DEPOSIT</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

<style>


body {
    background-color: lightblue;
}

.parent{
  text-align:center;
  
}

.button {
 width: 180px;
    text-align: center;
    height: 30px;
    background-color: green;
    border: none;
    color: white;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    border-radius: 10px;
    cursor: pointer;
    font-weight: bold;
    font-size: 15px;
    font-family: arial black;
    float: none;
    margin-right: 137px;
    margin-left: 230px;
    margin-top: 10px;



}
.button:hover {
    background-color: blue; /* Green */
    color: white;

}


body {
      font-family: "Consolas";
      margin: 0;
      text-align: justify;
      
       
    }
    
   
    
#container {
    position: fixed;
    width: 670px;
    height: 360px;
    top: 50%;
    left: 50%;
    margin-top: -140px;
    margin-left: -310px;
    background: #c5f7fb;
    border-radius: 22px;
    border: 5px solid #ccc;
    box-shadow: 0 1px 2px rgba(0, 0, 0, .1); 
    }
    
    
    input[type=text],input[type=date]{
    color: black;
    padding-left: 10px;
    margin: 10px;
    margin-top: 12px;
    margin-left: 18px;
    width: 290px;
    height: 26px;
	border: 1px solid #c7d0d2;
    border-radius: 2px;
     font-weight: bold;
     font-size: small;
   -webkit-transition: all .4s ease;
    -moz-transition: all .4s ease;
    transition: all .4s ease;
	}
	
	
	label {
    color: black;
    display: inline-block;
    margin-left: 18px;
    padding-top: 30px;
    font-size: 18px;
    font-weight: bold;
    display: inline-block;
    width: 290px;
    margin-right: 0px;
    text-align: left;
    }
    
    #date_time{
    text-align: right;
    color: black;
    font-weight: bold;
    padding-right: 30px;
    padding-top: 25px;
    font-size: 20px;

}

.footer {
   position: fixed;
   left: 0;
   bottom: 20px;
   width: 100%;
   background-color:black;
   color: #1cd4b3;
   text-align: center;
}


.hm {

 background-color: #4CAF50;
    border: none;
    color: white;
    padding: 5px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 12px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s;
    transition-duration: 0.4s;
    cursor: pointer;
    position: fixed;
    right: 170px;
    top: 5px;
    font-weight: bold;
    /* left: 1250px; */

}


</style>

<script>
var request;
function sendInfo()
{
var v=document.vinform.depaccn.value;
var url="afterdeposit.jsp?val="+v;

if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}

try
{
request.onreadystatechange=getInfo;
request.open("GET",url,true);
request.send();
}
catch(e)
{
alert("Unable to connect to server");
}
}

function getInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('prasanta').innerHTML=val;
}
}

</script>



<script type="text/javascript">
function date_time(id)
{
        date = new Date;
        year = date.getFullYear();
        month = date.getMonth();
        months = new Array('January', 'February', 'March', 'April', 'May', 'June', 'Jully', 'August', 'September', 'October', 'November', 'December');
        d = date.getDate();
        day = date.getDay();
        days = new Array('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday');
        h = date.getHours();
        if(h<10)
        {
                h = "0"+h;
        }
        m = date.getMinutes();
        if(m<10)
        {
                m = "0"+m;
        }
        s = date.getSeconds();
        if(s<10)
        {
        	
                s = "0"+s;
        }
        result = ''+days[day]+' '+months[month]+' '+d+' '+year+' '+h+':'+m+':'+s;
        document.getElementById(id).innerHTML = result;
        setTimeout('date_time("'+id+'");','1000');
        return true;
}








</script>

</head>
<body bgcolor="#f0f5f5">
<form name="vinform">
<header>
<h2 align="center">Odisha Bank</h2>
<h3 align="center"><marquee behavior="scroll" direction="left">A complete banking solution</marquee></h3><br><br><br>
<h3 align="center">MONEY DEPOSIT</h3>
</header>

<div id="date_time">
 <script type="text/javascript">window.onload = date_time('date_time');</script>
 </div>
 
 
 
<div id="container">

<label>ENTER YOUR ACCOUNT NUMBER :</label> <input type="text" name="depaccn"  placeholder="ACCOUNT NUMBER" size="30" required><br>

<label>ENTER DEPOSIT AMOUNT:</label> <input type="text" name="depamt" placeholder="DEPOSIT AMOUNT" size="30" required><br>

<label>DATE OF DEPOSIT:</label> <input type="date" name="dot" size="30" required><br> &nbsp;&nbsp;
<div class="btn">
<input type="submit" value="MONEY DEPOSIT" class="button" ><br><br>
</div>

 <div class="parent">
  <a href="homepage.jsp" > <i class="fas fa-home"></i>&nbsp;HOME</a>&nbsp;&nbsp;&nbsp;
</div>

  
   </div>  


</form>

<!-- <form method="post" action="./homepage.jsp">
<button class="hm"><i class="fas fa-home"></i>&nbsp; HOME</button>
  </form>
 -->
<span id="prasanta"> </span>

</body>

<div class="footer">
  <p>|| Prasanta Bank ||  || Website Designed By: Prasanta Kumar Parida ||</p>
</div>

</html>