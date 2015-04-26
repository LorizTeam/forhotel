<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ page import ="com.smict.struts.data.*"%>
<%@ page import ="com.smict.struts.form.*"%>
<%@ page import ="java.util.*" %>
<%@ page import ="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<title>Room:Selection|Hotel.com</title>
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/bootstrap-theme.css">
	<link rel="stylesheet" href="css/style.css" />
</head>
	<body class="bbg">
		<div class="container">
			<div class="col-md-1"> </div>
			<div class="col-md-10 frm thumbnail">
				<h1>btHotel.com | Booking</h1>
				<ul class="nav nav-tabs nav-justified text-center">
					<li ><a href="booking1.jsp">Choose a room</a></li>
					<li class="active"><a href="#"> Enhance your stay</a></li>
					<li class="disabled"><a href="#">Book !</a></li>
				</ul>
				<div class="progress">
					<div class="progress-bar progress-bar-success" style="width: 33.7%">				
 					 </div>
  					<div class="progress-bar progress-bar-striped active" 
  					role="progressbar" aria-valuenow="34.4" aria-valuemin="0" 
  					aria-valuemax="100" style="width: 34.4%">		
  					</div>
  					<div class="progress-bar progress-bar-warning" style="width: 31.9%">				
 					 </div>
				</div>
			
				
    		<%	
    		String avail;
    		if(request.getAttribute("booking2Form") != null){
					List lrtd = (List)request.getAttribute("booking2Form");
					for(Iterator iteritem = lrtd.iterator();iteritem.hasNext();){
					
						Booking2Form b2f= (Booking2Form) iteritem.next();
						avail = "Select "+b2f.getRoomtype_name();
			%>
			<form class="thumbnail frmbg">
				<div class="row">
					<div class="col-md-3">
						<img src="" class="img-responsive">
					</div>
					<div class="col-md-9">
						<div class="row">
							<div class="col-md-3 text-right pad">Room No.</div>
							<div class="col-md-7 pad"><%=b2f.getRoom_id() %></div>
						</div>
						<div class="row">
							<div class="col-md-3 text-right pad">Room Type.</div>
							<div class="col-md-7 pad"><%=b2f.getRoomtype_name() %></div>
						</div>
						<div class="row">
							<div class="col-md-3 text-right pad"></div>
							<div class="col-md-7 pad">
								<button type="submit" class="btn btn-info" ><%=avail %></button>
							</div>
						</div>
					</div>
				</div>
					
					
					
				
				
				
			</form>
			<%
						}
				}
						
			%>
		
			</div>
		</div>
		
  		
  </body>
</html>
