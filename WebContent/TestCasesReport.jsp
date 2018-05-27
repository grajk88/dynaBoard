<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>DynaBoard - Log Analysis</title>
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
<link rel="stylesheet" href="css/circle.css">

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
					<div class="row"></div>
				</div>
				<div class="col-md-2">
					<div class="navbar navbar-inverse" role="banner">
						<nav
							class="collapse navbar-collapse bs-navbar-collapse navbar-right"
							role="navigation"> </nav>
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
						<li><a href="Overview.jsp"><i
								class="glyphicon glyphicon-list"></i> Overview</a></li>
						<li><a href="LogAnalysis.jsp"><i
								class="glyphicon glyphicon-list"></i> Log Analysis</a></li>
					</ul>
				</div>
			</div>

			<div class="col-md-10">
			<p align="right">
						<button class="btn btn-primary" onclick="DynaBoard.jsp">Back to Dashboard</button>
					</p>
					<br/>
				<div class="content-box-large">

					<div class="panel-body">
					
						<div id="chartContainer" style="height: 300px; width: 100%;"></div>
						<br />
						<center>
							<b>Date : </b>22 May 2018 08:43:43 | <b>Total Duration :</b> 26
							mins 20 secs 238 ms
						</center>
					</div>

				</div>
				<div class="content-box-large">
												<div class="panel-title">Passed, Failed and Skipped Ratio</div>
				
					<div class="panel-body">
						<div class="row" align="center">
						
							<div class="c100 p67 green" style="margin-left: 300px;">
								<span>67%</span>
								<div class="slice">
									<div class="bar"></div>
									<div class="fill"></div>
								</div>
							</div>							
							<div class="c100 p33 orange" style="margin-left: 50px;">
								<span>33% </span>
								<div class="slice">
									<div class="bar"></div>
									<div class="fill"></div>
								</div>
							</div>
							<div class="c100 p0 blue" style="margin-left: 50px;">
								<span>0%</span>
								<div class="slice">
									<div class="bar"></div>
									<div class="fill"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="content-box-large">
												<div class="panel-title">Test Results</div>

					<div class="panel-body">


						<br />

						<table cellpadding="0" cellspacing="0" border="0"
							class="table table-striped table-bordered" id="example">
							<thead>
								<tr>
									<th>Scenario</th>
									<th>Status</th>
									<th>Duration</th>
									<th>Screenshot</th>
									<th>Diagnosis Report</th>
								</tr>
							</thead>
							<tbody>
								<tr class="odd gradeX">
									<td>Navigate to Create Policy Page</td>
									<td align="center"><img src="images/green.png"
										height="20px" width="20px" /></td>
									<td>1 min 28 secs and 353 ms</td>
									<td class="center"></td>
									<td class="center"></td>

								</tr>
								<tr class="odd gradeA">
									<td>Product selection</td>
									<td align="center"><img src="images/green.png"
										height="20px" width="20px" /></td>
									<td>2 mins 30 secs 233ms</td>
									<td class="center"></td>
									<td class="center"></td>
								</tr>

								<tr class="odd gradeA">
									<td>Create Quote for Motor Insurance</td>
									<td align="center"><img src="images/red.png" height="20px"
										width="20px" /></td>
									<td>4 mins 42 secs 173ms</td>
									<td class="center"><a>Attachment_654</a></td>
									<td class="center">Not able to find <b>Product</b> select
										box
									</td>
								</tr>
								<tr class="odd gradeA">
									<td>Create Quote for Home Insurance</td>
									<td align="center"><img src="images/green.png"
										height="20px" width="20px" /></td>
									<td>2 mins 22 secs 452ms</td>
									<td class="center"></td>
									<td class="center"></td>
								</tr>
								<tr class="odd gradeA">
									<td>Create Quote for Boat Insurance</td>
									<td align="center"><img src="images/red.png" height="20px"
										width="20px" /></td>
									<td>5 mins 50 secs 345ms</td>
									<td class="center"><a>Attachment_655</a></td>
									<td class="center">WebDriverException - <b>Browser</b> got
										closed
									</td>
								</tr>
								<tr class="odd gradeA">
									<td>Create Quote for Life Insurace</td>
									<td align="center"><img src="images/green.png"
										height="20px" width="20px" /></td>
									<td>6 mins 53 secs 273ms</td>
									<td class="center"></td>
									<td class="center"></td>
								</tr>

							</tbody>
						</table>
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

	<script>
		window.onload = function() {

			var chart = new CanvasJS.Chart("chartContainer", {
				animationEnabled : true,
				title : {
					text : "Jenkins.Generate.Quote.Tests"
				},
				data : [ {
					type : "pie",
					startAngle : 240,
					indexLabel : "{label} {y}",
					dataPoints : [ {
						y : 4,
						label : "Passed"
					}, {
						y : 2,
						label : "Failed"
					}, {
						y : 0,
						label : "Skipped"
					} ]
				} ]
			});
			chart.render();

		}
	</script> </footer>

	<link href="vendors/datatables/dataTables.bootstrap.css"
		rel="stylesheet" media="screen">

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://code.jquery.com/jquery.js"></script>
	<!-- jQuery UI -->
	<script src="https://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="bootstrap/js/bootstrap.min.js"></script>

	<script src="vendors/datatables/js/jquery.dataTables.min.js"></script>

	<script src="vendors/datatables/dataTables.bootstrap.js"></script>

	<script src="js/custom.js"></script>
	<script src="js/tables.js"></script>
</body>
</html>