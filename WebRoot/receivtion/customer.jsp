
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
		
		<h2 class="text-center text-primary">Customer base</h2>
		<div class="container-fluid">
		<div class="row ">
			
			<form class="container"method="post" action="">
			<div class=" navbar navbar-default col-md-10 navcus">
			<div class="navbar-header">
		      <a class="navbar-brand" href="#">
		        <span class="text-primary"><strong>Customer base</span></strong>
		      </a>
		    </div>		
			<div class="navbar-form navbar-left" role="search">					
			  <div class="form-group">
			  	Find customer by name
			    <input type="text" class="form-control" placeholder="Search">
			    
			    <button class="btn btn-success" type="submit">Search</button>
			  </div>		
			</div>
			<div class="thumbnail navbar-right r">
			    	<div class="row">
			    		<div class="col-md-12">
			    		<input type="radio"  name="rb" value="1" checked=""/> Last 20 customers who booked a room
			    		</div>
			    	</div>
			    	<div class="row">
			    		<div class="col-md-12">
			    		<input type="radio" name="rb" value="2"/> Last 20 customer added to the database
			    		</div>
			    	</div>
			    	<div class="row">
			    		<div class="col-md-12">
			    		<input type="radio" name="rb" value="3" /> All(loading may take a few minutes)
			    		</div>
			    	</div>    	
			   </div>		
				</div>
				<div class=" navbar navbar-default col-md-2 navcus r2">
					<a class="btn btn-info"data-toggle="modal" data-target="#addCus">
						<i class="glyphicon glyphicon-plus"> </i>
						Add new customer
					</a>
				</div>
			</form>	
			
		</div>
		<div class=" thumbnail">
		<table  class="table table-hover">
			<thead>
				<th>Title</th>
				<th>Name and surname</th>
				<th>Address</th>
				<th>Phone</th>
				<th>Email</th>
				<th>Birth date</th>
				<th>ID / Passport</th>
				<th>Nationality</th>
				<th>Child</th>
				<th>Regular</th>
				<th>Comment</th>
				<th></th>
			</thead>
		
			<tr>
				<td>Mr.</td>		
				<td>Noppol Kongsattra</td>
				<td>45/170 Thailand</td>
				<td>091-095-9xxx</td>
				<td>noppol.kon@spulive.net</td>
				<td>20-12-1991</td>
				<td>1101800512462</td>
				<td>Thai</td>
				<td>No</td>
				<td>Yes</td>
				<td>No</td>
				<td> - </td>
				<td><a href="#"data-toggle="modal" data-target="#editCus1"><i class="glyphicon glyphicon-pencil"></i>Edit</a></td>	
			</tr>
			<tr>
				<td>Mr.</td>		
				<td>Nelson Howe</td>
				<td>New york</td>
				<td>nel.s@gmail.com</td>
				<td>02-220xxxx</td>
				<td>12-04-1880</td>
				<td>141xxxxxxxx</td>				
				<td>British</td>
				<td>No</td>
				<td>Yes</td>
				<td>No</td>
				<td> - </td>
				<td><a href="#"data-toggle="modal" data-target="#editCus1"><i class="glyphicon glyphicon-pencil"></i>Edit</a></td>	
			</tr>
			
		</table>
		</div>

		<!------------------------------------------------------------modal add customer------------------------------------------------>
		<div class="modal fade" id="addCus" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content">
		      <div class="modal-header alert-success">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title" id="myModalLabel">Add new customer<small> customer information</small></h4>
		      </div>
		      <div class="modal-body ">
		      	<div class="row">
				  	<div class="col-md-3 text-right">Name and Surname </div>
				  	<div class="col-md-8"><input type="text" class="form-control"/></div>  			
			  	</div>
			  	<div class="row">
				  	<div class="col-md-3 text-right">Address</div>
				  	<div class="col-md-8"><textarea class="form-control"></textarea></div>  			
			  	</div>
			  	<div class="row">
			  		<div class="col-md-2"></div>
				  	<div class="col-md-1">Phone </div>
				  	<div class="col-md-3"><input type="text" class="form-control"/></div> 
				  	<div class="col-md-1">E-mail </div>
				  	<div class="col-md-4"><input type="email" class="form-control"/></div>  						  			
			  	</div>
			  	<div class="row">
			  		<div class="col-md-1"></div>
				  	<div class="col-md-2 text-right">ID / Passport</div>
				  	<div class="col-md-3"><input type="text" class="form-control"/></div>
				  	<div class="col-md-1">Nationality </div>
				  	<div class="col-md-4">
						<select class="form-control">
							<option>Thailand</option>
							<option>Taiwan</option>
							<option>Spain</option>
						</select>
					
					</div>  			 			
			  	</div>		
			  	<div class="row">
					<div class="col-md-3 text-right">Birth date </div>
					<div class="col-md-8"><input type="date" class="form-control"/></div>	  			
			  	</div>
			  	<div class="row">
					<div class="col-md-3 text-right">Birth Place </div>
					<div class="col-md-8"><input type="text" class="form-control"/></div>	  			
			  	</div>
			  	<div class="row">
				  	<div class="col-md-3 text-right">comments</div>
				  	<div class="col-md-8"><textarea class="form-control"></textarea></div>  			
			  	</div>
			  	<div class="row">
				  	<div class="col-md-3 text-right"></div>
				  	<div class="col-md-8"><input type="radio" name="status" /><span class="text-success">Regular</span>  <input type="radio" name="status" /><span class="text-danger">Blacklisted</span></div>  			
			  	</div>
		      </div>
		      <div class="modal-footer  alert-success">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-success">Save changes</button>
		      </div>
		    </div>
		  </div>
		</div>
		<!------------------------------------------------------------modal add customer------------------------------------------------>
		<!------------------------------------------------------------modal edit customer------------------------------------------------>
		<div class="modal fade" id="editCus1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-lg">
		    <div class="modal-content">
		      <div class="modal-header  alert-success">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title" id="myModalLabel">Edit customer<small> customer information</small></h4>
		      </div>
		      <div class="modal-body ">
		      	<div class="row">
		      	<div class="col-md-6">
			      	<div class="row">
					  	<div class="col-md-3 text-right">Name and Surname </div>
					  	<div class="col-md-8"><input type="text" class="form-control input-sm"/></div>  			
				  	</div>
				  	<div class="row">
					  	<div class="col-md-3 text-right">Address</div>
					  	<div class="col-md-8"><textarea class="form-control input-sm"></textarea></div>  			
				  	</div>
				  	<div class="row">
				  		
					  	<div class="col-md-3 text-right">Phone </div>
					  	<div class="col-md-8"><input type="text" class="form-control input-sm"/></div> 
					  	</div>
				  	<div class="row">
					  	<div class="col-md-3 text-right">E-mail </div>
					  	<div class="col-md-8"><input type="email" class="form-control input-sm"/></div>  						  			
				  	</div>
				  	<div class="row">
				  		
					  	<div class="col-md-3 text-right">ID / Passport</div>
					  	<div class="col-md-3"><input type="text" class="form-control input-sm"/></div>
					  	<div class="col-md-1">Nationality </div>
					  	<div class="col-md-4">
							<select class="form-control input-sm">
								<option>Thailand</option>
								<option>Taiwan</option>
								<option>Spain</option>
							</select>					
						</div>  			 			
				  	</div>		
				  	<div class="row">
						<div class="col-md-3 text-right">Birth date </div>
						<div class="col-md-8"><input type="date" class="form-control input-sm"/></div>	  			
				  	</div>
				  	<div class="row">
						<div class="col-md-3 text-right">Birth Place </div>
						<div class="col-md-8"><input type="text" class="form-control input-sm"/></div>	  			
				  	</div>
				  	<div class="row">
					  	<div class="col-md-3 text-right">comments</div>
					  	<div class="col-md-8"><textarea class="form-control input-sm"></textarea></div>  			
				  	</div>
				  	<div class="row">
					  	<div class="col-md-3 text-right"></div>
					  	<div class="col-md-8"><input type="radio" name="status" /><span class="text-success">Regular</span>  <input type="radio" name="status" /><span class="text-danger">Blacklisted</span></div>  			
				  	</div>
			      </div>
			      <div class="col-md-6 alert-warning">
			      	<h4>Reservation history</h4>
			      	<table class="table">
			      		<tr>
			      			<th>Room</th>
			      			<th>Arrival</th>
			      			<th>Departure</th>
			      			<th>Status</th>
			      		</tr>
			      		
			      	</table>
			      </div>
			      </div>
		      </div>
		      <div class="modal-footer  alert-success">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-success">Save changes</button>
		      </div>
		    </div>
		  </div>
		</div>
		<!------------------------------------------------------------modal edit customer------------------------------------------------>
		</div>
		
		<br/>
		<br/>
		<br/>
		
	
		
		<footer class="text-center thumbnail">
			Smart-Hotel.com 
		</footer>
	<script src="../js/jquery-1.11.2.min.js"></script>
	<script src="../js/bootstrap.js"></script>
		<script src="js/script1.js"></script>
		<script src="js/datepicker.js"></script>	
		
	
	</body>
</html>