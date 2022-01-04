<%@page import="hospital.users.db.GetDetails" %>
<%@page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="Stylesheet" href="css/edit.css">
<link rel="Stylesheet" href="css/header.css">
<link rel="Stylesheet" href="css/footer.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="#">
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
  <li class="menu"><a href="index.jsp">Appointment List</a></li>
 
 
  </ul>
</header>

<body>

<h2>Edit Appointments</h2>
		
            <%
            String ids =(String)request.getAttribute("id");
            GetDetails gd = new GetDetails();
            ResultSet rs =gd.getDetails(ids);
			
			while(rs.next()){
			%>
			<table align="center" cellpadding = "15" >
			<form method="POST" action="<%= request.getContextPath() %>/register">
			
				<tr>
				<td>ID</td>
				<td><input type="text" value="<%=rs.getInt("id") %>" disabled />
				</tr>
				
				<tr>
				<td>Name</td>
				<td><input type="text" name="name" value="<%=rs.getString("name")%>" />
				</td>
				</tr>
				
				<tr>
				<td>Address</td>
				<td><input type="text" name="address" value="<%=rs.getString("address") %>" />
				</td>
				</tr>
				
				<tr>
				<td>NIC</td>
				<td><input type="text" name="nic" value="<%=rs.getString("nic") %>" />
				</td>
				</tr>
				
				<tr>
				<td>Phone Number</td>
				<td><input type="text" name="tp_no" value="<%=rs.getString("tp_no") %>" />
				</td>
				</tr>
				
				<tr>
				<td>Age</td>
				<td><input type="text" name="age" value="<%=rs.getString("age") %>" />
				</td>
				</tr>
				
				
			
				<tr>
				<td>Gender</td>
				<td>
				
				<%if(rs.getString("gender").equals("male")) {%>
				
					Male<input type="radio" id="male" name="gender" value="male" checked="checked">
			
					Female<input type="radio" id="female" name="gender" value="female">
			
					Other<input type="radio" id="other" name="gender" value="other">
				<% }
				
				else if (rs.getString("gender").equals("female")) {%>
				
					Male<input type="radio" id="male" name="gender" value="male" >
			
					Female<input type="radio" id="female" name="gender" value="female" checked="checked">
			
					Other<input type="radio" id="other" name="gender" value="other">
			<%    }
				
				else {%>
			
					Male<input type="radio" id="male" name="gender" value="male" >
			
					Female<input type="radio" id="female" name="gender" value="female">
			
					Other<input type="radio" id="other" name="gender" value="other" checked="checked">
			<%      } %>
			
			
				</td>
				</tr>
				
				
				
<tr>
<input type="text" name="id" value="<%=rs.getInt("id")%>" hidden>
<td colspan="2" align="center">

				<input type="submit" name="update" value= "Save" class="update" />
				 <input type="submit" name="delete" value= "Delete" class="delete" />
				 
</td>
</tr>
			</form>
			</table>

			
			<%	
			   }
            %>      
</body>

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
</html>