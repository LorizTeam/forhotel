<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for Booking3Form form</title>
	</head>
	<body>
		<html:form action="/booking3">
			<Strong>Guest Detail</Strong><br/>
			title : <html:text property="title"/><html:errors property="title"/><br/>
			name_sure : <html:text property="name_sure"/><html:errors property="name_sure"/><br/>
			email : <html:text property="email"/><html:errors property="email"/><br/>						
			intercode : <html:text property="intercode"/><html:errors property="intercode"/><br/>
			phonenum : <html:text property="phonenum"/><html:errors property="phonenum"/><br/>
			country : <html:text property="country"/><html:errors property="country"/><br/>
			
			<Strong>Occupancy</Strong><br/>
			oc_name_sure : <html:text property="oc_name_sure"/><html:errors property="oc_name_sure"/><br/>
			oc_title : <html:text property="oc_title"/><html:errors property="oc_title"/><br/>

			<Strong>Special request</Strong><br/>
			special_request : <html:text property="special_request"/><html:errors property="special_request"/><br/>
			
			<html:submit/><html:cancel/>
		</html:form>
	</body>
</html>

