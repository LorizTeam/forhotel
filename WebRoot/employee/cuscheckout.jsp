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
		
	<!-- 	<html:form action="/cuscheckout">
			<html:submit/><html:cancel/>
		</html:form>  -->
		
		<div class="container">
		<div class="thumbnail">
			<h2>Checkout</h2>
			<div class="well well-sm">You Are Booking</div>
			<div class="row">
				<div class="col-md-2">Property</div>
				<div class="form-group col-md-3">
	    			Resort
	  			</div>
	  			<div class="col-md-2">Check in</div>
	  			<div class="form-group col-md-3">
	    			29 May 2015
	  			</div>
			</div>
			<div class="row">
				<div class="col-md-2">Room Type</div>
				<div class="form-group col-md-3">
	    			Room 1
	  			</div>
	  			<div class="col-md-2">Check Out</div>
	  			<div class="form-group col-md-3">
	    			30 May 2015
	  			</div>
			</div>
			<div class="row">
				<div class="col-md-2">Guests</div>
				<div class="form-group col-md-1">
	    			<select class="form-control" id="sel1">
	    				<option></option>
	    				<option>1</option>
				        <option>2</option>
				        <option>3</option>
				    </select>
	  			</div>
	  			<div class="form-group col-md-1">
	    			<select class="form-control" id="sel1">
	    				<option></option>
	    				<option>1</option>
				        <option>2</option>
				        <option>3</option>
				    </select>
	  			</div>
	  			<div class="form-group col-md-1">
	    			<select class="form-control" id="sel1">
	    				<option></option>
	    				<option>1</option>
				        <option>2</option>
				        <option>3</option>
				    </select>
	  			</div>
	  			<div class="col-md-2">Total Cost</div>
	  			<div class="form-group col-md-3">
	    			<h4>$300.00</h4>
	  			</div>
			</div>
			
			<div class="well well-sm">You Are Details</div>
			<div class="row">
				<div class="col-md-2">Title</div>
				<div class="form-group col-md-3">
	    			<select class="form-control" id="sel1">
	    				<option>Mr.</option>
				        <option>Ms.</option>
				        <option>Miss.</option>
				    </select>
	  			</div>
	  			<div class="col-md-2">Address</div>
	  			<div class="form-group col-md-3">
	    			<input type="password" class="form-control" id="pwd">
	  			</div>
			</div>
			<div class="row">
				<div class="col-md-2">First Name</div>
				<div class="form-group col-md-3">
	    			<input type="password" class="form-control" id="pwd">
	  			</div>
	  			<div class="col-md-2">Suburb</div>
	  			<div class="form-group col-md-3">
	    			<input type="password" class="form-control" id="pwd">
	  			</div>
			</div>
			<div class="row">
				<div class="col-md-2">Last Name</div>
				<div class="form-group col-md-3">
	    			<input type="password" class="form-control" id="pwd">
	  			</div>
	  			<div class="col-md-2">State</div>
	  			<div class="form-group col-md-3">
	    			<select class="form-control" id="sel2">
	    				<option>Single</option>
				        <option>Married</option>
				    </select>
	  			</div>
			</div>
			<div class="row">
				<div class="col-md-2">Email</div>
				<div class="form-group col-md-3">
	    			<input type="password" class="form-control" id="pwd">
	  			</div>
	  			<div class="col-md-2">Post Code</div>
	  			<div class="form-group col-md-3">
	    			<input type="password" class="form-control" id="pwd">
	  			</div>
			</div>
			<div class="row">
				<div class="col-md-2">Phone</div>
				<div class="form-group col-md-3">
	    			<input type="password" class="form-control" id="pwd">
	  			</div>
	  			<div class="col-md-2">Country</div>
	  			<div class="form-group col-md-3">
	    			<select class="form-control" id="sel3">
	    				<option>Afghanistan</option>
				        <option>Albania</option>
				        <option>Armenia</option>
				        <option>France</option>
				        <option>Germany </option>
				        <option>Thailand</option>
				    </select>
	  			</div>
			</div>
			<div class="row">
				<div class="col-md-2">Mobile</div>
				<div class="form-group col-md-3">
	    			<input type="password" class="form-control" id="pwd">
	  			</div>
	  			<div class="col-md-2">Special Requirements</div>
	  			<div class="form-group col-md-3">
	    			<input type="password" class="form-control" id="pwd">
	  			</div>
			</div>
			<div class="row">
				<div class="col-md-10"></div>
				<div class="form-group col-md-2">
	    			<button type="button" class="btn btn-primary">Print</button>
	    			<button type="button" class="btn btn-danger">Cancel</button>
	  			</div>
			</div>
	    </div>
	    </div>
		
		
		<script src="../js/jquery-1.11.2.min.js"></script>
		<script src="js/script1.js"></script>
		<script src="js/datepicker.js"></script>	
	
	</body>
</html>