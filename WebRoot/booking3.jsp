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
			<form class="col-md-10 frm thumbnail" method="post" action="">
				<h1>Hotel.com | Booking</h1>
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
			<%=price_total %>
			<div>
				<h3>room details</h3>
				<div class="row frmbg">					
					<div class="col-md-4">
						<%=room_id %> <%=roomtype_name %>
					</div>
					<div class="col-md-4">
						<img class="img-responsive" alt="<%=roomtype_id %>" src="<%=roomtype_picpath %>">
					</div>
				</div>
			</div>
			<h3>Enter guest details</h3>
			
			
			
			<input type="hidden" name="room_id" value="<%=room_id %>"/>
			<br/>
			Title : <select name="title">
				    <option value="Mr.">Mr.</option>
				    <option value="Mrs.">Mrs.</option>
				    <option value="Miss.">Miss.</option>
				    <option value="Ms.">Ms.</option>
				    <option value="Dr. ">Dr. </option>
		    		</select>
			Name Lastname : <input type="text" name="name_sure"/><br/>
			Email : <input type="email" name="email"/><br/>						
			Intercode : <select name="dial_code">
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
			Phonenum : <input type="text" name property="phonenum"/><br/>
			Country : <select name="country">
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
			
			<Strong>Occupancy</Strong><br/>
			
			

			oc_title : <select name="oc_title">
					   <option value="Mr.">Mr.</option>
					   <option value="Mrs.">Mrs.</option>
					   <option value="Miss.">Miss.</option>
					   <option value="Ms.">Ms.</option>
					   <option value="Dr. ">Dr. </option>
			    	   </select>
			oc_name_sure : <input type="text" name="oc_name_sure"/>

			<Strong>Special request</Strong><br/>
			special_request : <input type="text" name="special_request" required/>
						
			</form>
		</div>
	</body>
</html>

