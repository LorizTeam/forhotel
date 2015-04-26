<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ page import ="javax.servlet.http.HttpServletRequest.*"%>
<%@ page import ="javax.servlet.http.HttpServletResponse.*"%>
<%@ page import ="javax.servlet.http.HttpSession.*"%>
 
<html> 
	<head>
		<title>JSP for Booking1Form form</title>
	</head>
	<body>
		<html:form action="/booking1">
		<% 
		String date_check_in = "",date_check_out = "",people_booking = "";
		if ( session != null){
			date_check_in = (String) session.getAttribute("tcheck_in");
			date_check_out = (String) session.getAttribute("tcheck_out");
			people_booking = (String) session.getAttribute("gues_amount");
		}
		 %>
			date_check_in : <html:text property="date_check_in" value="<%=date_check_in %>"/>
			date_check_out : <html:text property="date_check_out" value="<%=date_check_out %>"/>
			people_booking : <html:text property="people_booking" value="<%=people_booking %>"/>
			<br/>
			<br/>
			<html:submit property ="submit" value="submit"/>
		</html:form>
	</body>
</html>

