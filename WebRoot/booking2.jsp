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
					<div class="col-md-4">
						<a href="#" data-toggle="modal" data-target="#<%=b2f.getRoom_id() %>" data-whatever="@getbootstrap">
							<img src="<%=b2f.getRoomtype_picpath()%>" class="img-responsive thumbnail">
						</a>
					</div>
					<div class="col-md-8">
						<div class="row">
							<div class="col-md-3 text-right pad"><strong>Room No.</strong></div>
							<div class="col-md-7 pad"><%=b2f.getRoom_id() %></div>
						</div>
						<div class="row">
							<div class="col-md-3 text-right pad"><strong>Room Type.</strong></div>
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
			<div class="modal fade" id="<%=b2f.getRoom_id() %>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="exampleModalLabel">New message</h4>
			      </div>
			      <div class="modal-body">
			        <form>
			          <div class="form-group">
			            <label for="recipient-name" class="control-label">Recipient:</label>
			            <input type="text" class="form-control" id="recipient-name">
			          </div>
			          <div class="form-group">
			            <label for="message-text" class="control-label">Message:</label>
			            <textarea class="form-control" id="message-text"></textarea>
			          </div>
			        </form>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			        <button type="button" class="btn btn-primary">Send message</button>
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
	<script src="js/jquery-1.11.2.min.js"></script>
	<script src="js/bootstrap.js"></script>
  		
  </body>
</html>
