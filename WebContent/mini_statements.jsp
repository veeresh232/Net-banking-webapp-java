
<%@page import="Dao.Functionality"%>
<%@page import="Beans.TransactionBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


</head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 0px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: ;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
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
<body
	style="background-image: url('images/4.jpg'); background-repeat: no-repeat; background-size: cover;">

	<div class="w3layouts-logo" >
							<h1><a href="home.jsp">FinCorp<span>Bank</span></a></h1>
						</div>
		<a href="home.jsp" >Back</a>
		<br> <br>
		<center><h6> </h6><h3>Mini Statement</h3></center>
		<%ArrayList<TransactionBean> transList = new ArrayList<TransactionBean>();
		String userId=(String)session.getAttribute("userId");
		Functionality functionality= new Functionality();
		transList =functionality.getTransactions(userId);
		if(!transList.isEmpty()){ %>
		<div class="table-responsive">
			
				<table class="table" id="customers" border="0px"
					style="color:black;empty-cells: hide;">

					<tr>
					
						<th>Transaction ID</th>
						<th>Date</th>
						<th>From (Ac no.)</th>
						<th>To (Ac no.)</th>
						<th>Action</th>
						<th>Amount</th>
						
					</tr>
					
					
					

					<%
						
						for (TransactionBean bean : transList) {
							//int actionId = ab.getActionId();
							
					%>
					 <tr style=" font-weight:bold;height: 75px;"  >
						
						
						
						
						<td><%=bean.gettId()%></td>
						<td><%=bean.getDate()%></td>
						<td><%=bean.getFrom()%></td>
						<td><%=bean.getTo()%></td>
						<td><%=bean.getAction()%></td>
						<td>Rs.<%=bean.getAmount()%></td>
						
						
					
					</tr> 
					
					<%
						}
		}
		else{
					%> 
<center> <h2>No Results Found</h2></center>
<%} %>






				</table>
				

		</div>
	</div>
	<script>
	
		
			
			
			
			
			
			
		});
		
	</script>
</body>
</html>