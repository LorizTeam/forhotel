<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for Booking1Form form</title>
	</head>
	<body>
		<html:form action="/booking1">
			date_check_in : <html:text property="date_check_in"/>
			date_check_out : <html:text property="date_check_out"/>
			people_booking : <html:text property="people_booking"/>
			<br/>
			<br/>
			<html:submit property ="submit" value="submit"/>
		</html:form>
	</body>
</html>

