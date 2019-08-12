<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>	


<title>FinCorp | Change PIN</title>



</head>
<style>
input[type=text], input[type=date], input[type=number] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}
input[type=password]{
width: 20%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}
input[type=submit] {
  width: 100%;
  background-color: blue;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-weight: bold;
}

.w3layouts-logo h1 a {
    font-size: 1em;
    text-transform: uppercase;
    color: #337ab7;
    text-decoration: none;
    font-weight: 700;
    font-family: 'Montserrat', sans-serif;
    border: solid 1px #333;
    padding: .2em .5em;
}
.w3layouts-logo h1 a span {
    font-size: .6em;
    font-weight: 400;
    font-family: 'Crimson Text', serif;
    text-transform: initial;
}

</style>
<body>
	
<div class="w3layouts-logo" >
							<h1><a href="home.jsp">FinCorp<span>Bank</span></a></h1>
						</div>
	<div class="wrapper">
	
					<div class="row">

						<div class="col-md-12">
							<div class="card">
								<div class="header">
									<h4 class="title">Enter the amount to deposit:</h4>
									<span style="color: red;"><%String error=(String)session.getAttribute("error");
									if(error!=null){
										out.print(error);
										session.setAttribute("error", null);
									}%></span>
									<form action="PinChange" method="post" >
									<div class="autocomplete" style="width:450px;">
									<br>  <b>Enter old PIN:</b> <br>
										 <input type="password"
										name='old' required="required" pattern="[0-9]{4}" /> 
										<br>
										<b>New PIN:</b> <br>
										<input type="password" pattern="[0-9]{4}" id="p1"/>
										<br>
										<b>Confirm New PIN:</b> <br>
										<input type="password" pattern="[0-9]{4}" name="newPin" id="p2" onchange="verifyacnum()">
										<span id="acnum" style="color: red;"></span>
									<input type="submit" value="Change PIN">
									</div>
								</form>
								
								</div>
								
								

								




							</div>
							
						</div>
					</div>
				</div>



<script type="text/javascript">
function verifyacnum(){
	var ac1 = document.getElementById("p1").value;
	var ac2 = document.getElementById("p2").value;
	
	if(ac1 == ac2){
		document.getElementById("acnum").innerHTML="";
	}
	else{
		document.getElementById("acnum").innerHTML="PINs do not match!";
	}
	
}
</script>
	

	
	

</body>




</html>