<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for EmployeeForm form</title>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
 	 	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/bootstrap-theme.css">
		<link rel="stylesheet" href="css/style.css" />
		<link href="css/jqu.date.css" rel="stylesheet">
	</head>
	<body>
		<form method="post" action="../employee.do">
						<input name="username" type="text" /><br/>
						<input name="password" type="password" /><br/>
					<button type="submit" class="btn btn-info" name="submit" value="submit" >Submit</button>
					<a class="btn btn-info">Cancel</a>
		</form>
	</body>
	<script src="js/jquery-1.11.2.min.js"></script>
	<script src="js/datepicker.js"></script>
	<script src="js/script1.js"></script>
</html>

