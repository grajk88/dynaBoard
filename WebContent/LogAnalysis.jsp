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
				<div class="content-box-large">
					<div class="panel-heading">
						<div class="panel-title">Log Analysis Report</div>
					</div>
					<div class="panel-body">
						<table cellpadding="0" cellspacing="0" border="0"
							class="table table-striped table-bordered" id="example">
							<thead>
								<tr>
									<th>Jenkins Job Name</th>
									<th>Exception Type</th>
									<th>Scenario</th>
									<th>Timestamp</th>
									<th>Screenshot</th>
									<th>Possible Error</th>
								</tr>
							</thead>
							<tbody>
								<tr class="odd gradeX">
									<td>Jenkins.Generate.Quote.Tests</td>
									<td>NoSuchElementException</td>
									<td>Create a quote for car insurance</td>
									<td class="center">2018-05-16 11:50:59</td>
									<td class="center"><a>Attachment_016</a></td>
									<td class="center"><b>Create Button</b> might not be
										present</td>

								</tr>
								<tr class="odd gradeA">
									<td>Jenkins.Generate.Quote.Tests</td>
									<td>ElementNotSelectableException</td>
									<td>Create a quote for home insurance</td>
									<td class="center">2018-05-16 09:15:59</td>
									<td class="center"><a>Attachment_715</a></td>
									<td class="center"><b>Create Button</b> might not be
										present</td>

								</tr>

								<tr class="even gradeA">
									<td>Jenkins.Generate.Quote.Tests</td>
									<td>NoSuchWindowException</td>
									<td>Create a quote for bike insurance</td>
									<td class="center">2018-05-16 11:50:59</td>
									<td class="center"><a>Attachment_341</a></td>
									<td class="center"><b>Browser Window</b> not available</td>

								</tr>
								<tr class="gradeA">
									<td>Jenkins.Create.Policy.Tests</td>
									<td>StaleElementReferenceException</td>
									<td>Apply for a policy</td>
									<td class="center">2018-05-16 04:26:59</td>
									<td class="center"><a>Attachment_499</a></td>
									<td class="center"><b>Create Button</b> might not be
										present</td>

								</tr>
								<tr class="gradeA">
									<td>Jenkins.Create.Policy.Tests</td>
									<td>WebDriverException</td>
									<td>Transfer a policy</td>
									<td class="center">2018-05-16 17:50:15</td>
									<td class="center"><a>Attachment_391</a></td>
									<td class="center"><b>Scripting Issue</b> - Driver might
										have not passed correctly</td>

								</tr>
								<tr class="gradeA">
									<td>Jenkins.Create.Policy.Tests</td>
									<td>SessionNotFoundException</td>
									<td>Switch a policy</td>
									<td class="center">2018-05-16 09:34:00</td>
									<td class="center"><a>Attachment_937</a></td>
									<td class="center"><b>Browser</b> might have got expired</td>

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
	</footer>

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