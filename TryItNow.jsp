<!DOCTYPE html>
<html lang="en">
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
<title>Login to TestAutomatic Demo | An Agile Test Automation
	Tool</title>

<link href="Welcome/css/googlefont.css" rel="stylesheet">
<link rel="stylesheet" type='text/css' href="Welcome/css/Login.css">
<link href="Welcome/css/font-awesome.min.css" rel="stylesheet">
<!-- <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"> -->

<link rel="shortcut icon" href="Welcome/ico/favicon.ico">

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

	<div class="header">
		<a href="index.html"> <img src="Welcome/images/logo.png"
			alt="logo" />
		</a>
	</div>

	<!-- Top content -->
	<div class="top-content">
		<div class="inner-bg">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2 text">
						<!-- 						<h1>
							<strong></strong> TestAutomatic Demo
						</h1> -->
						<div class="description">
							<h1>Automate Anything over the Web</h1>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3 form-box">
						<div class="form-top">
							<div class="form-top-left">
								<h3>TestAutomatic Demo</h3>
								<!-- <h4>Enter your UserName and Email ID to Login</h4> -->
							</div>
							<div class="form-top-right">
								<i class="fa fa-key"></i>
							</div>
						</div>
						<div class="form-bottom">
							<form name="frm" id="frm" role="form" class="login-form"
								action="DemoServlets" method="post">
								<div class="form-group">
									<label class="sr-only" for="form-username"></label> <i
										class="inside fa fa-user fa-1x"></i> <input type="text"
										name="uname" placeholder="Username" minlength=3 maxlength="20"
										required class="inside-indent form-username form-control"
										id="username">
								</div>

								<div class="form-group">
									<label class="sr-only" for="form-email">Email_ID</label> <i
										class="inside fa fa-envelope fa-1x"></i> <input type="email"
										name="email"
										pattern="[a-zA-Z0-9.-_]{1,}@[a-zA-Z.-]{2,}[.]{1}[a-zA-Z]{2,}"
										required placeholder="Enter Your Email ID"
										class="inside-indent form-email form-control" id="email">
								</div>
								<button type="submit" class="btn" value="submit"
									onclick="return checkform()" style="clear: both;">Login</button>

							</form>
							<li><a href="#userval">
									<div
										style="font-family: 'Poiret One', cursive; font-size: 17px; color: red">
										${uservalidation}</div>
							</a></li>
						</div>
					</div>
				</div>
				<div class="form-elements-divider"></div>
				<div class="l-form-10-questions">
					<p></p>
					<a href="ContactUs.jsp">Contact Us To Buy License </a> |||-||| <a
						href="ForgotUsername.jsp">Forgot your UserName?</a> |||-||| <a
						href="index.html">Home</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Javascript -->
	<script type="text/javascript" src="Welcome/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="Welcome/js/jquery.backstretch.min.js"></script>
	<script type="text/javascript" src="Welcome/js/scripts_login.js"></script>
	<script type="text/javascript">
function checkform() {
    if(document.frm.email.value == "" || document.frm.username.value == "" ) {
        /* alert("We don't want to miss your information. Kindly fill in all details !"); */
        document.getElementById("alertMessage").innerHTML = "We don't want to miss your information. Kindly fill in all details !";
		icon = "\"fa fa-minus-square\"";
        return false;
    }else if (document.frm.email.value != ""){
        var x = document.frm.email.value;
        var atpos = x.indexOf("@");
        var dotpos = x.lastIndexOf(".");
        if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
        	document.getElementById("alertMessage").innerHTML ="Enter correct e-mail address";
        	icon = "\"fa fa-minus-square\"";
            return false;
        }
    }else {
        document.frm.submit();
    }
}


</script>
</body>
</html>
