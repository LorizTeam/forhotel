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
		<h2 class="text-center text-primary">Overview</h2>
		<div class="container">
		<h3>Room Status</h3>
		<div class="row">
			
			<div class="row">
			<div class="col-md-10"></div>
			<div class="col-md-2">
				<table class="table table-bordered ">
					<tr>
						<td>Using</td>
						<td>Active</td>					
					</tr>
					<tr>						
						<td><a class="btn btn-warning col-md-12" href="#"></a></td>
						<td><a class="btn btn-info col-md-12" href="#"></a></td>
					</tr>
				</table>
			</div>
			</div>
			<h5>Floor 1</h5>
			<table class="table table-bordered ">		
				<tr class="active ">
					<th>001</th>
					<th>002</th> 
					<th>003</th>
					<th>004</th>
					<th>005</th>
					<th>006</th>
					<th>007</th>
					<th>008</th>
					<th>009</th>
					<th>010</th>
					<th>011</th>
					<th>012</th>
				</tr>
				<tr>
					<td><a class="btn btn-info col-md-12" href="#"></a></td>
					<td><a class="btn btn-info col-md-12" href="#"></a></td>
					<td><a class="btn btn-info col-md-12" href="#"></a></td>
					<td><a class="btn btn-warning col-md-12" href="#"></a></td>
					<td><a class="btn btn-warning col-md-12"  href="#"></a></td>
					<td><a class="btn btn-info col-md-12" href="#"></a></td>
					<td><a class="btn btn-warning col-md-12"  href="#"></a></td>
					<td><a class="btn btn-info col-md-12" href="#"></a></td>
					<td><a class="btn btn-warning col-md-12"  href="#"></a></td>
					<td><a class="btn btn-warning col-md-12" href="#"></a></td>
					<td><a class="btn btn-info col-md-12" href="#"></a></td>
					<td><a class="btn btn-warning col-md-12" href="#"></a></td>
				</tr>
			</table>
			<h5>Floor 2</h5>
			<table class="table table-bordered ">		
				<tr class="active ">
					<th>201</th>
					<th>202</th> 
					<th>203</th>
					<th>204</th>
					<th>205</th>
					<th>206</th>
					<th>207</th>
					<th>208</th>
					<th>209</th>
					<th>210</th>
					<th>211</th>
					<th>212</th>
				</tr>
				<tr>
					<td><a class="btn btn-warning col-md-12" href="#"></a></td>
					<td><a class="btn btn-info col-md-12" href="#"></a></td>
					<td><a class="btn btn-warning col-md-12" href="#"></a></td>
					<td><a class="btn btn-info col-md-12" href="#"></a></td>
					<td><a class="btn btn-warning col-md-12"  href="#"></a></td>
					<td><a class="btn btn-info col-md-12" href="#"></a></td>
					<td><a class="btn btn-warning col-md-12"  href="#"></a></td>
					<td><a class="btn btn-warning col-md-12" href="#"></a></td>
					<td><a class="btn btn-info col-md-12"  href="#"></a></td>
					<td><a class="btn btn-warning col-md-12" href="#"></a></td>
					<td><a class="btn btn-info col-md-12" href="#"></a></td>
					<td><a class="btn btn-warning col-md-12" href="#"></a></td>
				</tr>
			</table>
		</div>
		
		<div class="row text-center">
			<div class="col-md-6">Latest Booking</div>
			<div class="col-md-6">Latest Booking</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<table class="table">
					<tr class="success">
						<th>Booking id</th>
						<th>Customer name</th>
						<th>Arrival</th>
						<th>Departure</th>
					</tr>
					<tr>
						<td>2403</td>
						<td>Noppol Kongsattra</td>
						<td>20-12-2556</td>
						<td>01-01-2557</td>
					</tr>
					<tr>
						<td>2404</td>
						<td>Manuwat Chaichana</td>
						<td>25-06-2558</td>
						<td>26-06-2558</td>
					</tr>
					<tr>
						<td>2405</td>
						<td>Atikun Bunmea</td>
						<td>20-12-2556</td>
						<td>01-01-2557</td>
					</tr>
				</table>
			</div>
			<div class="col-md-6">
				<table class="table">
					<tr class=" info">
						<th>Booking id</th>
						<th>Customer name</th>
						<th>Arrival</th>
						<th>Departure</th>
					</tr>
					<tr>
						<td>2403</td>
						<td>Noppol Kongsattra</td>
						<td>20-12-2556</td>
						<td>01-01-2557</td>
					</tr>
					<tr>
						<td>2404</td>
						<td>Manuwat Chaichana</td>
						<td>25-06-2558</td>
						<td>26-06-2558</td>
					</tr>
					<tr>
						<td>2405</td>
						<td>Atikun Bunmea</td>
						<td>20-12-2556</td>
						<td>01-01-2557</td>
					</tr>
				</table>
			</div>
		</div>
		</div>
		<footer class="text-center thumbnail">
			Smart-Hotel.com 
		</footer>
		
		<script src="../js/jquery-1.11.2.min.js"></script>
		<script src="js/script1.js"></script>
		<script src="js/datepicker.js"></script>	
	
	</body>
</html>