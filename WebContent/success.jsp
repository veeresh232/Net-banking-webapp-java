
<%@page import="Dao.Functionality"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
</head>
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 80%;
  height: 40%;
  border:2px dotted black;
   margin:0 auto;
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.container {
  padding: 2px 16px;
  margin:0 auto;
  background-image: url("images/clouds.jpg") ;
  color:black;
  background-repeat: no-repeat;
  text-align: center;
  
}
th{
font-weight: normal;
text-align: left;
}
td{
font-weight: bold;
text-align: center;
}
a:link, a:visited {
  background-color: green;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: red;
}
.center{
text-align: center;
margin: auto;
}
</style>
<body >
<div id="parentHorizontalTab_agile">
<center>
<h1 class="agile_head text-center">Payment Successful!</h1> </center>
            <center><img alt="tick" src="images/tick.png" width='100' height="100"></center>
            <div class="card">
  
  <div class="container">
     <%if(session.getAttribute("tId")!=null){
   String tId=(String)session.getAttribute("tId");
   %>
   Your Transaction ID is <b> <%=tId %></b>
<%} %>
   <table  width='100%'>
   
   
   
  
   
   
   
   </table>
   
   
  </div>
</div>
            </div>
            
            <br>
            <div class="center">
            <a href="money_transfer.jsp">Go back</a><br>
            <br><button onclick="print()">Print</button><br>
            <br><a href="home.jsp">Home</a>
            </div>
			</body>
			</html>