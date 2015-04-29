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
				String roomtype_id = request.getParameter("roomtype_id");
				String room_id = request.getParameter("room_id"); 
				String roomtype_name = request.getParameter("roomtype_name");
				String roomtype_picpath = request.getParameter("roomtype_picpath");
				String roomtype_single_bed = request.getParameter("roomtype_single_bed");
				String roomtype_double_bed = request.getParameter("roomtype_double_bed");
				String price_total = request.getParameter("price_total");
			 %>
			 <%=roomtype_id %>
		</form>
	</body>
</html>

