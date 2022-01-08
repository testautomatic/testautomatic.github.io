<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<HTML>
<HEAD>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords"
	content="Test Automatic, TestAutomatic, Automatic test ,Reports, TAReports, Dynamic Reports, TA Sense, TASense, Analytics, TAAnalytics, Functional, Manual, Test, Testing, Automation, Automatic, HP, QTP, UFT, Selenium, TESTNG, JUNIT, waitr, Cucumber, Automator, Live, Code, Generator, QC, Quality Center, QuickTest Pro, JIRA, Excel, TestCase, Defect, TestStep, ALM, TestScenarios, Maven, Jenkins, GIT, Agile, dockers, Gradle, Ant">
<meta name="description"
	content="TestAutomation Aglie Automation Tool, Reports and Analytics for Sprints, Code Generator and Test Automation ">
<meta name="author" content="TestAutomatic">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=yes">
<title>TestAutomatic |For Jira</title>

<style type="text/css">
body {
	text-align: left;
}
/* Comments */
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
<link rel="stylesheet" href="Jira/css/demos.css" media="screen"
	type="text/css">
<style type="text/css">
#mainContainer {
	width: 600px;
	margin: 0 auto;
	margin-top: 10px;
	border: 1px solid #000;
	padding: 2px;
}

#leftColumn {
	width: 200px;
	float: left;
	border: 1px solid #000;
	background-color: #E2EBED;
	padding: 3px;
	height: 400px;
}

#rightColumn {
	width: 200px;
	float: right;
	margin: 1px;
	height: 400px;
}

.dragableBox {
	width: 100px;
	height: 40px;
	border: 1px solid #000;
	background-color: #FFF;
	margin-bottom: 5px;
	padding: 10px;
	font-weight: bold;
	text-align: center;
}

.dropBox {
	width: 190px;
	border: 1px solid #000;
	background-color: #E2EBED;
	height: 400px;
	margin-bottom: 10px;
	padding: 3px;
	overflow: auto;
}

a {
	color: #F00;
}

.clear {
	clear: both;
}

img {
	border: 0px;
}
</style>
<script type="text/javascript" src="Jira/js/drag-drop-custom.js"></script>
</head>
<body>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<div id="mainContainer">
		<div id="leftColumn">
			<p>
				<b>Jira Fields</b>
			</p>
			<div id="dropContent">
				<div class="dragableBox" id="box1">Test Plan</div>
				<div class="dragableBox" id="box2">Defect</div>
				<div class="dragableBox" id="box3">Requirements</div>
				<div class="dragableBox" id="box4">Stories</div>
			</div>
		</div>
		<div id="rightColumn">
			<div id="dropBox" class="dropBox">
				<p>
					<b>Jira Mapping Fields</b>
				</p>
				<div id="dropContent2"></div>
			</div>
		</div>
		<div class="clear"></div>
		<div class="konaBody"></div>
	</div>

	<script type="text/javascript">
		// Custom drop actions for <div id="dropBox"> and <div id="leftColumn">
		function dropItems(idOfDraggedItem, targetId, x, y) {
			if (targetId == 'dropBox') { // Item dropped on <div id="dropBox">
				var obj = document.getElementById(idOfDraggedItem);
				if (obj.parentNode.id == 'dropContent2')
					return;
				document.getElementById('dropContent2').appendChild(obj); // Appending dragged element as child of target box
			}
			if (targetId == 'leftColumn') { // Item dropped on <div id="leftColumn">
				var obj = document.getElementById(idOfDraggedItem);
				if (obj.parentNode.id == 'dropContent')
					return;
				document.getElementById('dropContent').appendChild(obj); // Appending dragged element as child of target box
			}

		}

		function onDragFunction(cloneId, origId) {
			self.status = 'Started dragging element with id ' + cloneId;

			var obj = document.getElementById(cloneId);
			obj.style.border = '1px solid #F00';
		}

		var dragDropObj = new DHTMLgoodies_dragDrop();
		dragDropObj
				.addSource('box1', true, true, true, false, 'onDragFunction'); // Make <div id="box1"> dragable. slide item back into original position after drop
		dragDropObj
				.addSource('box2', true, true, true, false, 'onDragFunction'); // Make <div id="box2"> dragable. slide item back into original position after drop
		dragDropObj
				.addSource('box3', true, true, true, false, 'onDragFunction'); // Make <div id="box3"> dragable. slide item back into original position after drop
		dragDropObj
				.addSource('box4', true, true, true, false, 'onDragFunction'); // Make <div id="box4"> dragable. slide item back into original position after drop
		dragDropObj.addTarget('dropBox', 'dropItems'); // Set <div id="dropBox"> as a drop target. Call function dropItems on drop
		dragDropObj.addTarget('leftColumn', 'dropItems'); // Set <div id="leftColumn"> as a drop target. Call function dropItems on drop
		dragDropObj.init();
	</script>

</body>
</html>