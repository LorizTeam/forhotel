<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<!DOCTYPE html>
<html>
	<head>
		<title>Overview</title>
		<link rel="stylesheet" href="../css/bootstrap.css" />
		<link rel="stylesheet" href="../css/bootstrap-theme.css" />
		<link rel="stylesheet" href="css/c.css"/>
		
		 <link href="css/jqu.date.css" rel="stylesheet">
		 <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
  		<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	</head>
	<body class="bgc">
		<%@include file="nav.jsp" %>
		<div class="container">
			<div class="col-md-1"> </div>
			<form class="col-md-10 frm thumbnail" method="post" action="booking3.do">
				<h1>Hotel.com | Booking</h1>
				
			<div class="frmbg row">
				<h3>room details</h3>
				<div class="col-md-5">
						
							<img src="../img/around1.jpg" class="img-responsive thumbnail">
							<input name="roomtype_picpath" type="hidden" value="" />
						
				</div>
				<div class="col-md-7">
						<div class="row">
							<div class="col-md-4 text-right pad"><strong>Room No:</strong></div>
							<div class="col-md-8 pad"></div>
							<input name="roomtype_id" type="hidden" value="" />
						</div>
						<div class="row">
							<div class="col-md-4 text-right pad"><strong>Room Type:</strong></div>
							<div class="col-md-8 pad"></div>
							<input name="roomtype_name" type="hidden" value="" />				
						</div>
						<div class="row">
							<div class="col-md-4 text-right pad"><strong>Bedding:</strong></div>
							<div class="col-md-8 pad">
							x Single bed | 
							X Double bed</div>
							<input name="roomtype_single_bed" type="hidden" value="" />
							<input name="roomtype_double_bed" type="hidden" value="" />
						</div>
						
						<div class="row">
							<div class="col-md-4 text-right pad"><strong>total price:</strong></div>
							<div class="col-md-8 pad"></div>
							<input name="price_total" type="hidden" value="" />
							<input type="hidden" name="room_id" value=""/>
						</div>
					</div>
			</div>
			<h3>Enter guest details</h3>
			<div class="row">
			  <div class="form-group col-md-2">
			    <label>Title</label>
			   <select class="form-control" name="title">
				    <option value="Mr.">Mr.</option>
				    <option value="Mrs.">Mrs.</option>
				    <option value="Miss.">Miss.</option>
				    <option value="Ms.">Ms.</option>
				    <option value="Dr. ">Dr. </option>
		    	</select>
			  </div>
				 <div class="form-group  col-md-5">
			    <label>First name and Last name </label>
			   	<input class="form-control" type="text" name="name_sure"/>
			  </div>
			   <div class="form-group col-md-5">
			    <label>E-mail</label>
			   	 <input class="form-control" type="email" name="email"/>
			  </div>
			</div>
			<div class="row">
				<div class="form-group  col-md-3">
			    	<label>International code</label>
		    				
					<select  class="form-control"  name="dial_code">
    		
		   			 <option value=""></option>
		   
    				</select>
    			</div>
			    <div class="form-group  col-md-5">
			    	<label>Telephone number</label>
			    	<input class="form-control" type="text" name="phonenum"/>
			    </div>
			</div>
			 <div class="row">
			 	<div class="form-group  col-md-5">
			    	<label>Telephone number</label>
	  
			Country : <select class="form-control" name="country">
			
			<option value=""></option>
			
			</select>
			  </div>
			 </div>
			 
			 <h3>Occupancy</h3>
			<div class="row"> 
				<div class="form-group col-md-2">
			    <label>Title</label>
			   <select class="form-control" name="oc_title">
				    <option value="Mr.">Mr.</option>
				    <option value="Mrs.">Mrs.</option>
				    <option value="Miss.">Miss.</option>
				    <option value="Ms.">Ms.</option>
				    <option value="Dr. ">Dr. </option>
		    	</select>
			  </div>
			  <div class="form-group col-md-5">
			   <label>oc_name_sure</label>
			   	<input class="form-control" type="text" name="oc_name_sure"/>
			  </div>
			  
			</div>


			<h3>Special request<small>-option</small></h3>
			<p>You may include any special requests. Special requests cannot be guaranteed,
			 but we will do our best to meet your requirements.</p>
			<div class="row"> 
				<div class="form-group col-md-5">
			    		    
			    	<input  class="form-control" type="text" name="special_request" required/>	
			    </div>
			</div>
			
			<h3>Sales terms and conditions</h3>
			<p><b>Deposit:</b> EUR0.00 (No guarantee deposit. The credit/debit card
			 number is required but the card will not be debited.) </p>
			 <p><b>Balance: </b>The balance of EUR170.00 must be paid directly at check-in.</p>
			 <p><b>Cancellation terms and conditions:</b>Free cancellation if cancelled up to 1 day prior to arrival.
			  If cancelled 1 day before check-in, the first night without extras is charged. In the event of a no-show, 
			  100% of the booking amount is charged.</p>
			  <br/>
			  <input class="" type="checkbox" value="accept"> I have read the <a href="#">Sales terms and conditions</a>
			   and confirm that I agree and understand to them.
			<div class="row">
				<div class="form-group col-md-7">		    		    
			    	<input class="btn btn-info" value="confirm my booking" type="submit"/>	
			    	<p><i class="glyphicon glyphicon-lock"> </i> You will be redirected to our secure site to enter your payment information</p>
			    </div>
			</div>
		
						
			</form>
		</div>
		
		
		
		
		
		<script src="../js/jquery-1.11.2.min.js"></script>
		<script src="js/script1.js"></script>
		<script src="js/datepicker.js"></script>	
	
	</body>
</html>


