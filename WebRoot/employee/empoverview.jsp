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
	<div class="" align="center"><h3>Latest Booking</h3></div>
	</div>
	<div class="container">
		<div class="thumbnail text-right">
	<table class="table table-hover text-left">
	
	 <tr>
     	<th>Booking ID</th>
     	<th>Rooms No.</th>
     	<th>Room Name</th>
     	<th>Customer Name</th>
     	<th>Check-in</th>
     	<th>Check-Out</th>
     	<th>Price</th>
     	<th>Status</th>
     </tr>
     <tr>    	
     	<td>1200003</td>
     	<td>301</td>
     	<td>Deluxe Room</td>
     	<td>Smart ICT Co.Ltd</td>
     	<td>20-12-2018</td>
     	<td>01-1-2019</td>
     	<td>300000.00</td>
     	<td>Wait</td>
     </tr>
  	<tr>    	
     	<td>1200004</td>
     	<td>234</td>
     	<td>Double Deluxe Room</td>
     	<td>Smart ICT Co.Ltd</td>
     	<td>20-12-2018</td>
     	<td>01-1-2019</td>
     	<td>400000.00</td>
     	<td>Wait</td>
     </tr>
     
	</table>
	<a href="#"class="btn btn-info">More..</a>
	</div>
	</div>
		
	<div class="container">
	<div class="" align="center"><h3>In use</h3></div>
	</div>
	<div class="container">
		<div class="thumbnail text-right">
	<table class="table table-hover text-left">
	
	 <tr>
     	<th>Rooms No.</th>
     	<th>Room Name</th>
     	<th>Customer Name</th>
     	<th>Tel.Room</th>
     	<th>Status</th>
     </tr>
     <tr>    	
     	<td>301</td>
     	<td>Deluxe Room</td>
     	<td>Smart ICT Co.Ltd</td>
     	<td>02-920xxxx</td>
     	<td>Active</td>
     </tr>
  	<tr>    	
     	<td>302</td>
     	<td>Deluxe Room</td>
     	<td>Smart ICT Co.Ltd</td>
     	<td>02-920xxxx</td>
     	<td>Active</td>
     </tr>
     
	</table>
	<a href="#"class="btn btn-info">More..</a>
	</div>
	</div>
	

		
		
		
		
		
		
		
		
		
		<html:form action="/empoverview">
		
			<%	
    		if(request.getAttribute("emp_detail") != null){
					List lrtd = (List)request.getAttribute("emp_detail");
					for(Iterator iteritem = lrtd.iterator();iteritem.hasNext();){
					
						EmpoverviewForm empovvf= (EmpoverviewForm) iteritem.next();
			%>
					<%=empovvf.getEmp_username() %>
					<%=empovvf.getEmp_password() %>
					<%=empovvf.getEmp_name_sure() %>
					<%=empovvf.getEmp_dob() %>
					<%=empovvf.getEmp_country() %>
					<%=empovvf.getEmp_city() %>
					<%=empovvf.getEmp_addr() %>
					<%=empovvf.getEmp_workin() %>
					<%=empovvf.getEmp_workout() %>
					<%=empovvf.getEmp_zipcode() %>
			<%
					}
				}
			%>
		</html:form>
	
		<script src="../js/jquery-1.11.2.min.js"></script>
		<script src="js/script1.js"></script>
		<script src="js/datepicker.js"></script>	
	
	</body>
</html>

