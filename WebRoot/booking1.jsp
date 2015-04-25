<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for Booking1Form form</title>
	</head>
	<body>
		<html:form action="/booking1">
			date_check_out : <html:text property="date_check_out"/><html:errors property="date_check_out"/><br/>
			date_check_in : <html:text property="date_check_in"/><html:errors property="date_check_in"/><br/>
			people_booking : <html:text property="people_booking"/><html:errors property="people_booking"/><br/>
			<html:submit/><html:cancel/>
		</html:form>
	</body>
</html>

