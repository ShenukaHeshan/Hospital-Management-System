<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>First Jsp Page</title>
<link rel="Stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<form action="<%= request.getContextPath() %>/register" method="post">

      <div class="inner-layer">
          <div class="container">
            <div class="row no-margin">
                <div class="col-sm-7">
                    <div class="content">
                        <h1>Book You turn Now and Save your time</h1>
                        <p>The entry of Our Hospitals into the state dominated healthcare sector in 1985, saw the private health care system take root in Sri Lanka. The launch of the hospital and the overwhelming response it received from the people demonstrated a long felt need for superior healthcare in a pleasant environment. </p>
                        <h2>For Help Call : +940-123-453</h2>
                    </div>
                </div>
                <div class="col-sm-5">
                    <div class="form-data">
                        <div class="form-head">
                            <h2>Book Appointemnt</h2>
                        </div>
                        <div class="form-body">
                            <div class="row form-row">
                              <input type="text" name="name" placeholder="Enter Full name" class="form-control" >
                            </div>
                            <div class="row form-row">
                              <input type="text" name="nic" placeholder="Enter NIC" class="form-control">
                            </div>
                            <div class="row form-row">
                              <input type="text" name="tp_no" placeholder="Enter Mobile Number" class="form-control">
                            </div>
                             <div class="row form-row">
                              <input type="text" name="address" placeholder="Enter Adreess" class="form-control">
                            </div>
                            <div class="row form-row">
                              <input type="text" name="age" placeholder="Enter Age" class="form-control">
                            </div>
                            <div class="row form-row">
	                           		<select name="doctor">
										<option disabled selected>Select Your doctor</option>
										<option value="Dr.B.G.N.Rathnasen">Dr.B.G.N.Rathnasen</option>
										<option value="Dr.P.N.Rajapakshe">Dr.P.N.Rajapakshe</option>
										<option value="Dr.B.D.A.Perera">Dr.B.D.A.Perera</option>
										<option value="Dr.Janaka De Silva">Dr.Janaka De Silva</option>
									</select>
                            </div>
                            
							              <input type="radio" name="gender" id="male" value="male">
							              <label for="male">Male</label>
							              <input type="radio" name="gender" id="female" value="female">
							              <label for="female">Female</label>
							              <input type="radio" name="gender" id="other" value="other">
							              <label for="other">Other</label>
              <br><br>
                             <div class="row form-row">
                               <input class="btn btn-success btn-appointment" type="submit" name="adduser" value="Book Appointment"> 
                            </div>

                        </div>
                    </div>
                </div>
            </div>
          </div>
      </div>
</form>


</body>
</html>