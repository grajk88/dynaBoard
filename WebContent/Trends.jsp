<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>DynaBoard v3</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- jQuery UI -->
<link
	href="https://code.jquery.com/ui/1.10.3/themes/redmond/jquery-ui.css"
	rel="stylesheet" media="screen">

<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- styles -->
<link href="css/styles.css" rel="stylesheet">
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<link href="css/stats.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="header">
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<!-- Logo -->
					<div class="logo">
						<h1>
							<a href="index.html">DynaBoard</a>
						</h1>
					</div>
				</div>
				<div class="col-md-5">
					<div class="row">
						<div class="col-lg-12">
							
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<div class="navbar navbar-inverse" role="banner">
						<nav
							class="collapse navbar-collapse bs-navbar-collapse navbar-right"
							role="navigation">
						<ul class="nav navbar-nav">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">My Account <b class="caret"></b></a>
								<ul class="dropdown-menu animated fadeInUp">
									<li><a href="profile.html">Profile</a></li>
									<li><a href="login.html">Logout</a></li>
								</ul></li>
						</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="page-content">
		<div class="row">
			<div class="col-md-2">
				<div class="sidebar content-box" style="display: block;">
				<ul class="nav">
						<!-- Main menu -->
						<li><a href="DynaBoard.jsp"><i
								class="glyphicon glyphicon-home"></i> Dashboard</a></li>
								<li><a href="Overview.jsp"><i class="glyphicon glyphicon-list"></i>
								Overview</a></li>
						<li><a href="LogAnalysis.jsp"><i class="glyphicon glyphicon-list"></i>
								Log Analysis</a></li>
						</ul>
				</div>
			</div>
			<div class="col-md-10">



				<div class="panel-body" align="left">
				<p align="right">
						<button class="btn btn-primary" onclick="DynaBoard.jsp">Back to Dashboard</button>
					</p>
					<h3>
						<b>Jenkins.Create.Policy.Tests</b>
					</h3>
					
				</div>


				<div class="content-box-large">
					<div class="panel-heading">
						<div class="panel-options">
							<a href="#" data-rel="collapse"><i
								class="glyphicon glyphicon-refresh"></i></a> <a href="#"
								data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
						</div>
					</div>
					<div class="panel-body">
						<div id="chartContainer1" style="height: 300px; width: 100%;"></div>
					</div>
					<div class="panel-body" align="center">
						<b>X-Axis :</b> Last 7 days build | <b>Y-Axis :</b> Scenarios
						Count
					</div>
				</div>

				<div class="content-box-large">
					<div class="panel-heading">
						<div class="panel-options">
							<a href="#" data-rel="collapse"><i
								class="glyphicon glyphicon-refresh"></i></a> <a href="#"
								data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
						</div>
					</div>
					<div class="panel-body">
						<div id="chartContainer2" style="height: 300px; width: 100%;"></div>
					</div>
					<div class="panel-body" align="center">
						<b>X-Axis :</b> Last 7 days build | <b> Y-Axis : </b>Minutes
					</div>
				</div>

			</div>
		</div>
	</div>

	<footer>
	<div class="container">

		<div class="copy text-center">Designed and Developed by Giridhar
			Rajkumar</div>

	</div>
	</footer>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://code.jquery.com/jquery.js"></script>
	<!-- jQuery UI -->
	<script src="https://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="bootstrap/js/bootstrap.min.js"></script>

	<link rel="stylesheet" href="vendors/morris/morris.css">


	<script src="vendors/jquery.knob.js"></script>
	<script src="vendors/raphael-min.js"></script>
	<script src="vendors/morris/morris.min.js"></script>

	<script src="vendors/flot/jquery.flot.js"></script>
	<script src="vendors/flot/jquery.flot.categories.js"></script>
	<script src="vendors/flot/jquery.flot.pie.js"></script>
	<script src="vendors/flot/jquery.flot.time.js"></script>
	<script src="vendors/flot/jquery.flot.stack.js"></script>
	<script src="vendors/flot/jquery.flot.resize.js"></script>

	<script src="js/custom.js"></script>
	<script src="js/stats.js"></script>

	<script>
		window.onload = function() {

			var chart = new CanvasJS.Chart("chartContainer1", {
				animationEnabled : true,
				theme : "light2",
				title : {
					text : "Scenarios Pass Trend"
				},
				axisY : {
					includeZero : true
				},
				data : [ {
					type : "line",
					dataPoints : [ {
						y : 10
					}, {
						y : 8
					}, {
						y : 10
					}, {
						y : 4
					}, {
						y : 10
					}, {
						y : 10
					}, {
						y : 4
					} ]
				} ]
			});
			chart.render();

			var chart = new CanvasJS.Chart("chartContainer2", {
				animationEnabled : true,
				theme : "light2",
				title : {
					text : "Test Execution Duration Trend"
				},
				axisY : {
					includeZero : true
				},
				data : [ {
					type : "line",
					dataPoints : [ {
						y : 20
					}, {
						y : 18
					}, {
						y : 25
					}, {
						y : 19
					}, {
						y : 23
					}, {
						y : 17
					}, {
						y : 15
					} ]
				} ]
			});
			chart.render();

		}
	</script>
</body>
</html>