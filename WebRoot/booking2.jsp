<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ page import ="com.smict.struts.data.*"%>
<%@ page import ="com.smict.struts.form.*"%>
<%@ page import ="java.util.*" %>
<%@ page import ="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'booking2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  		<html:form action="/booking2">
    This is my JSP page. <br>
    		<%	
    		String avail;
    		if(request.getAttribute("booking2Form") != null){
					List lrtd = (List)request.getAttribute("booking2Form");
					for(Iterator iteritem = lrtd.iterator();iteritem.hasNext();){
					
						Booking2Form b2f= (Booking2Form) iteritem.next();
						avail = "Select "+b2f.getRoomtype_name();
			%>
				<ul>
					<li><%=b2f.getRoom_id() %></li>
					<li><%=b2f.getRoomtype_id() %></li>
					<li><%=b2f.getRoomtype_name() %></li>
				</ul>
				
				<html:submit property ="submit" value="<%=avail %>"/>
			<%
						}
				}
						
			%>
		</html:form>
  </body>
</html>
