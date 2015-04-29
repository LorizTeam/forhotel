<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ page import ="com.smict.struts.data.*"%>
<%@ page import ="com.smict.struts.form.*"%>
<%@ page import ="java.util.*" %>
<%@ page import ="java.sql.*" %>

<!DOCTYPE html>
<head>
	<title>Room:Selection|Hotel.com</title>
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/bootstrap-theme.css">
	<link rel="stylesheet" href="css/style.css" />
</head>
<html>
	<body class="bbg">
		<div class="container">
			<div class="col-md-1"> </div>
			<form class="col-md-10 frm thumbnail" method="post" action="booking3.do">
				<h1>rHotel.com | Booking</h1>
				<ul class="nav nav-tabs nav-justified text-center">
					<li><a href="booking.html">Choose a room</a></li>
					<li ><a href="booking2.html">Enhance your stay</a></li>
					<li class="active"><a href="#">Book !</a></li>
				</ul>
				<div class="progress">
					<div class="progress-bar progress-bar-success" style="width: 68.1%">				
 					 </div>
 					 <div class="progress-bar progress-bar-striped active" 
  					role="progressbar" aria-valuenow="31.9" aria-valuemin="0" 
  					aria-valuemax="100" style="width: 31.9%">		
  					</div>
				</div>
			
		
			<% 	
				String roomtype_id = request.getParameter("roomtype_id");
				String room_id = request.getParameter("room_id"); 
				String roomtype_name = request.getParameter("roomtype_name");
				String roomtype_picpath = request.getParameter("roomtype_picpath");
				String roomtype_single_bed = request.getParameter("roomtype_single_bed");
				String roomtype_double_bed = request.getParameter("roomtype_double_bed");
				String price_total = request.getParameter("price_total");
					
			%>
	
			<div class="frmbg row">
				<h3>room details</h3>
				<div class="col-md-5">
						
							<img src="<%=roomtype_picpath%>" class="img-responsive thumbnail">
							<input name="roomtype_picpath" type="hidden" value="<%=roomtype_picpath%>" />
						
				</div>
				<div class="col-md-7">
						<div class="row">
							<div class="col-md-4 text-right pad"><strong>Room No:</strong></div>
							<div class="col-md-8 pad"><%=room_id %></div>
							<input name="roomtype_id" type="hidden" value="<%=room_id  %>" />
						</div>
						<div class="row">
							<div class="col-md-4 text-right pad"><strong>Room Type:</strong></div>
							<div class="col-md-8 pad"><%=roomtype_name %></div>
							<input name="roomtype_name" type="hidden" value="<%=roomtype_name %>" />				
						</div>
						<div class="row">
							<div class="col-md-4 text-right pad"><strong>Bedding:</strong></div>
							<div class="col-md-8 pad">
							<%=roomtype_single_bed %>x Single bed | 
							<%=roomtype_double_bed  %>X Double bed</div>
							<input name="roomtype_single_bed" type="hidden" value="<%=roomtype_double_bed  %>" />
							<input name="roomtype_double_bed" type="hidden" value="<%=roomtype_double_bed  %>" />
						</div>
						
						<div class="row">
							<div class="col-md-4 text-right pad"><strong>total price:</strong></div>
							<div class="col-md-8 pad"><%=price_total %>.- $</div>
							<input name="price_total" type="hidden" value="<%=price_total %>" />
							<input type="hidden" name="room_id" value="<%=room_id %>"/>
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
    		<%
    			if(request.getAttribute("show_numcode") != null){
   				List lrtd = (List)request.getAttribute("show_numcode");
		    		for(Iterator iteritem = lrtd.iterator();iteritem.hasNext();){
		    
		    	Booking3Form b3f= (Booking3Form) iteritem.next();
		    %>
		    <option value="<%=b3f.getTrue_calling() %>"><%=b3f.getDial_code() %></option>
		    <%
		    		}
		    	}
		    %>
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
			<%
    		if(request.getAttribute("show_country") != null){
					List lrtd = (List)request.getAttribute("show_country");
					for(Iterator iteritem = lrtd.iterator();iteritem.hasNext();){
					
						Booking3Form b3f= (Booking3Form) iteritem.next();
			%>
			<option value="<%=b3f.getCountry() %>"><%=b3f.getCountry() %></option>
			<%
					}
			}
			%>
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
			    <label>Request</label>		    
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
	</body>
</html>

