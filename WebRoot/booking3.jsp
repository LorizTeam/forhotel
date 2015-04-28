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

			<% 	
				String roomtype_id = request.getParameter("roomtype_id");
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
			title : <html:select property="title">
				    <html:option value="Mr.">Mr.</html:option>
				    <html:option value="Mrs.">Mrs.</html:option>
				    <html:option value="Miss.">Miss.</html:option>
				    <html:option value="Ms.">Ms.</html:option>
				    <html:option value="Dr. ">Dr. </html:option>
		    		</html:select>
			name_sure : <html:text property="name_sure"/><html:errors property="name_sure"/><br/>
			email : <html:text property="email"/><html:errors property="email"/><br/>						
			intercode : <html:select property="dial_code">
    		<%
    			if(request.getAttribute("show_numcode") != null){
   				List lrtd = (List)request.getAttribute("show_numcode");
		    		for(Iterator iteritem = lrtd.iterator();iteritem.hasNext();){
		    
		    	Booking3Form b3f= (Booking3Form) iteritem.next();
		    %>
		    <html:option value="<%=b3f.getTrue_calling() %>"><%=b3f.getDial_code() %></html:option>
		    <%
		    		}
		    	}
		    %>
    </html:select>
			phonenum : <html:text property="phonenum"/><html:errors property="phonenum"/><br/>
			country : <html:select property="country">
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
			
			<Strong>Occupancy</Strong><br/>
			
			

			oc_title : <html:select property="oc_title">
					   <html:option value="Mr.">Mr.</html:option>
					   <html:option value="Mrs.">Mrs.</html:option>
					   <html:option value="Miss.">Miss.</html:option>
					   <html:option value="Ms.">Ms.</html:option>
					   <html:option value="Dr. ">Dr. </html:option>
			    	   </html:select>
			oc_name_sure : <html:text property="oc_name_sure"/>

			<Strong>Special request</Strong><br/>
			special_request : <html:text property="special_request"/><html:errors property="special_request"/><br/>
			
			
			<html:submit/><html:cancel/>
		</html:form>
	</body>
</html>

