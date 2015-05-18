
<!DOCTYPE html>
<html>
	<head>
		<title>Smart-Hotel</title>
		<meta charset="UTF-8" />
		<link rel="stylesheet" href="../css/bootstrap.css" />
		<link rel="stylesheet" href="../css/bootstrap-theme.css" />
		<link rel="stylesheet" href="css/c.css"/>
		 <link href="css/jqu.date.css" rel="stylesheet">
		 <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
  		<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	</head>
	<body class="bgc">
		<%@include file="nav.jsp" %>
		<h2 class="text-center text-primary">Rooms list</h2>
		<div class="container-fluid">
		<div class="row ">
			
			<form class="container"method="post" action="index.jsp">
			<div class=" navbar navbar-default col-md-10 navcus">
			<div class="navbar-header">
		      <a class="navbar-brand" href="#">
		        <span class="text-primary"><strong>Rooms list</span></strong>
		      </a>
		    </div>		
			
			<div class=" navbar-right r">
			    	<div class="row">
			    		
			    		<a href="room.jsp" class="btn btn-success">Room list</a>
						<a href="roomtype.jsp" class="btn btn-success">Room Type</a>
			    		<a href="#" class="btn btn-success">Hotel packages</a>

			    	</div>    	
			   </div>		
				</div>
				<div class=" navbar navbar-default col-md-2 navcus r2">
					<a class="btn btn-info"data-toggle="modal" data-target="#addCus">
						<i class="glyphicon glyphicon-plus"> </i>
						Add new room
					</a>
				</div>
			</form>	
			
		</div>
		<div class=" thumbnail">
		<table  class="table table-hover">
			<thead>
				<th>Number</th>
				<th>Description</th>
				<th>Group name</th>
				<th>Bed(SB)</th>
				<th>Bed(DB)</th>
				<th>Extra beds</th>
				<th>Rate per room</th>
				<th>Rate per person</th>
				<th></th>
			</thead>
		
			<tr>
				<td>001</td>		
				<td>Double/Twin room - Standard</td>
				<td> - </td>
				<td>2</td>
				<td>1</td>
				<td>1</td>
				<td>50$</td>
				<td>20$</td>
				
				<td><a href="#"data-toggle="modal" data-target="#editCus1"><i class="glyphicon glyphicon-pencil"></i>Edit</a></td>	
			</tr>
			<tr>
				<td>002</td>		
				<td>Single room</td>
				<td> - </td>
				<td>0</td>
				<td>2</td>
				<td>0</td>
				<td>25$</td>
				<td>10$</td>				
				
				
				<td><a href="#"data-toggle="modal" data-target="#editCus1"><i class="glyphicon glyphicon-pencil"></i>Edit</a></td>	
			</tr>
			<tr>
				<td>003</td>		
				<td>Single room deluxe</td>
				<td> - </td>
				<td>1</td>
				<td>1</td>
				<td>0</td>
				<td>25$</td>
				<td>10$</td>				
				
				
				<td><a href="#"data-toggle="modal" data-target="#editCus1"><i class="glyphicon glyphicon-pencil"></i>Edit</a></td>	
			</tr>
			<tr>
				<td>004</td>		
				<td>Double room Deluxe</td>
				<td> - </td>
				<td>2</td>
				<td>2</td>
				<td>0</td>
				<td>50$</td>
				<td>20$</td>				
				
				
				<td><a href="#"data-toggle="modal" data-target="#editCus1"><i class="glyphicon glyphicon-pencil"></i>Edit</a></td>	
			</tr>
		</table>
		</div>

		<!------------------------------------------------------------modal add customer------------------------------------------------>
		<div class="modal fade" id="addCus" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content">
		      <div class="modal-header  alert-info">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title" id="myModalLabel">Add new room<small> Room information</small></h4>
		      </div>
		      <div class="modal-body ">
		      	<div class="row">
				  	<div class="col-md-3 text-right">Room number </div>
				  	<div class="col-md-4"><input type="text" class="form-control"/></div> 
				  	<div class="col-md-1 text-right">Floor </div>
				  	<div class="col-md-3">
						<select class="form-control"> 
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
						</select>
					</div>  			
			  	</div>
			  	<div class="row">
				  	<div class="col-md-3 text-right">Room Type</div>
				  	<div class="col-md-4">
				  		<select class="form-control">
							<option>---- Not assigned ----</option>
							
						</select>
				  	</div>  			
			  	</div>
			  	<br />
			  	<div class="row">
			  <div class="col-md-1"></div>
			    <div class="col-md-10">
			  	<div class="row thumbnail alert-info">
			  		<h5 ><b>Number of beds</b></h5>
				  	<div class="col-md-2 text-right">Single(SB)</div>
				  	<div class="col-md-2"><input type="text" class="form-control"/></div> 
				  	<div class="col-md-2 text-right">Double(DB) </div>
				  	<div class="col-md-2"><input type="email" class="form-control"/></div>  	
				  	<div class="col-md-2 text-right">Extra beds </div>
				  	<div class="col-md-2"><input type="email" class="form-control"/></div>  					  			
			  	</div>		  	
			  	</div>
			  	
			  	</div>
			  	<div class="row">
			  	<div class="col-md-1"></div>
				    <div class="col-md-10">
					  	<div class="row thumbnail alert-info">
					  		<h5 ><b>Description</b></h5>
					  		<textarea class="form-control"></textarea>		
					  	</div>	
				  	</div>
			  	</div>	
			  	<div class="row">
			  	<div class="col-md-1"></div>
				    <div class="col-md-10 thumbnail alert-info">	
					  	
					  		<h5 ><b>Room rate and payment type</b></h5>
					  		<div class="row">
						  		<div class="col-md-8"><input type="radio" name="pay_type" /> Rate per room - regardless of the number of people accommodated </div>
						  		<div class=" col-md-2">
						  		<input type="text" class="form-control" />
						  		<br>
					  		</div>
					  		<br />	  		
					  		</div>
					  		<div class="thumbnail">
					  		<div class="row">
					  		<div class="col-md-8"><input type="radio" name="pay_type" /> Rate per person - Depends on the number of people accommodated </div>
					  		</div>
					  		<br>
					  		<div class="row">
						  		<div class="col-md-3">Rate per adult </div>
						  		<div class=" col-md-2">
						  			<input type="text" class="form-control" />
					  			</div>
					  		</div>
					  		<div class="row">
						  		<div class="col-md-3"> Child </div>
						  		<div class=" col-md-2">
						  			<input type="text" class="form-control" />
					  			</div>
					  		</div>				
					  		</div>
				  	</div>
			  	</div>	
		      </div>
		      <div class="modal-footer  alert-info">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-primary">Save changes</button>
		      </div>
		    </div>
		  </div>
		</div>
		<!------------------------------------------------------------modal add customer------------------------------------------------>
		<!------------------------------------------------------------modal edit customer------------------------------------------------>
		<div class="modal fade" id="editCus1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content">
		      <div class="modal-header  alert-info">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title" id="myModalLabel">Edit room<small> Room information</small></h4>
		      </div>
		      <div class="modal-body ">
		      	<div class="row">
				  	<div class="col-md-3 text-right">Room number </div>
				  	<div class="col-md-4"><input type="text" class="form-control"/></div> 
				  	<div class="col-md-1 text-right">Floor </div>
				  	<div class="col-md-3">
						<select class="form-control"> 
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
						</select>
					</div>  			
			  	</div>
			  	<div class="row">
				  	<div class="col-md-3 text-right">Room Type</div>
				  	<div class="col-md-4">
				  		<select class="form-control">
							<option>---- Not assigned ----</option>
							
						</select>
				  	</div>  			
			  	</div>
			  	<br />
			  	<div class="row">
			  <div class="col-md-1"></div>
			    <div class="col-md-10">
			  	<div class="row thumbnail alert-warning">
			  		<h5 ><b>Number of beds</b></h5>
				  	<div class="col-md-2 text-right">Single(SB)</div>
				  	<div class="col-md-2"><input type="text" class="form-control"/></div> 
				  	<div class="col-md-2 text-right">Double(DB) </div>
				  	<div class="col-md-2"><input type="email" class="form-control"/></div>  	
				  	<div class="col-md-2 text-right">Extra beds </div>
				  	<div class="col-md-2"><input type="email" class="form-control"/></div>  					  			
			  	</div>		  	
			  	</div>
			  	
			  	</div>
			  	<div class="row">
			  	<div class="col-md-1"></div>
				    <div class="col-md-10">
					  	<div class="row thumbnail alert-warning">
					  		<h5 ><b>Description</b></h5>
					  		<textarea class="form-control"></textarea>		
					  	</div>	
				  	</div>
			  	</div>	
			  	<div class="row">
			  	<div class="col-md-1"></div>
				    <div class="col-md-10 thumbnail alert-warning">	
					  	
					  		<h5 ><b>Room rate and payment type</b></h5>
					  		<div class="row">
						  		<div class="col-md-8"><input type="radio" name="pay_type" /> Rate per room - regardless of the number of people accommodated </div>
						  		<div class=" col-md-2">
						  		<input type="text" class="form-control" />
						  		<br>
					  		</div>
					  		<br />	  		
					  		</div>
					  		<div class="thumbnail">
					  		<div class="row">
					  		<div class="col-md-8"><input type="radio" name="pay_type" /> Rate per person - Depends on the number of people accommodated </div>
					  		</div>
					  		<br>
					  		<div class="row">
						  		<div class="col-md-3">Rate per adult </div>
						  		<div class=" col-md-2">
						  			<input type="text" class="form-control" />
					  			</div>
					  		</div>
					  		<div class="row">
						  		<div class="col-md-3"> Child </div>
						  		<div class=" col-md-2">
						  			<input type="text" class="form-control" />
					  			</div>
					  		</div>				
					  		</div>
				  	</div>
			  	</div>	
		      </div>
		      <div class="modal-footer  alert-info">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-primary">Save changes</button>
		      </div>
		    </div>
		  </div>
		</div>
		<!------------------------------------------------------------modal edit customer------------------------------------------------>
		</div>
		
		
		
		
		<footer class="text-center thumbnail">
			Smart-Hotel.com 
		</footer>
	<script src="../js/jquery-1.11.2.min.js"></script>
	<script src="../js/bootstrap.js"></script>
		<script src="js/script1.js"></script>
		<script src="js/datepicker.js"></script>	
		
	
	</body>
</html>