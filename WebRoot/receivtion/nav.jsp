<!DOCTYPE html>
<html>
	<head>
		<title>nav</title>
		<link rel="stylesheet" href="../css/bootstrap.css" />
		<link rel="stylesheet" href="../css/bootstrap-theme.css" />
		<link rel="stylesheet" href="css/c.css"/>
		 <link href="css/jqu.date.css" rel="stylesheet">
		 <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
  		<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	</head>
	<body class="bgc">
		<nav >
			<div class=" receiv">
				<div class="container ">
					<img src="../img/logo.png" class="col-md-2"/>
					<h1>Online Reservation System<small></small></h1>
				</div>					
			</div>
			<form class=" bgb" action="search.jsp">
			
				<div class="container-fluid">
					
					<div class="row">
					<style>
						.s{font-size:30px;}
					</style>
						<div class="col-sm-2 text-right"><span  class="w s ">Walk in</span></div>
						<div class="col-sm-1  w"><i class="glyphicon glyphicon-ok-sign"></i> CHECK IN</div>
							<div class="col-sm-2">
								<div class="form-group">
									<span class="form-control w" id="fromDisplay" name="from">Check in</span>
									<input type="hidden" name="from" value="" id="fromInput" required>
									<div class="vf-datepicker" id="startDP"></div>
								</div>
							</div>
						<div class="col-sm-1 text-right w"><i class="glyphicon glyphicon glyphicon-remove-sign"></i> CHECK OUT</div>
						<div class="col-sm-2">
							<div class="form-group">	
								<span class="form-control w" id="toDisplay">Check out</span>
								<input type="hidden" name="to" value="" id="toInput"required>
								<div class="vf-datepicker" id="endDP"></div>
							</div>
							
						</div>
						
						<div class="col-sm-1 text-right w"><i class="glyphicon glyphicon-user"> </i> Guests</div>
						<div class="col-sm-1">	
							<select class="form-control" >
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
								<option>6</option>
								<option>7</option>
								<option>8</option>
								<option>9</option>
							</select>
						</div>
						<div class="col-sm-1 ">
							<button class="btn btn-success radius"type="submit">Check availability<i class="glyphicon glyphicon-chevron-right"></i></button>
						</div>						
					</div>
				</div>			 				
					
			</form>
			<nav class="navbar navbar-default container">
			  <div class="container-fluid">
			    <ul class="nav navbar-nav navbar-left">
			    	<li><a href="overview.jsp">Overview</a></li>
			    	<li><a href="searchChkin.jsp">Check in</a></li>
			    	<li><a href="customer.jsp">Customer</a></li>
			    	<li><a href="room.jsp">Room</a></li>
			    	
			    </ul>
			    <ul class="nav navbar-nav navbar-right">
			    	<li><a href="index1.jsp">
			    		<i class="glyphicon glyphicon-remove-circle"></i>
			    		Sign out
			    	</a></li>
			    </ul>
			  </div>
			</nav>
		</nav>
						
		
		
		
		<script src="../js/jquery-1.11.2.min.js"></script>
		<script src="js/script1.js"></script>
		<script src="js/datepicker.js"></script>	
		
				
	
				
	
	</body>
</html>