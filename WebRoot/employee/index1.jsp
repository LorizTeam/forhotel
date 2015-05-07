<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<!DOCTYPE html>
<html>
	<head>	
		<title>Hotel:Reservation</title>
		<link rel="stylesheet" href="../css/bootstrap.css">
		<link rel="stylesheet" href="../css/bootstrap-theme.css">		
		<link rel="stylesheet" href="css/c.css"/>
		<meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
	</head>
	<body class="bgc">
		<div class="hidden-xs"><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></div>
		<h4 class="text-center" align="center">Hotel Reservation Room</h4>
		<div class="row ">
			<div class="col-md-5" align="center"></div>
			<form class="form-horizontal frm-login col-md-2 text-center thumbnail" method="post" action="../employee.do"><br />
				<label class="text-center"> Username</label>
				<input class="form-control" name="username" type="text" required placeholder="Please Enter Username" /><br />
				<label class="center"> Password</label>
				<input class="form-control" name="password" type="password" required placeholder="Please Enter  Password" />

				<div class="text-right"><br />
					<a href="empoverview.jsp" class="btn btn-info form-control" name="submit"  value="Login" >Login</a>
				</div>

			</form>

			<div class="col-md-4"></div>
		</div>
		
	</body>
	<script src="js/jquery-1.11.2.min.js"></script>
	<script src="js/datepicker.js"></script>
	<script src="js/script1.js"></script>
</html>

