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
		<title>JSP for PaypalForm form</title>
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/bootstrap-theme.css">
	<link rel="stylesheet" href="css/style.css" />
	<link href="fotorama.css" rel="stylesheet"/>
	</head>
	<body>
		<form class="thumbnail frmbg"  method="post" action="paypal.do">

			<img src="img/paypal_logo.png" class="img-responsive thumbnail">

			<button type="submit" class="btn btn-info" name="submit" value="submit" >Submit</button>
			<a class="btn btn-info">Cancel</a>
		</form>
	<script src="js/jquery-1.11.2.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="fotorama.js"></script>
	</body>	
</html>

