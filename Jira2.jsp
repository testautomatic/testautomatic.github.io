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
	/* CSS for the demo. CSS needed for the scripts are loaded dynamically by the scripts */
	#mainContainer{
		width:600px;
		margin:0 auto;
		margin-top:10px;
		border:1px solid #000;
		padding:2px;
	}
	
	#capitals{
		width:200px;
		float:left;
		border:1px solid #000;
		background-color:#E2EBED;
		padding:3px;
		height:400px;
	}
	#countries{
		width:300px;
		float:right;
		margin:2px;
		height:400px;
	}	
	.dragableBox,.dragableBoxRight{
		width:80px;
		height:20px;
		border:1px solid #000;
		background-color:#FFF;		
		margin-bottom:5px;
		padding:10px;
		font-weight:bold;
		text-align:center;
	}
	div.dragableBoxRight{
		height:65px;
		width:110px;
		float:left;
		margin-right:5px;
		padding:5px;
		background-color:#E2EBED;
	}
	.dropBox{
		width:190px;
		border:1px solid #000;
		background-color:#E2EBED;
		height:400px;
		margin-bottom:10px;
		padding:3px;
		overflow:auto;
	}		
	a{
		color:#F00;
	}
		
	.clear{
		clear:both;
	}
	img{
		border:0px;
	}	
	</style>	
	<script type="text/javascript" src="Jira/js/drag-drop-custom.js"></script>
</head>
<body>	
	<div id="mainContainer">
		<div id="capitals">
			<p><b>Jira Items</b></p>
			<div id="dropContent">
				<div class="dragableBox" id="box1">Stories</div>
				<div class="dragableBox" id="box2">Epic</div>
				<div class="dragableBox" id="box3">Test Plan</div>
				<div class="dragableBox" id="box4">Test Case</div>
				<div class="dragableBox" id="box5">Defect</div>
				<div class="dragableBox" id="box6">Requirement</div>
				<div class="dragableBox" id="box7">UAT</div>
			</div>
		</div>
		<div id="countries">
			<div id="box106" class="dragableBoxRight">A</div>
			<div id="box107" class="dragableBoxRight">B</div>
			<div id="box101" class="dragableBoxRight">C</div>
			<div id="box104" class="dragableBoxRight">D</div>
			<div id="box105" class="dragableBoxRight">E</div>
			<div id="box102" class="dragableBoxRight">F</div>
			<div id="box103" class="dragableBoxRight">G</div>
			
		
		</div>
		<div class="clear"></div>
		<div class="konaBody"></div>
	</div>

<div id="debug"></div>
<script type="text/javascript">

// Custom drop action for the country boxes
function dropItems(idOfDraggedItem,targetId,x,y)
{
	var targetObj = document.getElementById(targetId);	// Creating reference to target obj
	var subDivs = targetObj.getElementsByTagName('DIV');	// Number of subdivs
	if(subDivs.length>0 && targetId!='capitals')return;	// Sub divs exists on target, i.e. element already dragged on it. => return from function without doing anything
	var sourceObj = document.getElementById(idOfDraggedItem);	// Creating reference to source, i.e. dragged object
	var numericIdTarget = targetId.replace(/[^0-9]/gi,'')/1;	// Find numeric id of target
	var numericIdSource = idOfDraggedItem.replace(/[^0-9]/gi,'')/1;	// Find numeric id of source
	if(numericIdTarget-numericIdSource==100){	// In the html above, there's a difference in 100 between the id of the country and it's capital(example:
												// Oslo have id "box1" and Norway have id "box101", i.e. 1 + 100.
		sourceObj.style.backgroundColor='#0F0';	// Set green background color for dragged object
	}else{
		sourceObj.style.backgroundColor='';	// Reset back to default white background color
	}
	if(targetId=='capitals'){	// Target is the capital box - append the dragged item as child of first sub div, i.e. as child of <div id="dropContent">
		targetObj = targetObj.getElementsByTagName('DIV')[0];	
	}
	targetObj.appendChild(sourceObj);	// Append	
}



var dragDropObj = new DHTMLgoodies_dragDrop();	// Creating drag and drop object

// Assigning drag events to the capitals
dragDropObj.addSource('box1',true);	// Make <div id="box1"> dragable. slide item back into original position after drop
dragDropObj.addSource('box2',true);	// Make <div id="box2"> dragable. slide item back into original position after drop
dragDropObj.addSource('box3',true);	// Make <div id="box3"> dragable. slide item back into original position after drop
dragDropObj.addSource('box4',true);	// Make <div id="box4"> dragable. slide item back into original position after drop
dragDropObj.addSource('box5',true);	// Make <div id="box4"> dragable. slide item back into original position after drop
dragDropObj.addSource('box6',true);	// Make <div id="box4"> dragable. slide item back into original position after drop
dragDropObj.addSource('box7',true);	// Make <div id="box4"> dragable. slide item back into original position after drop


// Assigning drop events on the countries
dragDropObj.addTarget('box101','dropItems'); // Set <div id="leftColumn"> as a drop target. Call function dropItems on drop
dragDropObj.addTarget('box102','dropItems'); // Set <div id="leftColumn"> as a drop target. Call function dropItems on drop
dragDropObj.addTarget('box103','dropItems'); // Set <div id="leftColumn"> as a drop target. Call function dropItems on drop
dragDropObj.addTarget('box104','dropItems'); // Set <div id="leftColumn"> as a drop target. Call function dropItems on drop
dragDropObj.addTarget('box105','dropItems'); // Set <div id="leftColumn"> as a drop target. Call function dropItems on drop
dragDropObj.addTarget('box106','dropItems'); // Set <div id="leftColumn"> as a drop target. Call function dropItems on drop
dragDropObj.addTarget('box107','dropItems'); // Set <div id="leftColumn"> as a drop target. Call function dropItems on drop
dragDropObj.addTarget('capitals','dropItems'); // Set <div id="leftColumn"> as a drop target. Call function dropItems on drop

dragDropObj.init();	// Initizlizing drag and drop object
</script>
</body>
</html>