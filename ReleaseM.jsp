<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords"
	content="Test Automatic, TestAutomatic, Automatic test ,Reports, TAReports, Dynamic Reports, TA Sense, TASense, Analytics, TAAnalytics, Functional, Manual, Test, Testing, Automation, Automatic, HP, QTP, UFT, Selenium, TESTNG, JUNIT, waitr, Cucumber, Automator, Live, Code, Generator, QC, Quality Center, QuickTest Pro, JIRA, Excel, TestCase, Defect, TestStep, ALM, TestScenarios, Maven, Jenkins, GIT, Agile, dockers, Gradle, Ant">
<meta name="description"
	content="TestAutomation Aglie Automation Tool, Reports and Analytics for Sprints, Code Generator and Test Automation ">
<meta name="author" content="TestAutomatic">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=yes">
<title>TestAutomatic | TASense One Click Analytics - Release
	Management</title>

<link rel="stylesheet" type="text/css" href="Welcome/css/Welcome.css">
<link rel="stylesheet" type="text/css"
	href="Welcome/css/TASenseTable.css">
<link rel="stylesheet" type="text/css" href="TAReports/dc.css">

<style type="text/css">
body {
	text-align: left;
}
</style>

<script>
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
</head>

<body>

	<nav class="navbar navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#top-navbar-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="Home">TA</a>
			</div>
			<div class="collapse navbar-collapse" id="top-navbar-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="Home">Home</a></li>
<!-- 					<li><a tabindex="0" -->
<!-- 						class="navbar-brand1 faa-flash faa-slow animated" href="TryItNow" -->
<!-- 						data-toggle="popover" data-trigger="focus" data-html="true" -->
<!-- 						data-placement="bottom">TA-Demo </a></li> -->
<!-- 					<li><a href="Login">Automator</a></li> -->
<!-- 					<li><a href="TAAnalytics">Analytics</a></li> -->
<!-- 					<li><a href="AboutUs">About Us</a></li> -->
					<li><a href="ContactUs">Contact Us</a></li>
					<li><a href="blog">Blog</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<br>
	<br>
	<div class="container">
		<br>
		<div class="top-content-text">
			<h2>
				<center>TA - Release Management</center>
			</h2>
			<hr>
		</div>

		<div class="row">
			<h3>
				<center>Project & Application Details</center>
			</h3>
			<div id="ProjectName-chart">
				<strong>Project Name</strong> <a class="reset"
					href="javascript:projectNameChart.filterAll();dc.redrawAll();"
					style="display: none;">reset</a>

				<div class="clearfix"></div>
			</div>

			<div id="ApplicationName-chart">
				<strong>Application Name</strong> <a class="reset"
					href="javascript:applicationNameChart.filterAll();dc.redrawAll();"
					style="display: none;">reset</a>

				<div class="clearfix"></div>
			</div>


			<div id="yearly-bubble-chart" class="dc-chart">
				<!--         <strong>Yearly Performance</strong> -->
				<a class="reset"
					href="javascript:yearlyBubbleChart.filterAll();dc.redrawAll();"
					style="display: none;">reset</a>
				<div class="clearfix"></div>
			</div>
		</div>

		<br> <br>
		<hr>

		<div class="row">
			<h3>
				<center>Release & Sprint Details</center>
			</h3>
			<div id="RelasetName-chart">
				<strong>Release Name</strong> <a class="reset"
					href="javascript:relaseNameChart.filterAll();dc.redrawAll();"
					style="display: none;">reset</a>

				<div class="clearfix"></div>
			</div>

			<div id="ReleaseStatus-chart">
				<strong>Release Status</strong> <a class="reset"
					href="javascript:releaseStatusChart.filterAll();dc.redrawAll();"
					style="display: none;">reset</a>

				<div class="clearfix"></div>
			</div>

			<div id="SprintNo-chart">
				<strong>Sprint No</strong> <a class="reset"
					href="javascript:sprintNoChart.filterAll();dc.redrawAll();"
					style="display: none;">reset</a>

				<div class="clearfix"></div>
			</div>

			<div id="SprintStoryID-chart">
				<strong>Story ID</strong> <a class="reset"
					href="javascript:sprintStoryIDChart.filterAll();dc.redrawAll();"
					style="display: none;">reset</a>

				<div class="clearfix"></div>
			</div>

			<div id="SprintStoryName-chart">
				<strong>Story Name</strong> <a class="reset"
					href="javascript:sprintStoryNameChart.filterAll();dc.redrawAll();"
					style="display: none;">reset</a>

				<div class="clearfix"></div>
			</div>
		</div>
		<br> <br>
		<hr>

		<div class="row">

			<h3>
				<center>Sprint & TestCase Details</center>
			</h3>
			<div id="SprintTestCaseIDChart-chart">
				<strong>TestCase ID</strong> <a class="reset"
					href="javascript:sprintTestCaseIDChart.filterAll();dc.redrawAll();"
					style="display: none;">reset</a>

				<div class="clearfix"></div>
			</div>

			<div id="TestSetID-chart">
				<strong>TestSet ID</strong> <a class="reset"
					href="javascript:testSetIDChart.filterAll();dc.redrawAll();"
					style="display: none;">reset</a>

				<div class="clearfix"></div>
			</div>

			<div id="TestSetName-chart">
				<strong>TestSet Name</strong> <a class="reset"
					href="javascript:testSetNameChart.filterAll();dc.redrawAll();"
					style="display: none;">reset</a>

				<div class="clearfix"></div>
			</div>

			<div id="TestSetType-chart">
				<strong>TestSet Type</strong> <a class="reset"
					href="javascript:testSetTypeChart.filterAll();dc.redrawAll();"
					style="display: none;">reset</a>

				<div class="clearfix"></div>
			</div>

			<div id="TestSetStatus-chart">
				<strong>TestSet Status</strong> <a class="reset"
					href="javascript:testSetStatusChart.filterAll();dc.redrawAll();"
					style="display: none;">reset</a>

				<div class="clearfix"></div>
			</div>
		</div>
		<br> <br>
		<hr>

		<div class="row">
			<h3>
				<center>TestCase & TestStep & Defect Details</center>
			</h3>
			<div id="TestSetStepID-chart">
				<strong>TestStep ID</strong> <a class="reset"
					href="javascript:testSetStepIDChart.filterAll();dc.redrawAll();"
					style="display: none;">reset</a>

				<div class="clearfix"></div>
			</div>

			<div id="TestStepName-chart">
				<strong>TestStep Name</strong> <a class="reset"
					href="javascript:testStepNameChart.filterAll();dc.redrawAll();"
					style="display: none;">reset</a>

				<div class="clearfix"></div>
			</div>


			<div id="TestStepStatus-chart">
				<strong>TestStepStatus</strong> <a class="reset"
					href="javascript:testStepStatusChart.filterAll();dc.redrawAll();"
					style="display: none;">reset</a>
				<div class="clearfix"></div>
			</div>

			<div id="DefectStepTestID-chart">
				<strong>Defect Step ID</strong> <a class="reset"
					href="javascript:defectStepTestIDChart.filterAll();dc.redrawAll();"
					style="display: none;">reset</a>

				<div class="clearfix"></div>
			</div>

			<div id="DefectID-chart">
				<strong>Defect ID</strong> <a class="reset"
					href="javascript:defectIDChart.filterAll();dc.redrawAll();"
					style="display: none;">reset</a>

				<div class="clearfix"></div>
			</div>
		</div>
		<br> <br>
		<hr>

		<div class="row">

			<h3>
				<center>Defect Details</center>
			</h3>

			<div id="DefectSummary-chart">
				<strong>Defect Summary</strong> <a class="reset"
					href="javascript:defectSummaryChart.filterAll();dc.redrawAll();"
					style="display: none;">reset</a>

				<div class="clearfix"></div>
			</div>

			<div id="DefectSeverity-chart">
				<strong>Defect Severity</strong> <a class="reset"
					href="javascript:defectSeverityChart.filterAll();dc.redrawAll();"
					style="display: none;">reset</a>

				<div class="clearfix"></div>
			</div>

			<div id="DefectStatus-chart">
				<strong>Defect Status</strong> <a class="reset"
					href="javascript:defectStatusChart.filterAll();dc.redrawAll();"
					style="display: none;">reset</a>

				<div class="clearfix"></div>
			</div>

			<div id="DefectPhase-chart">
				<strong>Defect Phase</strong> <a class="reset"
					href="javascript:defectPhaseChart.filterAll();dc.redrawAll();"
					style="display: none;">reset</a>

				<div class="clearfix"></div>
			</div>

			<div id="DefectRootCause-chart">
				<strong>Defect RootCause</strong> <a class="reset"
					href="javascript:defectRootCauseChart.filterAll();dc.redrawAll();"
					style="display: none;">reset</a>

				<div class="clearfix"></div>
			</div>
		</div>
		<br> <br>
		<hr>




		<div class="row">
			<div id="monthly-move-chart">
				<strong>No of Release in a year</strong> <span class="reset"
					style="display: none;">range: <span class="filter"></span></span> <a
					class="reset"
					href="javascript:moveChart.filterAll();volumeChart.filterAll();dc.redrawAll();"
					style="display: none;">reset</a>

				<div class="clearfix"></div>
			</div>
		</div>

		<div class="row">
			<div id="monthly-volume-chart"></div>
			<p class="muted pull-right" style="margin-right: 15px;">select a
				time range to zoom in</p>
		</div>
		<hr>

		<div class="row">
			<div>
				<div class="dc-data-count">
					<span class="filter-count"></span> selected out of <span
						class="total-count"></span> records | <a
						href="javascript:dc.filterAll(); dc.renderAll();">Reset All</a>
				</div>
			</div>
			<table class="table table-hover dc-data-table">
			</table>
		</div>
	</div>


	<script type="text/javascript" src="TAReports/d3.js"></script>
	<script type="text/javascript" src="TAReports/crossfilter.js"></script>
	<script type="text/javascript" src="TAReports/dc.js"></script>
	<script type="text/javascript" src="TAReports/colorbrewer.js"></script>
	<script type="text/javascript" src="TAReports/TestAutomatic.js"></script>
	<script type="text/javascript" src="Welcome/js/Welcome.js"></script>


	<!-- Footer -->
	<footer>
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<div class="scroll-to-top">
					<a href="#"><i class="fa fa-chevron-up"></i></a>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12 footer-copyright">
				<center>&copy; 2016. Test Automatic Technologies Private
					Limited. All Rights Reserved.</center>
			</div>
		</div>
	</div>
	</footer>
	<script type="text/javascript" src="Welcome/js/Welcome.js"></script>
</body>
</html>