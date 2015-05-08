<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<!DOCTYPE html>
<html>
	<head>
		<title>Check Out</title>
		<link rel="stylesheet" href="../css/bootstrap.css" />
		<link rel="stylesheet" href="../css/bootstrap-theme.css" />
		<link rel="stylesheet" href="css/c.css"/>
		<link href="css/jqu.date.css" rel="stylesheet">
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
  		<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	</head>
	<body class="bgc">
		<%@include file="nav.jsp" %>
		<h2 class="text-center text-primary"><b>Check In</b></h2>
		<div class="container thumbnail">
			
			<br>
				
				<h4 class=" text-center">Please insert booking id and customer name</h4>
			
			<br/>
			<div class="row">
				<div class="col-md-1 text-right">Booking ID</div>
				<div class="col-md-3"><input type="text" class="form-control"></div>
				<div class="col-md-2 text-right">Name and sure name</div>
				<div class="col-md-3"><input type="text" class="form-control"></div>
				<div class="col-md-2"><a class="btn btn-success btn-lg" href="checkin.jsp"> Search </a></div>
			</div>
			<br><br/>
			
			
					
		</div>
	<br><br/><br><br/><br><br/>
		<footer class="text-center thumbnail">
			Smart-Hotel.com 
		</footer>
		
		<script src="../js/jquery-1.11.2.min.js"></script>
		<script src="js/script1.js"></script>
		<script src="js/datepicker.js"></script>	
	
	</body>
</html>