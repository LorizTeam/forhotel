<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ page import ="com.smict.struts.data.*"%>
<%@ page import ="com.smict.struts.form.*"%>
<%@ page import ="java.util.*" %>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.servlet.http.HttpServletRequest.*"%>
<%@ page import ="javax.servlet.http.HttpServletResponse.*"%>
<%@ page import ="javax.servlet.http.HttpSession.*"%>

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
	<link href="fotorama.css" rel="stylesheet"/>
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
			<form class="thumbnail frmbg"  method="post" action="booking2.do">
				<div class="row">
					<div class="col-md-5">
						<a href="#" data-toggle="modal" data-target="#<%=b2f.getRoomtype_id() %>" data-whatever="@getbootstrap">
							<img src="<%=b2f.getRoomtype_picpath()%>" class="img-responsive thumbnail">
							<input name="roomtype_picpath" type="hidden" value="<%=b2f.getRoomtype_picpath()%>" />
							<input name="roomtype_id" type="hidden" value="<%=b2f.getRoomtype_id() %>" />
						</a> 
					</div>
					<input name="roomtype_name" type="hidden" value="<%=b2f.getRoomtype_name() %>" />
					<div class="col-md-7">
						<div class="row">
							<div class="col-md-4 text-right pad"><strong>Room No:</strong></div>
							<div class="col-md-8 pad"><%=b2f.getRoom_id() %></div>
							<input name="room_id" type="hidden" value="<%=b2f.getRoom_id() %>" />
							
						</div>
						<div class="row">
							<div class="col-md-4 text-right pad"><strong>Room Type:</strong></div>
							<div class="col-md-8 pad"><%=b2f.getRoomtype_name() %></div>
							<input name="roomtype_name" type="hidden" value="<%=b2f.getRoomtype_name() %>" />
							
						</div>
						<div class="row">
							<div class="col-md-4 text-right pad"><strong>Bedding:</strong></div>
							<div class="col-md-8 pad">
							<%=b2f.getRoomtype_single_bed() %>x Single bed | 
							<%=b2f.getRoomtype_double_bed() %>X Double bed</div>
							<input name="roomtype_single_bed" type="hidden" value="<%=b2f.getRoomtype_single_bed() %>" />
							<input name="roomtype_double_bed" type="hidden" value="<%=b2f.getRoomtype_double_bed() %>" />
						</div>
						<div class="row">
							<div class="col-md-4 text-right pad"><strong>Guests:</strong></div>
							<div class="col-md-8 pad"><%=b2f.getRoomtype_guest() %></div>						
						</div>
						<div class="row">
							<div class="col-md-4 text-right pad"><strong>Av. price per night:</strong></div>
							<div class="col-md-8 pad"><%=b2f.getRoomtype_price() %></div>
							<input name="price_total" type="hidden" value="<%=b2f.getPrice_total() %>" />
							
						</div>
						<div class="row">
							<div class="col-md-4 text-right pad"></div>
							<div class="col-md-8 pad">
								<button type="submit" class="btn btn-info" ><%=avail %></button>
							</div>
						</div>
					</div>
				</div>
			<div class="modal fade" id="<%=b2f.getRoomtype_id() %>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-body">
			      <div class="row">
			      	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
			        	<span aria-hidden="true">&times;</span>
			        </button>
			        </div>
			       <div class="row">
			        <div class="fotorama" data-nav="thumbs" data-width="100%"  data-allowfullscreen="true" data-autoplay="true" data-loop="true">
			        	
			        <%	
 					dbconnect dbcon = new dbconnect();
					Connection con = dbcon.DBconn_mysql();
					String sqlQuery = "select * from roomtype_pic where roomtype_id='"+b2f.getRoomtype_id()+"'";
					Statement stmt = con.createStatement();
					ResultSet rs = stmt.executeQuery(sqlQuery);
			 				
 				
					while(rs.next()){			
				%>	
					
			       <a href="<%=rs.getString("roomtype_picpath")%>"><img src="<%=rs.getString("roomtype_picpath")%>" width="144" height="96"></a>     
			        
			      <%
						}			
			 	%> 
			 	</div>
			 	</div>
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
	<script src="fotorama.js"></script>
  		
  </body>
</html>
