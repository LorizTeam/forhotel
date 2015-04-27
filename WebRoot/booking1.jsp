<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ page import ="javax.servlet.http.HttpServletRequest.*"%>
<%@ page import ="javax.servlet.http.HttpServletResponse.*"%>
<%@ page import ="javax.servlet.http.HttpSession.*"%>
 
<!DOCTYPE html>
<html>
<head>
	<title>Room:Selection|Hotel.com</title>
	  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/bootstrap-theme.css">
	<link rel="stylesheet" href="css/style.css" />
	<link href="css/jqu.date.css" rel="stylesheet">
</head>

	<body class="bbg">
		<div class="container">
			<div class="col-md-1"> </div>
		<html:form action="/booking1">
		<div class="col-md-10 thumbnail frm">
		<% 
		String date_check_in = "",date_check_out = "",people_booking = "";
		if ( session != null){
			date_check_in = (String) session.getAttribute("tcheck_in");
			date_check_out = (String) session.getAttribute("tcheck_out");
			people_booking = (String) session.getAttribute("gues_amount");
		}
		
		 %>
			
			<h1>Hotel.com | Booking</h1>
				<ul class="nav nav-tabs nav-justified text-center">
					<li class="active"><a href="#">Choose a room</a></li>
					<li class="disabled"><a href="#">Enhance your stay</a></li>
					<li class="disabled"><a href="#">Book !</a></li>
				</ul>
				<div class="progress">
  					<div class="progress-bar progress-bar-striped active" 
  					role="progressbar" aria-valuenow="3.37" aria-valuemin="0" 
  					aria-valuemax="100" style="width: 33.7%">
    					<span class="sr-only">33% Complete</span>
  					</div>
  					<div class="progress-bar progress-bar-warning" style="width: 66.3%">
    					<span class="sr-only">20% Complete (warning)</span>
 					 </div>
 					 
				</div>
				<div class="frmbg">
				<div class="row">
					<div class="col-sm-2 text-right text-success"><i class="glyphicon glyphicon-ok-sign"></i> CHECK IN</div>
       				<div class="col-sm-3"> 					
       					<div class="form-group">
							<span class="form-control" id="fromDisplay2" name="from">Check in</span>
							<html:hidden name="from"  property="date_check_in" value="" ></html:hidden>
							<div class="vf-datepicker" id="startDP2"></div>
						</div>
					</div>
					<div class="col-sm-2 text-right text-warning"><i class="glyphicon glyphicon glyphicon-remove-sign"></i> CHECK OUT</div>
					<div class="col-sm-3">
						<div class="form-group"> 
							<span class="form-control" id="toDisplay2" name="to">Check out</span>
							<html:hidden name="to"  property="date_check_out" value="" ></html:hidden>
							<div class="vf-datepicker" id="endDP2"></div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-2 text-right text-info"><i class="glyphicon glyphicon-user"> </i> Guests</div>
					
					<div class="col-sm-3">	
						<html:select property="people_booking"  >
							<option><%=people_booking %></option>
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
							<option>7</option>
							<option>8</option>
							<option>9</option>
						</html:select>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-7"></div>
					<div class="col-sm-3 ">
						<button class="btn btn-success radius" type="submit">
							Check availability<i class="glyphicon glyphicon-chevron-right"></i>
						</button>
					</div>
				</div>	
				</div>
				<div class="row text-center footer">
					Back to <a href="index1.jsp"> Home </a>
				</div>
			</div>
		</html:form>
		</div>
	</body>
	<script src="js/jquery-1.11.2.min.js"></script>
	<script src="js/datepicker.js"></script>
	<script src="js/script1.js"></script>
</html>

