<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setDateHeader("Expires", 0);
	response.setHeader("Pragma", "no-cache");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
%>
<%@ page import="java.util.ResourceBundle"%>
<%@ page import="java.net.*"%>
<%
	File file = new File("/c drive/Test_Automatic/TA_CodeBase/TACodeBot/src/main/resources/");
	URL[] urls = {file.toURI().toURL()};
	ClassLoader loader = new URLClassLoader(urls);
	ResourceBundle resource = ResourceBundle.getBundle("urlprop", Locale.getDefault(), loader);
	String dynamicurl = resource.getString("dynamicurl");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>TestAutomatic</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="keywords"
	content="Test Automatic, TestAutomatic, Automatic test ,Reports, TAReports, Dynamic Reports, TA Sense, TASense, Analytics, TAAnalytics, Functional, Manual, Test, Testing, Automation, Automatic, HP, QTP, UFT, Selenium, TESTNG, JUNIT, waitr, Cucumber, Automator, Live, Code, Generator, QC, Quality Center, QuickTest Pro, JIRA, Excel, TestCase, Defect, TestStep, ALM, TestScenarios, Maven, Jenkins, GIT, Agile, dockers, Gradle, Ant">
<meta name="description"
	content="TestAutomation Aglie Automation Tool, Reports and Analytics for Sprints, Code Generator and Test Automation ">
<meta name="author" content="TestAutomatic">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=yes">
<meta http-equiv='cache-control' content='no-cache'>
<meta http-equiv='expires' content='0'>
<meta http-equiv='pragma' content='no-cache'>

<!--
****************************************************************************
import JS and CSS files
****************************************************************************
-->
<!-- Start of Customization and Analytics -->
<!-- Scripts js -->

<!-- <link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css"
	rel="stylesheet" /> -->

<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="shortcut icon" href="Welcome/ico/favicon.ico">
<link href="Welcome/css/googlefont.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

<!--   	slick grid code started   -->
<link rel="stylesheet" href="css/slick.grid.css" type="text/css" />
<link rel="stylesheet" href="css/slick-default-theme.css"
	type="text/css" />
<link rel="stylesheet" href="css/jquery-ui-1.8.16.custom.css"
	type="text/css" />
<link rel="stylesheet" href="css/examples.css" type="text/css" />
<link rel="stylesheet" href="css/w3.css" type="text/css" />
<link rel="stylesheet" href="css/prism.css" type="text/css" />




<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}
/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}
/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}
/* Set black background color, white text and some padding */
footer {
	background-color: #222;
	color: #ccc8c8;
	padding: 1rem;
	position: sticky;
	right: 0;
	left: 0;
	bottom: 0;
	font-size: 25px;
	font-family: 'Megrim', cursive;
}
/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 600px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
	.carousel-caption {
		display: none;
	}
}

.carousel-inner img {
	width: 100%;
	/* 100% Width*/
	margin: auto;
	min-height: 200px;
}

.row {
	margin: 3.5px
}

@media ( min-width : 768px) {
	.modal-sm {
		width: 600px;
	}
}

/*--- context menu ---*/
#contextMenu {
	background: #e1efc7;
	border: 1px solid gray;
	padding: 2px;
	display: inline-block;
	min-width: 100px;
	-moz-box-shadow: 2px 2px 2px silver;
	-webkit-box-shadow: 2px 2px 2px silver;
	z-index: 99999;
}

#contextMenu li {
	padding: 4px 4px 4px 14px;
	list-style: none;
	cursor: pointer;
	background: url("images/arrow_right_peppermint.png") no-repeat center
		left;
}

#contextMenu li:hover {
	background-color: white;
}

.my-grid {
	background: white;
	outline: 0;
	border: 1px solid gray;
}

tabs {
	position: relative;
	/* position: relative prevents IE scroll bug (element with position: relative inside container with overflow: auto appear as "fixed") */
	padding: .2em;
}

.ui-tabs .ui-tabs-nav {
	margin: 0;
	padding: .2em .2em 0;
}

.ui-tabs .ui-tabs-nav li {
	list-style: none;
	float: left;
	position: relative;
	top: 0;
	margin: 1px .2em 0 0;
	border-bottom-width: 0;
	padding: 0;
	white-space: nowrap;
}

.ui-tabs .ui-tabs-nav .ui-tabs-anchor {
	float: left;
	padding: .5em 1em;
	text-decoration: none;
}

.ui-tabs .ui-tabs-nav li.ui-tabs-active {
	margin-bottom: -1px;
	padding-bottom: 1px;
}

.ui-tabs .ui-tabs-nav li.ui-tabs-active .ui-tabs-anchor, .ui-tabs .ui-tabs-nav li.ui-state-disabled .ui-tabs-anchor,
	.ui-tabs .ui-tabs-nav li.ui-tabs-loading .ui-tabs-anchor {
	cursor: text;
}

.ui-tabs-collapsible .ui-tabs-nav li.ui-tabs-active .ui-tabs-anchor {
	cursor: pointer;
}

.ui-tabs .ui-tabs-panel {
	display: block;
	border-width: 0;
	padding: 1em 1.4em;
	background: none;
}

input:-webkit-autofill, input:-webkit-autofill:hover, input:-webkit-autofill:focus,
	input:-webkit-autofill:active {
	-webkit-transition-delay: 9999s;
	-webkit-transition: color 9999s ease-out, background-color 9999s
		ease-out;
}

.btn1-primary-outline {
	background-color: transparent;
	border-color: transparent;
}

.glyphicon.glyphicon-off {
	position: relative;
	top: 1px;
	display: inline-block;
	font-family: 'Glyphicons Halflings';
	font-style: normal;
	font-weight: 400;
	font-size: x-large;
	line-height: 1;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}

.btn1.focus, .btn1:focus, .btn1:hover {
	color: #fff;
	text-decoration: none;
}

.btn1 {
	transition: all .2s ease-in-out;
	padding: 7px 20px;
	font-size: inherit;
	margin: -15px 10px;
	margin-left: 0px;
}

.btn1-primary-outline {
	background-color: transparent;
	border-color: transparent;
}

.btn1, .btn1-sm {
	line-height: 1.46666667;
	border-radius: 5px;
}

.btn1 {
	display: inline-block;
	padding: 5px 25px;
	margin-bottom: 0;
	font-size: 14px;
	font-weight: 400;
	line-height: 1.42857143;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	background-image: none;
	border: 1px solid transparent;
	border-radius: 4px;
	outline-color: #222222;
}

input[type="search"]::-webkit-search-cancel-button {
	-webkit-appearance: searchfield-cancel-button;
}

@media ( max-width : @screen-xs) {
	body {
		font-size: 10px;
	}
}

@media ( max-width : @screen-sm) {
	body {
		font-size: 14px;
	}
}

h5 {
	font-size: 1.4em;
}
}
</style>

<style>
.overlay {
	background: rgba(192, 192, 192, 0.3);
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: 10;
	display: none;
	pointer-events: none;
}
</style>

<script src="js/jquery-2.1.0.min.js"></script>

<script src="bootstrap/js/bootstrap.js"></script>
<script src="js/prism.js"></script>

<script type="text/javascript">
	$(document).on('click', '#CreateRepo', function() {
		$(".alert").alert();
		var center = document.getElementById('myGrid');
		var spinner = new Spinner().spin(center);
		$(".overlay").fadeIn().append(spinner.el);
	});
</script>
<script src="js/spin.js"></script>

<script type='text/javascript'>
	function displayForm(c) {
		if (c.value == "1") {
			jQuery('#ParamDBContainer').toggle('show');
			jQuery('#ParamExcelContainer').hide();
			jQuery('#ParamLocalExcelContainer').hide();
			jQuery('#ParamLocalDBContainer').hide();
		}
		if (c.value == "2") {
			jQuery('#ParamExcelContainer').toggle('show');
			jQuery('#ParamDBContainer').hide();
			jQuery('#ParamLocalExcelContainer').hide();
			jQuery('#ParamLocalDBContainer').hide();
		}
		if (c.value == "3") {
			jQuery('#ParamLocalDBContainer').toggle('show');
			jQuery('#ParamELocalxcelContainer').hide();
			jQuery('#ParamDBContainer').hide();
			jQuery('#ParamExcelContainer').hide();
		}
		if (c.value == "4") {
			jQuery('#ParamLocalExcelContainer').toggle('show');
			jQuery('#ParamLocalDBContainer').hide();
			jQuery('#ParamDBContainer').hide();
			jQuery('#ParamExcelContainer').hide();
		}

	};
</script>

<script type="text/javascript">
	function checkfile(sender) {
		var validExts = new Array(".xlsx", ".xls", ".csv");
		var fileExt = sender.value;
		fileExt = fileExt.substring(fileExt.lastIndexOf('.'));
		if (validExts.indexOf(fileExt) < 0) {
			alert("Invalid file selected, valid files are of "
					+ validExts.toString() + " types.");
			return false;
		} else
			return true;
	}
</script>

<script type="text/javascript">
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script',
			'https://www.google-analytics.com/analytics.js', 'ga');
	ga('create', 'UA-80529305-1', 'auto');
	ga('send', 'pageview');
</script>

<script>
function GetSelectedItem(el1, el2)
{
    var e1 = document.getElementById(el1);
    var e2 = document.getElementById(el2);
/*     var strSel1 = "The Value is: " + e1.options[e1.selectedIndex].value;
    var strSel2 = "The Value is: " + e2.options[e2.selectedIndex].value; */
    //alert(e2.options[e2.selectedIndex].value);
	if(e2.options[e2.selectedIndex].value !="Select Column" || e1.options[e1.selectedIndex].value != "Select Excel / DB") {
		var s = document.getElementById("hiddenField");
	    var id1 = "Uservalue"+s.value;
	    var UservalueText = "##"+ e1.options[e1.selectedIndex].value + "."+e2.options[e2.selectedIndex].value;
	   	document.getElementById(id1).value = UservalueText;
	   	var EnterURLbyUser = $("#EnterURL").val();
	}   
	

	var dataString = "userselect="
	+ "UserValue"
	+ "&TestID="
	+ s.value
	+ "&EnterURL="
	+ EnterURLbyUser
	+ "&UserselectedValue="
	+ e1.options[e1.selectedIndex].value + "."+e2.options[e2.selectedIndex].value;

	
																			
	/* To refresh CodeGenerator */
	$.ajax({
		type : "POST",
		url : "ParameterizationExcelServlet?"+ dataString,
		content: "text/plain",
		success : function(CodeResponseText) {
			$("#codegenie").html(CodeResponseText);			
			var block = document.getElementById('codegenie');
			Prism.highlightElement(block);	
		}
	});
	
		
}
</script>

<script>
		setTimeout(function() {document.getElementById('taalerts').innerHTML='';},10000);
	</script>

<script type="text/javascript">
        $(document).ready(function () {
            $('input[type="checkbox"]').on('change', function (e) {
                if (e.target.checked) {
                    $('#LinksModal').modal();
                }
            });
        })
    </script>
</head>






<!--*******************************************************************************************
Menu Bar
*******************************************************************************************-->

<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="Home">
				<div style="font-family: 'Megrim', cursive;">
					<p style="font-size: 25px; font-family: 'Megrim', cursive;">TestAutomatic</p>
				</div>
			</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">
<!-- 						<div style="font-family: 'Poiret One', cursive; font-size: 17px;"> -->
<%-- 							Hello ${firstname}</div> --%>
							<div style="font-family: 'Poiret One', cursive; font-size: 17px;">
							Hello Guest</div>
				</a></li>

				<li><img class="img-circle img-user media-object"
					src="css/images/av1.png" alt="Profile Picture"></li>
				<span>&nbsp;</span>

				<li>
					<%-- 					<form action="${pageContext.request.contextPath}/logout" --%>
					<!-- 						method="post"> -->
					<form name="frm1" id="frm1" role="form" class="btn scroll-link"
						action="Home" method="get">
						<button type="submit" class="btn1 btn1-primary-outline">
							<span class="glyphicon glyphicon-off"></span>
						</button>
					</form>
				</li>
			</ul>
		</div>

	</div>
	</nav>



	<!-- <div class="alerts"> -->
	<!-- <div id= "taalerts" class="alert alert-primary"><strong>TestAutomatic Message - </strong>  Contact us for intranet applications </div> -->
	<!-- </div> -->

	<%--<div class="alert alert-info alert-dismissable">--%>
	<%--<a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>--%>
	<%--<strong>TestAutomatic Message - </strong> Contact us for intranet applications--%>
	<%--</div>--%>


	<!--*******************************************************************************************
Panel 1 - Read URL,  Automate me and Parameterization button
*******************************************************************************************-->

	<section class="main-container padding-bottom-clear">
	<form class="form-horizontal text-left" action="GridServlets"
		method="post">
		<div class="row">
			<li><a href="#sessionval">
					<div
						style="font-family: 'Poiret One', cursive; font-size: 17px; color: red">
						${sessionvalidation}</div>
			</a></li>
			<div class="col-md-6">
				<div class="panel w3-panel w3-card-8">

					<div class="panel-body" style="height: 300px">
						<label for="Enter URL">Enter URL</label> <input
							class="form-control" id="EnterURL" type="search" name="urlreader"
							placeholder="https://www.google.co.in" value="${urlname}">
						<br> <span style="color: red">${urlvalidation} </span></input> <br>

						<button type="submit" style="margin: 20px 30px; margin-left: 0px;"
							class="btn btn-success btn-md" id="CreateRepo" name="CreateRepo"
							value="CreateRepo">
							<span class="glyphicon glyphicon-globe"></span> Automate Me
						</button>

						<button type="button" data-toggle="modal" data-target="#myModal"
							class="btn_parameterization btn-primary btn-md">
							<span class="glyphicon glyphicon-tasks"></span> Parameterize
						</button>

						<div class="modal fade" id="myModal" role="dialog">
							<div class="modal-dialog modal-sm">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">Parameterization Details</h4>
									</div>
									<div class="modal-body">

										<form>
											<label class="radio-inline"> <input value="1"
												type="radio" name="formselector" onClick="displayForm(this)">
												Global Database
											</label> <label class="radio-inline"> <input value="2"
												type="radio" name="formselector" onClick="displayForm(this)">Global
												Excel
											</label> <label class="radio-inline"> <input value="3"
												type="radio" name="formselector" onClick="displayForm(this)">
												Local Database
											</label> <label class="radio-inline"> <input value="4"
												type="radio" name="formselector" onClick="displayForm(this)">Local
												Excel
											</label>
										</form>
										<form>
											<div style="display: none" id="ParamDBContainer">
												<form id="ParamDbForm">
													<div class="panel panel-info">
														<div class="panel-heading">
															<center>Parameterization Using Global Database</center>
														</div>
														<div class="panel-body">
															<form class="form-inline">
																<div class="form-group">
																	<label for="GlobalType">Global Database Type:</label> <input
																		type="text" class="form-control" id="GlobaldbType"
																		placeholder="MYSQL">
																</div>
																<div class="form-group">
																	<label for="GlobalService"> Global Database
																		Service Name:</label> <input type="text" class="form-control"
																		id="GlobaldbServName" placeholder="com.mysql.jdbc">
																</div>
																<div class="form-group">
																	<label for="GlobalHost">Global Database Host
																		Name:</label> <input type="text" class="form-control"
																		id="GlobaldbHostName" placeholder="3306/Testautomatic">
																</div>
																<div class="form-group">
																	<label for="Globalport">Global Database Port:</label> <input
																		type="text" class="form-control" id="GlobaldbPort"
																		placeholder="1891">
																</div>
																<div class="form-group">
																	<label for="Globalschema">Global Database
																		Schema:</label> <input type="text" class="form-control"
																		id="GlobaldbSchema" placeholder="TESTAUTO">
																</div>
																<div class="form-group">
																	<label for="pwd">Global Database Password:</label> <input
																		type="password" class="form-control" id="GlobaldbPwd">
																</div>
																<button type="button"
																	class="btn btn-info btn-md disabled">
																	<span class="glyphicon glyphicons-database-plus"></span>
																	Global Database Submit
																</button>
																<p>
																	<b><i>This feature is only available under
																			"TestAutomatic" Licensed Version. <br> Contact
																			us for further details
																	</i></b>
																</p>
															</form>
														</div>
													</div>
												</form>
											</div>
											<br>
											<div style="display: none" id="ParamExcelContainer">
												<form id="ParamExcelForm"
													action="ParameterizationExcelServlet?userselect=GlobalExcel"
													method="post" enctype="multipart/form-data">
													<div class="panel panel-success">
														<div class="panel-heading">
															<center>Parameterization Using Global Excel</center>
														</div>
														<div class="panel-body">
															<form class="form-inline">
																<div class="form-group">
																	<label for="GlobalFileType">Global File Type:</label> <input
																		type="text" class="form-control" id="FileType"
																		placeholder="XLSX Or XLS Or CSV">
																</div>
																<div class="fileupload fileupload-new"
																	data-provides="fileupload">
																	<span class="Globalfileupload-new">Global Select
																		file</span> <input type="file" name="fileupload"
																		id="Globalfile" onchange="checkfile(this);" /> <span
																		class="fileupload-preview"></span>
																</div>
																<button type="submit" class="btn btn-success"
																	value="Upload">Global Excel Upload</button>

																<span style="color: green">${excelUploadSuccess}
																</span> <span style="color: red">${excelUploadFailure} </span>

																<p>
																	<b><i>This feature is only available under
																			"TestAutomatic" Licensed Version. <br> Contact
																			us for further details
																	</i></b>
																</p>
															</form>
														</div>
													</div>
												</form>
											</div>


											<div style="display: none" id="ParamLocalDBContainer">
												<form id="ParamLocalDbForm">
													<div class="panel panel-warning">
														<div class="panel-heading">
															<center>Parameterization Using Local Database</center>
														</div>
														<div class="panel-body">
															<form class="form-inline">
																<div class="form-group">
																	<label for="LocalType">Local Database Type:</label> <input
																		type="text" class="form-control" id="LocaldbType"
																		placeholder="MYSQL">
																</div>
																<div class="form-group">
																	<label for="LocalService"> Local Database
																		Service Name:</label> <input type="text" class="form-control"
																		id="LocaldbServName" placeholder="com.mysql.jdbc">
																</div>
																<div class="form-group">
																	<label for="LocalHost">Local Database Host
																		Name:</label> <input type="text" class="form-control"
																		id="LocaldbHostName" placeholder="3306/Testautomatic">
																</div>
																<div class="form-group">
																	<label for="Localport">Local Database Port:</label> <input
																		type="text" class="form-control" id="LocaldbPort"
																		placeholder="1891">
																</div>
																<div class="form-group">
																	<label for="Localschema">Local Database Schema:</label>
																	<input type="text" class="form-control"
																		id="LocaldbSchema" placeholder="TESTAUTO">
																</div>
																<div class="form-group">
																	<label for="pwd">Local Database Password:</label> <input
																		type="password" class="form-control" id="LocaldbPwd">
																</div>
																<button type="button"
																	class="btn btn-warning btn-md disabled">
																	<span class="glyphicon glyphicons-database-plus"></span>
																	Local Database Submit
																</button>
																<p>
																	<b><i>This feature is only available under
																			"TestAutomatic" Licensed Version. <br> Contact
																			us for further details
																	</i></b>
																</p>
															</form>
														</div>
													</div>
												</form>
											</div>

											<br>
											<div style="display: none" id="ParamLocalExcelContainer">
												<form id="ParamLocalExcelForm"
													action="ParameterizationExcelServlet?userselect=LocalExcel"
													method="post" enctype="multipart/form-data">
													<div class="panel panel-danger">
														<div class="panel-heading">
															<center>Parameterization Using Local Excel</center>
														</div>
														<div class="panel-body">
															<form class="form-inline">
																<div class="form-group">
																	<label for="LocalFileType">Local File Type:</label> <input
																		type="text" class="form-control" id="FileType"
																		placeholder="XLSX Or XLS Or CSV">
																</div>
																<div class="fileupload fileupload-new"
																	data-provides="fileupload">
																	<span class="Globalfileupload-new">Local Select
																		file</span> <input type="file" name="fileupload"
																		id="Localfile" onchange="checkfile(this);" /> <span
																		class="fileupload-preview"></span>
																</div>
																<button type="button" class="btn btn-danger">Local
																	Excel Upload</button>
																<p>
																	<b><i>This feature is only available under
																			"TestAutomatic" Licensed Version. <br> Contact
																			us for further details
																	</i></b>
																</p>
															</form>
														</div>
													</div>
												</form>
											</div>

										</form>
									</div>
									<!-- 									<div class="modal-footer"> -->
									<!-- 										<button type="button" class="btn btn-danger" -->
									<!-- 											data-dismiss="modal">Close</button> -->
									<!-- 									</div> -->
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>


			<!-- Modal -->
			<!-- 		 <form id="ParamExcelForm1" name="ParameterizationExcelServlet" method="GET">  -->

			<div class="modal fade" id="testdataModal" role="dialog">
				<div class="modal-dialog modal-sm">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">DataTable Mapper</h4>
						</div>
						<div class="modal-body">
							<p>Map your Excel / Database column</p>
						</div>

						<div class="row">

							<div id="div_source2" class="col-xs-6 col-centered">
								<a class=""> <!-- 								<select class="selectpicker" data-style="btn-primary" name="ch_user1" id="ch_user1">
										<option>Select Excel / DB</option>
								        <option value="Global.Excel">Global.Excel</option>
								        <option value="Local.Excel">Local.Excel</option>
								        <option value="Global.DB">Global.DB</option>
								        <option value="Local.DB">Local.DB</option>
								</select> --> <select class="selectpicker"
									data-style="btn-primary" name="ch_user1" id="ch_user1">
										<option selected disabled>Select Table</option>
								</select>

								</a>
							</div>

							<div id="div_source1" class="col-xs-6 col-centered">
								<a class=""> <select class="selectpicker"
									data-style="btn-info" data-show-subtext="true"
									data-live-search="true" name="ch_user2" id="ch_user2">
										<option>Select Column</option>
								</select>

								</a>
							</div>
						</div>


						<input type="hidden" name="myvar" id="hiddenField">

						<div class="row">
							<div class="modal-footer">
								<button type="button" class="btn btn-success"
									data-dismiss="modal"
									onClick="GetSelectedItem('ch_user1','ch_user2');">Select</button>
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 			</form>  -->

			<!-- ------------------------------------------------------------------------------------------------------------- -->

			<!--*******************************************************************************************
Panel 2 - CodeGenerator and highlight elements tabs
*******************************************************************************************-->

			<div class="col-md-6">
				<div class="panel w3-panel w3-card-8"
					style="height: 300px; overflow-y: scroll;">
					<div class="card">
						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#viewcode"
								aria-controls="home" role="tab" data-toggle="tab">Code
									Generator</a></li>
							<li role="presentation"><a href="#highlightElemnt"
								aria-controls="profile" role="tab" data-toggle="tab">Highlight
									Elements</a></li>
						</ul>
						<!-- Tab panes -->
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="viewcode">
								<pre>
                    		<code id="codegenie" class="language-css">
								<p> <c:out value="${codegen}" /> </p>
							</code>
						</pre>
							</div>
							<div role="tabpanel" class="tab-pane" id="highlightElemnt">
								<p>
									<br> <br> <br>
								<center>
									<b><i>This feature is only available under
											"TestAutomatic" Licensed Version. <br> Contact us for
											further details
									</i></b>
								</center>
								<br> <br> <br>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>

	<!-- ------------------------------------------------------------------------------------------------------------- -->

	<!--*******************************************************************************************
Panel 3 - Grid feature buttons
*******************************************************************************************-->
	<!-- Context Menu -->
	<ul id="contextMenu" style="display: none; position: absolute">
		<li data="ADD">Add row</li>
		<li data="DELETE">Delete row</li>
		<li data="REFRESH">Refresh</li>
		<li data="GROUP">Group rows</li>
		<li data="UNGROUP">Ungroup rows</li>
	</ul>

	<div class="row">
		<div class="col-md-12">
			<div class="panel w3-panel w3-card-8">
				<div class="panel-body">
					<form action="?" method="POST">
						<a id="save" href="#"><img style="height: 25px; width: 25px;"
							src="Welcome/images/save.svg" alt="Save"><span
							class="tooltiptext"></span> </a> &nbsp;&nbsp; <a id="refresh"
							href="#"><span><img style="height: 25px; width: 25px;"
								src="Welcome/images/refresh.svg" alt="Refresh"></span></a>
						&nbsp;&nbsp; <a id="add" href="#"><span><img
								style="height: 25px; width: 25px;" src="Welcome/images/add.svg"
								alt="Add Row"></span></a> &nbsp;&nbsp; <a id="delete" href="#"><span><img
								style="height: 25px; width: 25px;"
								src="Welcome/images/delete.svg" alt="Delete Row"></span></a>
						&nbsp;&nbsp;
						<form class="form-horizontal text-left" action="GridServlets"
							method="post">
							<input class="showLinks" type="checkbox" name="showLinks"
								value="showLinks" onclick="copycheck('from','to');" /> <label
								for="showLinks">Show Links</label>

							<div class="modal fade" id="LinksModal" tabindex="-1"
								role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title" id="myModalLabel">Show Website
												Links</h4>
										</div>
										<div class="modal-body">All the Links for this Website
											will be Visible . Do you want to Continue ?</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">Close</button>
											<input type="hidden" class="form-control" id="EnterURL"
												type="search" name="urlreader"
												placeholder="https://www.google.co.in" value="${urlname}">
											<button type="submit"
												style="margin: 20px 30px; margin-left: 0px;"
												class="btn btn-success btn-md" id="CreateRepo"
												name="CreateRepo" value="CreateRepo">Continue</button>
										</div>
									</div>
								</div>
							</div>
						</form>

						<br>

						<td valign="top" width="50%">
							<div id="myGrid" style="width: 100%; height: 300px;"
								class="my-grid"></div>
							<div class="overlay"></div>
						</td>
					</form>

					<button type="button" class="btn btn-warning btn-md disabled">
						<span class="glyphicon glyphicon-search"></span> Find Element
					</button>

					<button type="button" class="btn btn-success btn-md disabled">
						<span class="glyphicon glyphicon-save"></span> Save Test Case
					</button>

					<button type="button" class="btn btn-info btn-md disabled">
						<span class="glyphicon glyphicon-upload"></span> Upload to QC or
						Jira
					</button>

					<button type="button" class="btn btn-danger btn-md disabled">
						<span class="glyphicon glyphicon-send"></span> Execute
					</button>
					<p>
						<b><i>This feature is only available under "TestAutomatic"
								Licensed Version. Contact us for further details </i></b>
					</p>
					<br>
				</div>
			</div>
		</div>
	</div>

	<!--*******************************************************************************************
Panel 3 - Grid table
*******************************************************************************************-->
	<section class="container padding-bottom-clear"> </section>
	<div class="table-container"></div>
	<script src="js/jquery-2.1.0.min.js"></script> <!-- <script src="js/jquery-1.7.min.js"></script>  -->
	<script src="js/jquery.event.drag-2.2.js"></script> <!-- <script src="js/jquery-ui-1.8.16.custom.min.js"></script> -->
	<script src="js/slick.core.js"></script> <script src="js/slick.grid.js"></script>
	<script src="js/slick.formatters.js"></script> <script
		src="js/slick.editors.js"></script> <script src="js/spin.js"></script>
	<script src="js/require.js"></script> <script src="js/underscore.js"></script>
	<script src="js/jquery.slickgrid.export.excel.js"></script> <script
		src="js/excel-builder.js"></script> <script src="js/slick.dataview.js"></script>
	<script src="js/slick.autotooltips.js"></script> <script
		src="js/slick.cellcopymanager.js"></script> <script
		src="js/slick.cellrangedecorator.js"></script> <script
		src="js/slick.cellrangeselector.js"></script> <script
		src="js/slick.cellselectionmodel.js"></script> <script
		src="js/slick.checkboxselectcolumn.js"></script> <script
		src="js/slick.headerbuttons.js"></script> <script
		src="js/slick.headermenu.js"></script> <script
		src="js/slick.rowmovemanager.js"></script> <script
		src="js/slick.rowselectionmodel.js"></script> <script
		src="js/slick.remotemodel.js"></script> <script
		src="js/slick.autocolumnsize.js"></script> <script
		src="bootstrap/js/bootstrap.min.js"></script>

	<style>
.my_highlighter_style {
	background: lightblue;
}
</style>

	<script>
		requirejs.config({
			baseUrl : '/' //give the location of the folder which contains require, excel-builder, etc
		});
	</script> <script type="text/javascript">
		var grid;
		var serverurl;
		serverurl="<%=dynamicurl%>"

		var RowNumberFormatter = function(row, cell, value, columnDef,
				dataContext) {
			return row + 1;
		};
		var columns = [ {
			id : "TAG_TestStepId",
			name : "TestStepId",
			formatter : RowNumberFormatter,
			width : 50,
			field : "TAG_TestStepId"
		}, {
			id : "TAG_TestStepDescription",
			name : "TestStepDescription",
			field : "TAG_TestStepDescription",
			width : 300,
			editor : Slick.Editors.Text
		}, {
			id : "TAG_TestExpectedResult",
			name : "TestExpectedResult",
			field : "TAG_TestExpectedResult",
			width : 300,
			editor : Slick.Editors.Text
		}, {
			id : "TAG_EL_Tag",
			name : "Tag",
			field : "TAG_EL_Tag",
			width : 50,
			editor : Slick.Editors.Text
		}, {
			id : "TAG_EL_Type",
			name : "ElementType",
			field : "TAG_EL_Type",
			width : 80,
			options : "input, button, type",
			editor : SelectCellEditor
		}, {
			id : "TAG_EL_ByName",
			name : "ElementName",
			field : "TAG_EL_ByName",
			width : 70,
			editor : Slick.Editors.Text
		}, {
			id : "TAG_EL_ByXpath",
			name : "Xpath",
			field : "TAG_EL_ByXpath",
			width : 100,
			editor : Slick.Editors.Text
		}, {
			id : "TAG_EL_ByUserAction",
			name : "UserAction",
			field : "TAG_EL_ByUserAction",
			width : 80,
			editor : Slick.Editors.Text
		}, {
			id : "TAG_EL_ByUserValue",
			name : "UserValue",
			field : "TAG_EL_ByUserValue",
			width : 220,
			formatter : reportFormatter
		} ];
		var options = {
			enableColumnReorder : false,
			editable : true,
			enableAddRow : true,
			enableCellNavigation : true,
			asyncEditorLoading : false,
			autoEdit : true,
			cellHighlightCssClass : "changed",
			autoHeight : true,
			/* autoWidth: true, */
			autoExpandColumns : true,
			forceFitColumns : false,
			syncColumnCellResize : true
		};
		/* ------------function for Uservalue ---------------- */
		function reportFormatter(row, cell, value, columnDef, dataContext) {
			/* return "<button class='show-report' data-toggle='modal' data-target='#myModal'>show</button>";} */
			//return "<input type='text' name='fname'> <input type='image' class='show-report' data-toggle='modal' style='height:20px;width:20px;'src='Welcome/images/share.svg' data-target='#myBtn'></button>";}
			//return "<input type='image' class='show-report' data-toggle='modal' style='height:20px;width:20px;'src='Welcome/images/share.svg' data-target='#myBtn'></button>";}
			var id = "Uservalue" + row + "" + cell;
			var aid = row + "" + cell;
			return '<input type="text" id='+id+' name="fname" value="">&nbsp;&nbsp;<a id='+aid+' class="myBtn" href="#"><span><img  style="height:20px;width:20px;" src="Welcome/images/share.svg" alt=""></span></a>';
		}

		/* ------------function for dropdown start ---------------- */
		function SelectCellEditor(args) {
			var $select;
			var defaultValue;
			var scope = this;
			this.init = function() {
				if (args.column.options) {
					opt_values = args.column.options.split(',');
				} else {
					opt_values = "yes,no".split(',');
				}
				option_str = ""
				for (i in opt_values) {
					v = opt_values[i];
					option_str += "<OPTION value='" + v + "'>" + v
							+ "</OPTION>";
				}
				$select = $("<SELECT tabIndex='0' class='editor-select'>"
						+ option_str + "</SELECT>");
				$select.appendTo(args.container);
				$select.focus();
			};
			this.destroy = function() {
				$select.remove();
			};
			this.focus = function() {
				$select.focus();
			};
			this.loadValue = function(item) {
				defaultValue = item[args.column.field];
				$select.val(defaultValue);
			};
			this.serializeValue = function() {
				if (args.column.options) {
					return $select.val();
				} else {
					return ($select.val() == "yes");
				}
			};
			this.applyValue = function(item, state) {
				item[args.column.field] = state;
			};
			this.isValueChanged = function() {
				return ($select.val() != defaultValue);
			};
			this.validate = function() {
				return {
					valid : true,
					msg : null
				};
			};
			this.init();
		}
		/* ------------function for dropdown end ---------------- */
		/* ------------Export to excel options start ---------------- */
		//default formatting options
		excelOptions = {
			headerStyle : {
				font : {
					bold : true, //enable bold
					font : 12, // font size
					color : '00ffffff' //font color --Note: Add 00 before the color code
				},
				fill : {
					//fill background
					type : 'pattern',
					patternType : 'solid',
					fgColor : '00428BCA' //background color --Note: Add 00 before the color code
				}
			},
			cellStyle : {
				font : {
					bold : false, //enable bold
					font : 12, // font size
					color : '00000000' //font color --Note: Add 00 before the color code
				},
				fill : {
					//fill background
					type : 'pattern',
					patternType : 'solid',
					fgColor : '00ffffff' //background color --Note: Add 00 before the color code
				}
			},
		};
		/* ------------Export to excel options end ---------------- */
		$.ajaxSetup({
			cache : false
		});

		$(document)
				.ready(
						function() {
							$
									.getJSON(
											serverurl,
											function(data) {
												//$.getJSON('http://localhost:8080/TestAutomatic/GridServlets', function(data) {
												if (data != null) {
													//}
													grid = new Slick.Grid(
															"#myGrid", data,
															columns, options);
													grid
															.registerPlugin(new Slick.AutoColumnSize());
													/* spinner.stop(); */
													$(".alert").alert('close');
													$(".overlay").fadeOut();
													/* -------- Context menu start ----------------- */
													/* grid.registerPlugin( new Slick.AutoColumnSize(200)); */
													grid.onContextMenu
															.subscribe(function(
																	e) {
																e
																		.preventDefault();
																var cell = grid
																		.getCellFromEvent(e);
																$(
																		"#contextMenu")
																		.data(
																				"row",
																				cell.row)
																		.css(
																				"top",
																				e.pageY)
																		.css(
																				"left",
																				e.pageX)
																		.show();
																$("body")
																		.one(
																				"click",
																				function() {
																					$(
																							"#contextMenu")
																							.hide();
																				});
															});
													/* -------- Grid share icon modal window ----------------- */
													var List;
													$(".myBtn")
															.click(
																	function() {
																		$(
																				'#testdataModal')
																				.modal();
																		var id = this.id;
																		document
																				.getElementById("hiddenField").value = id;

																		$
																				.ajax({
																					type : "GET",
																					url : "ParameterizationExcelServlet?dropdown=Table",
																					success : function(
																							responseText) {
																						var select1 = $('#ch_user1');
																						$(
																								'#ch_user1')
																								.empty();
																						$(
																								'<option>')
																								.val(
																										"Select Table")
																								.text(
																										"Select Table")
																								.appendTo(
																										select1);

																						/* select1.find('option').remove(); */
																						$
																								.each(
																										responseText,
																										function(
																												index,
																												value) {
																											$(
																													'<option>')
																													.val(
																															value.TAP_Sheetname)
																													.text(
																															value.TAP_Sheetname)
																													.appendTo(
																															select1);

																										});
																					},
																					error : function(
																							xhr,
																							ajaxOptions,
																							thrownError) {
																						alert(xhr.status);
																						alert(thrownError);
																					}
																				});

																		$(
																				'#ch_user1')
																				.change(
																						function(
																								event) {
																							var ch_user1 = $(
																									"select#ch_user1")
																									.val();
																							$
																									.get(
																											'ParameterizationExcelServlet?dropdown=Columns',
																											{
																												ch_user1Name : ch_user1
																											},
																											function(
																													response) {

																												var select = $('#ch_user2');
																												select
																														.find(
																																'option')
																														.remove();
																												$
																														.each(
																																response,
																																function(
																																		index,
																																		value) {
																																	$(
																																			'<option>')
																																			.val(
																																					value.TAP_Columnname)
																																			.text(
																																					value.TAP_Columnname)
																																			.appendTo(
																																					select);
																																});
																											});
																						});

																	}); // testdatamodal closer					

													/* -------- Context menu start ----------------- */
													$("#contextMenu")
															.click(
																	function(e) {
																		if (!$(
																				e.target)
																				.is(
																						"li")) {
																			return;
																		}
																		if (!grid
																				.getEditorLock()
																				.commitCurrentEdit()) {
																			return;
																		}
																		var action = $(
																				e.target)
																				.attr(
																						"data");
																		console
																				.log("action : "
																						+ action);
																		switch (action) {
																		case "GROUP_old":
																			var selectedRowIndexes = grid
																					.getSelectedRows()
																					.sort();
																			if (selectedRowIndexes
																					&& selectedRowIndexes.length > 0) {
																				var insertBefore = selectedRowIndexes[0];
																				var selectedRows = [], left, right;
																				var ids = getArrayColumn(
																						data,
																						"id")
																						.sort()
																				var newId = ids[data.length - 1] + 1;
																				var newParentDepth = data[selectedRowIndexes[0]]["depth"];
																				var newParentParent = data[selectedRowIndexes[0]]["parent"];
																				for (var i = 0; i < selectedRowIndexes.length; i++) {
																					var row = data[selectedRowIndexes[i]];
																					row.depth = row.depth + 1;
																					row.parent = newId;
																					console
																							.log("row: id : "
																									+ row.id
																									+ " parent: "
																									+ row.parent
																									+ " depth"
																									+ row.depth);
																					selectedRows
																							.push(row);
																				}
																				left = data
																						.slice(
																								0,
																								insertBefore);
																				right = data
																						.slice(
																								insertBefore,
																								data.length);
																				left
																						.push({
																							"id" : newId,
																							"parent" : newParentParent,
																							"depth" : newParentDepth,
																							"TAG_TestStepId" : newId,
																							"TAG_TestStepDescription" : "New parent row",
																							"TAG_TestExpectedResult" : null,
																							"TAG_EL_Tag" : null,
																							"TAG_EL_Type" : null,
																							"TAG_EL_ByName" : null,
																							"TAG_EL_ByXpath" : null,
																							"TAG_EL_ByUserAction" : null,
																							"TAG_EL_ByUserValue" : null
																						});
																				selectedRowIndexes
																						.reverse();
																				for (var i = 0; i < selectedRowIndexes.length; i++) {
																					var idx = selectedRowIndexes[i];
																					if (idx < insertBefore) {
																						left
																								.splice(
																										idx,
																										1);
																					} else {
																						right
																								.splice(
																										idx
																												- insertBefore,
																										1);
																					}
																				}
																				data = left
																						.concat(selectedRows
																								.concat(right));
																				dataView
																						.beginUpdate();
																				dataView
																						.setItems(data);
																				dataView
																						.setFilter(myFilter);
																				dataView
																						.endUpdate();
																				grid
																						.setSelectedRows(selectedRows);
																				grid
																						.invalidateRow(data.length);
																				grid
																						.updateRowCount();
																			}
																			break;
																		case "GROUP":
																			document
																					.addEventListener(
																							"DOMContentLoaded",
																							function() {
																								var example1 = document
																										.getElementById('#myGrid'), settings, hot;
																								var datatable = CreateData();
																								$
																										.ajaxSetup({
																											cache : false
																										});
																								$
																										.getJSON(
																												serverurl,
																												function(
																														data) {
																													//$.getJSON('http://localhost:8080/TestAutomatic/GridServlets', function(data) {
																													var grid = new Slick.Grid(
																															"#"
																																	+ elementId,
																															data,
																															columns,
																															options);
																												});
																								gridArray[length] = grid;
																								settings = {
																									data : datatable,
																									rowHeaders : true,
																									colHeaders : true,
																									groups : [
																											{
																												cols : [
																														0,
																														2 ]
																											},
																											{
																												rows : [
																														2,
																														4 ]
																											},
																											{
																												rows : [
																														5,
																														8 ]
																											},
																											{
																												rows : [
																														14,
																														17 ]
																											},
																											{
																												rows : [
																														0,
																														4 ]
																											},
																											{
																												rows : [
																														0,
																														8 ]
																											},
																											{
																												rows : [
																														0,
																														19 ]
																											} ]
																								};
																								hot = new Handsontable(
																										myGrid,
																										settings);

																								function bindDumpButton() {
																									if (typeof Handsontable === "undefined") {
																										return;
																									}
																									Handsontable.Dom
																											.addEvent(
																													document.body,
																													'click',
																													function(
																															e) {
																														var element = e.target
																																|| e.srcElement;
																														if (element.nodeName == "BUTTON"
																																&& element.name == 'dump') {
																															var name = element
																																	.getAttribute('data-dump');
																															var instance = element
																																	.getAttribute('data-instance');
																															var hot = window[instance];
																															console
																																	.log(
																																			'data of '
																																					+ name,
																																			hot
																																					.getData());
																														}
																													});
																								}
																								bindDumpButton();
																							});
																			break;
																		case "REFRESH":
																			$
																					.ajaxSetup({
																						cache : false
																					});
																			$
																					.getJSON(
																							serverurl,
																							function(
																									data) {
																								//$.getJSON('http://localhost:8080/TestAutomatic/GridServlets', function(data) {
																								grid = new Slick.Grid(
																										"#myGrid",
																										data,
																										columns,
																										options);
																							});
																			grid
																					.render();
																			break;
																		case "UNGROUP":
																			alert("ungroup case");
																			break;
																		case "ADD":
																			alert("add row case");
																			break;
																		case "DELETE":
																			alert("delete row case");
																			break;
																		default:
																			break;
																		}
																	});
													/* -------- Context menu end ----------------- */
													/* -------- Add Row Start ----------------- */
													grid
															.setSelectionModel(new Slick.RowSelectionModel());
													if (data.length <= 0) {
														document
																.getElementsByClassName("grid-canvas")[0].innerHTML = '';
														var emptyTableDiv = document
																.createElement('div');
														emptyTableDiv.className = "emptyTable";
														emptyTableDiv.innerHTML = 'No data available.';
														document
																.getElementsByClassName("grid-canvas")[0]
																.appendChild(emptyTableDiv);
													}
													$("#addRow").on("click",
															addRow);
													/* ------------ data parameterization ------------- */
													/*         
																								 grid.onClick.subscribe(function(e,args) {
																								 if ($(e.target).hasClass('.myBtn')) {     
																								 $('#myModal').modal('show');
																								 }
																								 });      
													 */
													/* ------------ Add row function ------------- */
													function addRow() {
														var data = grid
																.getData();
														if (!grid
																.getActiveCell()) {
															return;
														}
														var currRowNum = grid
																.getActiveCell().row;
														var newrow = jQuery
																.extend(
																		{},
																		data[currRowNum]);
														var totalrows = data.length;
														newrow.TAG_TestStepId = (currRowNum + 1) + 1;
														newrow.TAG_TestStepDescription = 'New Step added, write something';
														newrow.TAG_TestExpectedResult = '';
														newrow.TAG_EL_Tag = '';
														newrow.TAG_EL_Type = '';
														newrow.TAG_EL_ByName = '';
														newrow.TAG_EL_ByXpath = '';
														newrow.TAG_EL_ByUserAction = '';
														newrow.TAG_EL_ByUserValue = '';
														var position = (currRowNum + 1);
														data.splice(position,
																0, newrow);
														grid.setData(data);
														grid
																.getData()
																.splice(
																		grid
																				.getDataLength(),
																		1, {});
														grid
																.invalidateRow(grid
																		.getSelectedRows());
														grid.updateRowCount();
														grid.render();
														var action = "INSERT_ROW";
														var dataString = "action="
																+ action
																+ "&testdescription="
																+ newrow.TAG_TestStepDescription
																+ "&row="
																+ newrow.TAG_TestStepId;
														var status = false;
														$
																.ajax({
																	type : "POST",
																	url : serverurl
																			+ "?"
																			+ dataString,
																	//url: "http://localhost:8080/TestAutomatic/GridServlets?" + dataString,
																	data : dataString,
																	dataType : "json",
																	success : function(
																			a) {
																		//alert(dataString);
																	}
																});
														if (!status) {
															return false;
														}
														grid.setCellCssStyles(
																"highlight",
																changes);
														grid.flashCell();
														grid
																.invalidateRow(data.length);
														//data.push(item);
														grid.updateRowCount();
														grid.render();
													}
													;

													/* ------------ Grid Refresh function ------------- */
													$("#refresh").on("click",
															refresh);
													$.ajaxSetup({
														cache : false
													});

													function refresh() {
														$
																.getJSON(
																		serverurl,
																		function(
																				data) {
																			grid = new Slick.Grid(
																					"#myGrid",
																					data,
																					columns,
																					options);
																		});
														/* $.getJSON('http://localhost:8080/TestAutomatic/GridServlets', function(data) {
																										grid = new Slick.Grid("#myGrid", data, columns, options);
																										}); */
														grid.render();
													}
													/* ------------ Grid Tab function start------------- */
													$("#add-tab").on("click",
															addTab);

													function addTab() {
														// take care of jqueryui tabs and adding tab
														$("div#tabs").tabs();
														$("button#add-tab")
																.click(
																		function() {
																			var num_tabs = $("div#tabs ul li").length + 1;
																			alert(num_tabs);
																			$(
																					"div#tabs ul")
																					.append(
																							"<li><a href='#tab" + num_tabs + "'>Grid "
																									+ num_tabs
																									+ "</a></li>");
																			$(
																					"div#tabs")
																					.append(
																							"<div id='tab" + num_tabs + "'>"
																									+ '<div id="myGrid' + num_tabs + '" style="height:300px;" class="my-grid"></div>'
																									+ "</div>");
																			CreateGrid("myGrid"
																					+ num_tabs);
																			$(
																					"div#tabs")
																					.tabs(
																							"refresh");
																		});
														CreateGrid("myGrid1");
													}

													function CreateGrid(
															elementId) {
														var gridArray;
														if (!gridArray) {
															gridArray = [];
														}
														$.ajaxSetup({
															cache : false
														});
														var data = CreateData();
														$
																.getJSON(
																		serverurl,
																		function(
																				data) {
																			//$.getJSON('http://localhost:8080/TestAutomatic/GridServlets', function(data) {
																			var grid = new Slick.Grid(
																					"#"
																							+ elementId,
																					data,
																					columns,
																					options);
																		});
														gridArray[length] = grid;
													}
													/* ------------ Grid Tab function end------------- */
													/* ------------ Delete row function ------------- */
													$("#deleteRow").on("click",
															deleteRow);

													function deleteRow() {
														var dd = grid.getData();
														var current_row = grid
																.getActiveCell().row;
														dd.splice(current_row,
																1);
														var r = current_row;
														while (r < dd.length) {
															grid
																	.invalidateRow(r);
															r++;
														}
														grid.updateRowCount();
														grid.render();
														grid
																.scrollRowIntoView(current_row - 1)
														var action = "REMOVE_ROW";
														var dataString = "action="
																+ action
																+ "&row="
																+ (current_row + 1);
														var status = false;
														$
																.ajax({
																	type : "DELETE",
																	url : serverurl
																			+ "?"
																			+ dataString,
																	//url: "http://localhost:8080/TestAutomatic/GridServlets?" + dataString,
																	data : dataString,
																	dataType : "json",
																	success : function(
																			a) {
																		/* alert(dataString);   */
																	}
																});
														if (!status) {
															return false;
														}
														grid.setCellCssStyles(
																"highlight",
																changes);
														grid.flashCell();
														grid
																.invalidateRow(data.length);
														//data.push(item);
														grid.updateRowCount();
														grid.render();
													}
													;
													grid.onClick
															.subscribe(function(
																	e, args) {
																var selectedRowNum = args.row;
																var totalColNum = grid
																		.getColumns().length;
																if (!grid
																		.getActiveCell()) {
																	grid
																			.getSelectionModel()
																			.setSelectedRanges(
																					[ new Slick.Range(
																							selectedRowNum,
																							0,
																							selectedRowNum,
																							totalColNum) ]);
																	$('#addRow')
																			.prop(
																					'disabled',
																					false);
																	e
																			.stopPropagation();
																	return;
																}
																var $currRow = $($(
																		grid
																				.getCanvasNode())
																		.find(
																				".slick-row")[selectedRowNum]);
																if ((grid
																		.getActiveCell().row === args.row)) {
																	if ($currRow
																			.hasClass('active')) {
																		$currRow
																				.removeClass("active");
																		grid
																				.getSelectionModel()
																				.setSelectedRanges(
																						[]);
																		$(
																				'#addRow')
																				.prop(
																						'disabled',
																						true);
																	} else {
																		$currRow
																				.addClass("active");
																		grid
																				.getSelectionModel()
																				.setSelectedRanges(
																						[ new Slick.Range(
																								selectedRowNum,
																								0,
																								selectedRowNum,
																								totalColNum) ]);
																		$(
																				'#addRow')
																				.prop(
																						'disabled',
																						false);
																	}
																} else {
																	$currRow
																			.addClass("active");
																	grid
																			.getSelectionModel()
																			.setSelectedRanges(
																					[ new Slick.Range(
																							selectedRowNum,
																							0,
																							selectedRowNum,
																							totalColNum) ]);
																	$('#addRow')
																			.prop(
																					'disabled',
																					false);
																}
																e
																		.stopPropagation();
															});
													/* --------------------------------------------------------------------------------------------------------- */
													/* Export to excel start */
													/* --------------------------------------------------------------------------------------------------------- */
													$('body')
															.exportToExcel(
																	"TAExportToExcel.xlsx",
																	"Report",
																	data,
																	excelOptions,
																	function(
																			response) {
																	});
													/* Export to excel end */
													/* --------------------------------------------------------------------------------------------------------- */
													/* <!-- highlighter on cell navigation start --> */
													grid.onMouseEnter
															.subscribe(function(
																	e, args) {
																var cell = grid
																		.getCellFromEvent(e), param = {}, columnCss = {};
																for (index in columns) {
																	var id = columns[index].id;
																	columnCss[id] = 'my_highlighter_style'
																}
																param[cell.row] = columnCss
																args.grid
																		.setCellCssStyles(
																				"row_highlighter",
																				param);
															})
													/* <!-- highlighter on cell navigation end --> */
													/* handle window resize on browser resize */
													$(window)
															.resize(
																	function() {
																		grid
																				.resizeCanvas();
																	});
													/* on grid cell change function*/
													grid.onCellChange
															.subscribe(function(
																	e, args) {
																var changes = {};
																var item = args.item;
																var column = args.cell;
																var row = args.row;
																var value = data[args.row][grid
																		.getColumns()[args.cell].field];
																var id = args.item.id;
																var rowidforfirstcolumn = data[args.row][grid
																		.getColumns()[0].field];
																var name = grid
																		.getColumns()[args.cell].name;
																var dataString = "row="
																		+ rowidforfirstcolumn
																		+ "&name="
																		+ name
																		+ "&value="
																		+ value;
																var status = false;
																$
																		.ajax({
																			type : "PUT",
																			url : serverurl
																					+ "?"
																					+ dataString,
																			//url: "http://localhost:8080/TestAutomatic/GridServlets?" + dataString,
																			data : dataString,
																			dataType : "json",
																			success : function(
																					a) {
																				/* alert(dataString); */
																				/* console.log(a);
																																				if(a.status == true) {
																																				status = true;
																																				} else {
																																				status = false;
																																				}
																																				return false;   */
																			}
																		});
																if (!status) {
																	return false;
																}
																grid
																		.setCellCssStyles(
																				"highlight",
																				changes);
																grid
																		.flashCell();
																grid
																		.invalidateRow(data.length);
																data.push(item);
																grid
																		.updateRowCount();
																grid.render();
															});
												}
											})
						});
	</script>

	</div>
	</div>
	</div>
	</section>
	<div id="footer">
		<footer class="container-fluid text-center">
		<div style="font-family: 'Poiret One', cursive; font-size: 13px;">
			Copyright Â© 2016. TESTAUTOMATIC TECHNOLOGIES. All Rights Reserved.</div>
		</footer>
	</div>



</body>

</html>