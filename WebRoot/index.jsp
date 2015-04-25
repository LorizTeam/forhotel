<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ page import ="com.smict.struts.data.*"%>
<%@ page import ="com.smict.struts.form.*"%>
<%@ page import ="java.util.*" %>
<%@ page import ="java.sql.*" %>
<html> 
	<head>
		<title>Hotel For Healthy</title>
	</head>
	<body>
		<html:form action="/index">
		<%	if(request.getAttribute("lslide") != null){
					List lrtd = (List)request.getAttribute("lslide");
					for(Iterator iteritem = lrtd.iterator();iteritem.hasNext();){
					
						IndexForm idf = (IndexForm) iteritem.next();
			%>
				<ul>
				<li><%=idf.getSlideid() %></li>
				<li><%=idf.getSlidepicpath() %></li>
				<li><%=idf.getUsablestatus() %></li>
				<li><%=idf.getUsabledetail() %></li>
				</ul>
			<%
					}
				}
			 %>
			<Strong>Welcome :</Strong> <%=request.getAttribute("wel_detail") %>
			<br/><br/>
			<Strong>Interested :</Strong> <%=request.getAttribute("inter_detail") %>
			<br/><br/>
			<Strong>Services</Strong>
			<%	if(request.getAttribute("lservices") != null){
					List lrtd = (List)request.getAttribute("lservices");
					for(Iterator iteritem = lrtd.iterator();iteritem.hasNext();){
					
						IndexForm idf = (IndexForm) iteritem.next();
			%>
				<ul>
				<li><%=idf.getSerid() %></li>
				<li><%=idf.getSerdetail() %></li>
				<li><%=idf.getSer_use() %></li>
				<li><%=idf.getSer_detail() %></li>
				<li><%=idf.getSer_empid() %></li>
				</ul>
			<%
					}
				}
			 %>
			 <br/><br/>
			<Strong>Extensions</Strong>
			<%	if(request.getAttribute("extensions") != null){
					List lrtd = (List)request.getAttribute("extensions");
					for(Iterator iteritem = lrtd.iterator();iteritem.hasNext();){
					
						IndexForm idf = (IndexForm) iteritem.next();
			%>
				<ul>
				<li><%=idf.getExt_id() %></li>
				<li><%=idf.getExt_detail() %></li>
				<li><%=idf.getExt_useid() %></li>
				<li><%=idf.getExt_usedetail() %></li>
				<li><%=idf.getExt_empid() %></li>
				</ul>
			<%
					}
				}
			 %>
			<br/><br/>
			<Strong>hGallery</Strong>
			<%	if(request.getAttribute("hgallery") != null){
					List lrtd = (List)request.getAttribute("hgallery");
					for(Iterator iteritem = lrtd.iterator();iteritem.hasNext();){
					
						IndexForm idf = (IndexForm) iteritem.next();
			%>
				<ul>
				<li><%=idf.getHgal_id() %></li>
				<li><%=idf.getHgal_name() %></li>
				<li><%=idf.getHgal_picpath() %></li>
				<li><%=idf.getHgal_picstatus() %></li>
				</ul>
			<%
					}
				}
			 %>
			<br/><br/>
			<Strong>Gallery</Strong>
			<%	if(request.getAttribute("gallery") != null){
					List lrtd = (List)request.getAttribute("gallery");
					for(Iterator iteritem = lrtd.iterator();iteritem.hasNext();){
					
						IndexForm idf = (IndexForm) iteritem.next();
			%>
				<ul>
				<li><%=idf.getGal_id() %></li>
				<li><%=idf.getGal_name() %></li>
				<li><%=idf.getGal_picpath() %></li>
				<li><%=idf.getGal_picstatus() %></li>
				</ul>
			<%
					}
				}
			 %>
			 <a href="booking1.jsp">Hello</a>
		</html:form>
	</body>
</html>

