<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>	


<title>FinCorp | Deposit</title>



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
  background-color: #4CAF50;
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
									<form action="deposit_success.jsp" method="post" >
									<div class="autocomplete" style="width:450px;">
									<br>  <b>Amount:</b>
										 <input type="number"
										name='amount' required="required" min=1 /> 
										<br>
										<b>PIN:</b> <br>
										<input type="password" pattern="[0-9]{4}" name="pin">
									<input type="submit" value="Deposit">
									</div>
								</form>
								
								</div>
								
								

								




							</div>
							
						</div>
					</div>
				</div>



		
			

	
	

</body>




</html>