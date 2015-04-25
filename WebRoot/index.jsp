<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ page import ="com.smict.struts.data.*"%>
<%@ page import ="com.smict.struts.form.*"%>
<%@ page import ="java.util.*" %>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html> 
	<head>
		<title> Hotel </title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="UTF-8">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/bootstrap-theme.css">
		<link href="css/style.css" rel="stylesheet"/>
		<link href="fotorama.css" rel="stylesheet"/>
	</head>
	
	<body class="container-fluid " >
		<header id="index"  class="container row "style="height:130px; ">
		<nav class="fix">
			<div class="col-md-7">				
			</div>
			<div class="col-md-5">
				<div class="row text-center">
					<a href="booking.html" class=" btn  c"> BOOK NOW </a>
				</div>
				<div class="row menu-in text-right">
				<ul class="nav nav-pills text-right">
					<li><a class="concept scroll" href="#index">THE HOTEL</a></li>
					<li><a class="concept scroll" href="#gallery">GALLERY</a></li>
					<li><a class="concept scroll" href="#map">MAP</a></li>
					<li><a class="concept scroll" href="#">CONTACT</a></li>
				</ul>
				</div>
			</div>
		</nav>		
		</header>
		<!---------------------------1 page----------------------------------->
		
		<div class="container-fluid  bg ">
	
		<div class="fotorama" data-width="100%"  data-autoplay="true" data-loop="true">
		<%	if(request.getAttribute("lslide") != null){
				List lrtd = (List)request.getAttribute("lslide");
				for(Iterator iteritem = lrtd.iterator();iteritem.hasNext();){
					IndexForm idf = (IndexForm) iteritem.next();
		%>			
					<img src="<%=idf.getSlidepicpath()%>" >
		<%
				}
			}
		%> 
    		    	
    	</div>
    	
		<div class="container welcome" >
			<div class="col-md-6">
				<h2><span>Welcome</span></h2>
				<p><%=request.getAttribute("wel_detail") %></p>
				<h2><span>Service</span></h2>
				<ul >
		<%	if(request.getAttribute("lservices") != null){
				List lrtd = (List)request.getAttribute("lservices");
				for(Iterator iteritem = lrtd.iterator();iteritem.hasNext();){					
					IndexForm idf = (IndexForm) iteritem.next();
		%>
					<li><%=idf.getSerdetail() %></li>	
		<%
				}
			}
		 %>
			 	</ul>
			</div>
			<div class="col-md-6">
				<h2><span>Interested</span></h2>
				<p><%=request.getAttribute("inter_detail") %></p>
				<h2><span>Extention</span></h2>
				<ul >
		<%	if(request.getAttribute("extensions") != null){
				List lrtd = (List)request.getAttribute("extensions");
				for(Iterator iteritem = lrtd.iterator();iteritem.hasNext();){					
					IndexForm idf = (IndexForm) iteritem.next();
		%>			
					<li><%=idf.getExt_detail() %></li>			
		<%
				}		
			}	
		%>
			 	</ul>
			</div>			
		</div>
		</div>
		<!---------------------------1 page----------------------------------->
		<!---------------------------2 page----------------------------------->
			
	
		<div class="container-fluid  " id="gallery">	
			<div class="container">	
			<div class="row">	
			<h2>Gallery</h2>
			<%	if(request.getAttribute("hgallery") != null){
					List lrtd = (List)request.getAttribute("hgallery");
					for(Iterator iteritem = lrtd.iterator();iteritem.hasNext();){
					
						IndexForm idf = (IndexForm) iteritem.next();
			%>
				<article class="col-md-3">
					<a href="#"data-toggle="modal" data-target="#<%=idf.getHgal_id() %>">
						<img src="<%=idf.getHgal_picpath() %>" class="img-responsive">
					</a>
					<h4><%=idf.getHgal_name() %></h4>
					
		<!--------------------------modal----------------------------------->
<div class="modal fade" id="<%=idf.getHgal_id() %>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
    	<div class="modal-content">
      		<div class="modal-header">
        		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        		<h4 class="modal-title" id="myModalLabel"><%=idf.getHgal_name() %></h4>
      		</div>    
      		<div class="container">
      			<div class="row">
 				<div class="fotorama" data-width="600px" data-autoplay="true" data-loop="true">
 				<%	if(request.getAttribute("gallery") != null){
					List lrd = (List)request.getAttribute("gallery");
					for(Iterator iritem = lrd.iterator();iritem.hasNext();){
					
					IndexForm inf = (IndexForm) iritem.next();
				%>
 					<img src="<%=inf.getGal_picpath() %>" >
 				<%
						}
					}
			 	%>
			 	</div>
 				</div>
			</div>			
		     <div class="modal-footer">	
		     	<button type="button" class="btn btn-default" data-dismiss="modal">ยกเลิก</button>
		     </div>
    	</div>
  	</div>
</div> 			

		<!---------------------------modal----------------------------------->
				</article>	
				<%
					}
				}
			 %>	
				</div>									
			</div>			
		</div>
		<!---------------------------2 page----------------------------------->
		<!---------------------------3 page----------------------------------->
		<div class="container-fluid bg " id="map">				
			<div class="row-fluid">
				<div class="col-md-1"></div>
				<div class="col-md-10">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3873.3143632380406!2d100.45519929122301!3d13.880141916273555!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0000000000000000%3A0xa5cb986140f40f70!2z4Lia4LmJ4Liy4LiZ4LmA4Lit4Li34LmJ4Lit4Lit4Liy4LiX4Lij4LiX4LmI4Liy4Lit4Li04LiQ!5e0!3m2!1sen!2sth!4v1429707913879" width="100%" height="500" frameborder="0" style="border:0"></iframe>
				</div>
			</div>		
		</div>
		<!---------------------------3 page----------------------------------->

		<script src="js/jquery-1.11.2.min.js"></script>
		<script src="fotorama.js"></script>
		<script src="js/bootstrap.js"></script>
		<script>
			$(function() {
  $('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
});
		</script>
	</body>
</html>

