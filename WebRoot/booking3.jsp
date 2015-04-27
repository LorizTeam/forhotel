<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ page import ="com.smict.struts.data.*"%>
<%@ page import ="com.smict.struts.form.*"%>
<%@ page import ="java.util.*" %>
<%@ page import ="java.sql.*" %>

<html> 
	<head>
		<title></title>
	</head>
	<body>
		<html:form action="/booking3">
<<<<<<< HEAD
			<% 	
				String roomtype_id = request.getParameter("roomtype_id");
=======

			<%

				String roomtype_id_test = request.getParameter("roomtype_id");
>>>>>>> origin/master
				String room_id = request.getParameter("room_id"); 

				String roomtype_name = request.getParameter("roomtype_name");
				String roomtype_picpath = request.getParameter("roomtype_picpath");
			%>
			<%=request.getParameter("roomtype_id") %>
			<%=request.getParameter("room_id") %>
			<%=request.getParameter("roomtype_name") %>
			<%=request.getParameter("roomtype_picpath") %>
			<br/>
			<%=roomtype_id %>
			<%=room_id %>
			<%=roomtype_name %>
			<%=roomtype_picpath %>
			<html:hidden property="room_id" value="<%=room_id %>"/>
			<Strong>Guest Detail</Strong><br/>
			title : <html:text property="title" /><html:errors property="title"/><br/>
			name_sure : <html:text property="name_sure"/><html:errors property="name_sure"/><br/>
			email : <html:text property="email"/><html:errors property="email"/><br/>						
			intercode : <html:text property="intercode"/><html:errors property="intercode"/><br/>
			phonenum : <html:text property="phonenum"/><html:errors property="phonenum"/><br/>
			country : <html:text property="country"/><html:errors property="phonenum"/><br/>
			
			<Strong>Occupancy</Strong><br/>
			
			<% String ga =(String) session.getAttribute("guest_amount");
				int i = 1,guest = Integer.parseInt(ga);
				while(i <= guest){	
			%>

			oc_title : <html:text property="oc_title"/><html:errors property="oc_title"/><br/>
			oc_name_sure : <html:text property="oc_name_sure"/><html:errors property="oc_name_sure"/><br/>
			<%
					i++;
				}
			%>
			<Strong>Special request</Strong><br/>
			special_request : <html:text property="special_request"/><html:errors property="special_request"/><br/>
			
			<html:select property="country">
			<%
    		if(request.getAttribute("show_country") != null){
					List lrtd = (List)request.getAttribute("show_country");
					for(Iterator iteritem = lrtd.iterator();iteritem.hasNext();){
					
						Booking3Form b3f= (Booking3Form) iteritem.next();
			%>
			<html:option value="<%=b3f.getCountry() %>"><%=b3f.getCountry() %></html:option>
			<%
					}
			}
			%>
			</html:select>
			<html:submit/><html:cancel/>
		</html:form>
	</body>
</html>

