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
<html> 
	<head>
		<title>JSP for DetailbookingForm form</title>
	</head>
	<body>
		<form action="detailbooking.do">
			<%
								String scheck_in = (String) session.getAttribute("tcheck_in"),
				scheck_out = (String) session.getAttribute("tcheck_out");
				String roomtype_id = (String) session.getAttribute("roomtype_id");
				String room_id = (String) session.getAttribute("room_id"); 
				String roomtype_name = (String) session.getAttribute("roomtype_name");
				String roomtype_picpath = (String) session.getAttribute("roomtype_picpath");
				String roomtype_single_bed = (String) session.getAttribute("roomtype_single_bed");
				String roomtype_double_bed = (String) session.getAttribute("roomtype_double_bed");
				String price_total = (String) session.getAttribute("price_total");
				
			 %>
			 <div class="frmbg row">
				<h3>room details</h3>
				<div class="col-md-5">
				<img src="<%=roomtype_picpath%>" class="img-responsive thumbnail">
				</div>
				<div class="col-md-7">
						<div class="row">
							<div class="col-md-4 text-right pad"><strong>Room No:</strong></div>
							<div class="col-md-8 pad"><%=room_id %></div>
						</div>
						<div class="row">
							<div class="col-md-4 text-right pad"><strong>Date Checkin:</strong></div>
							<div class="col-md-8 pad"><%=scheck_in %> 14:00</div>
						</div>
						<div class="row">
							<div class="col-md-4 text-right pad"><strong>Date Checkout:</strong></div>
							<div class="col-md-8 pad"><%=scheck_out %> 12:00</div>
						</div>
						<div class="row">
							<div class="col-md-4 text-right pad"><strong>Room Type:</strong></div>
							<div class="col-md-8 pad"><%=roomtype_name %></div>				
						</div>
						<div class="row">
							<div class="col-md-4 text-right pad"><strong>Bedding:</strong></div>
							<div class="col-md-8 pad">
							<%=roomtype_single_bed %>x Single bed | 
							<%=roomtype_double_bed  %>x Double bed</div>
						</div>
						
						<div class="row">
							<div class="col-md-4 text-right pad"><strong>total price:</strong></div>
							<div class="col-md-8 pad"><%=price_total %>.- $</div>
						</div>
					</div>
			</div>
		</form>
	</body>
</html>

