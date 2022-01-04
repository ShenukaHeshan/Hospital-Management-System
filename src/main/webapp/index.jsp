<%@page import="hospital.users.db.GetDetails"%>
<%@page import="java.sql.ResultSet" %>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="Stylesheet" href="css/footer.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="#">
<link rel="Stylesheet" href="css/header.css">
<link rel = "stylesheet" type = "text/css" href = "css/appointmentlist.css" />
<link rel="stylesheet" href="css/https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hospital Management</title>
</head>

<header>

<h1 align ="center"> Medicare Hospital</h1>
   <hr id="h3#header"/>



<ul class="menu">
  <li class="menu"><a href="index.jsp">Home</a></li>
  <li class="menu"><a href="Submit detail.jsp">Submit detail</a></li>
  <li class="menu"><a href="Inquiry.jsp">Inquiry</a> </li>
  <li class="menu"><a href="Payment.jsp">Payment </a></li>
  <li class="menu"><a href="First.jsp">New Appointment </a></li>
 
 
  </ul>
</header>



<body>

	<h2>List Of Appointments</h2>
	<br>
	<br>

		<form action="First.jsp">
    		<input type="submit" value="New appointment" class="new-button">
		</form>
		<br>
		
	 <% GetDetails gd = new GetDetails(); 
		ResultSet rs1 =gd.getDoctors();
		while(rs1.next()){
	%>
		<table border="1" cellpadding="12">
		
		 <caption><h3><%=rs1.getString("doctor") %></h3></caption>
		
		  <tr id="header" >
                <th>ID</th>
                <th>Name</th>
                <th>Address</th>
                <th>NIC</th>
                <th>Phone Number</th>
                <th>Age</th>
                <th>Gender</th>
         
                <th>Action</th>
            </tr>
            <%
            
            ResultSet rs =gd.getDetails();
			
			while(rs.next()){
			%>
			 <tr>
			 <%if(rs1.getString("doctor").equals(rs.getString("doctor"))){ %>
				<td> <%=rs.getInt("id") %> </td>
				<td> <%=rs.getString("name") %> </td>
				<td> <%=rs.getString("address") %> </td>
				<td> <%=rs.getString("nic") %> </td>
				<td> <%=rs.getString("tp_no") %> </td>
				<td> <%=rs.getString("age") %> </td>
				<td> <%=rs.getString("gender") %> </td>
				
				
				
				
				
				<td> 
					<form method="POST" action="<%= request.getContextPath() %>/register">
						<input type="text" name="id" value="<%=rs.getInt("id")%>" hidden=true/>
				 		<input type="submit" name="edit" value= "Edit" class="select-button" /> 
				 	</form>
				 </td>
				 <%} %>	
			</tr>			
			<%	
			   }
            %>     
		</table>
		<%} %>
		
		<br>
		<br>
				
<footer>

	<div class="foot">	
	
	
		<a href="#" class="fa fa-facebook"></a>
	<a href="#" class="fa fa-twitter"></a>
	<a href="#" class="fa fa-google"></a>
	<a href="#" class="fa fa-linkedin"></a>
		
			<div class="mission">
	 <p>Our Mission<p>
	 <p>  Our mission is to be a provider of high quality patient-focused health care that is readily accessible,cost 
	effective <br> and meets the needs of the communities we serve.</p>
 </div>
			
	</div>

</footer>

</body>

</html>