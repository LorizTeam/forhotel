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
		<title>JSP for EmpoverviewForm form</title>
	</head>
	<body>
		<html:form action="/empoverview">
		
			<%	
    		if(request.getAttribute("emp_detail") != null){
					List lrtd = (List)request.getAttribute("emp_detail");
					for(Iterator iteritem = lrtd.iterator();iteritem.hasNext();){
					
						EmpoverviewForm empovvf= (EmpoverviewForm) iteritem.next();
			%>
					<%=empovvf.getEmp_username() %>
					<%=empovvf.getEmp_password() %>
					<%=empovvf.getEmp_name_sure() %>
					<%=empovvf.getEmp_dob() %>
					<%=empovvf.getEmp_country() %>
					<%=empovvf.getEmp_city() %>
					<%=empovvf.getEmp_addr() %>
					<%=empovvf.getEmp_workin() %>
					<%=empovvf.getEmp_workout() %>
					<%=empovvf.getEmp_zipcode() %>
			<%
					}
				}
			%>
		</html:form>
	</body>
</html>

