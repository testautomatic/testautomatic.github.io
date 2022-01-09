<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="keywords" content="Test Automatic, TestAutomatic, Automatic test ,Reports, TAReports, Dynamic Reports, TA Sense, TASense, Analytics, TAAnalytics, Functional, Manual, Test, Testing, Automation, Automatic, HP, QTP, UFT, Selenium, TESTNG, JUNIT, waitr, Cucumber, Automator, Live, Code, Generator, QC, Quality Center, QuickTest Pro, JIRA, Excel, TestCase, Defect, TestStep, ALM, TestScenarios, Maven, Jenkins, GIT, Agile, dockers, Gradle, Ant"
        />
        <meta name="description" content="TestAutomation Aglie Automation Tool, Reports and Analytics for Sprints, Code Generator and Test Automation " />
        <meta name="author" content="TestAutomatic" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=yes" />
        <title>
            TestAutomatic | TASense One Click Analytics - Resource Management
        </title>

        <link rel="stylesheet" type="text/css" href="Welcome/css/Welcome.css" />
        <link rel="stylesheet" type="text/css" href="Welcome/css/TASenseTable.css" />
        <link rel="stylesheet" type="text/css" href="TAReports/dc.css" />

        <style type="text/css">
            body {
                text-align: left;
            }
        </style>

        <script>
            (function(i, s, o, g, r, a, m) {
                i["GoogleAnalyticsObject"] = r;
                (i[r] =
                    i[r] ||
                    function() {
                        (i[r].q = i[r].q || []).push(arguments);
                    }),
                (i[r].l = 1 * new Date());
                (a = s.createElement(o)), (m = s.getElementsByTagName(o)[0]);
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m);
            })(
                window,
                document,
                "script",
                "https://www.google-analytics.com/analytics.js",
                "ga"
            );

            ga("create", "UA-80529305-1", "auto");
            ga("send", "pageview");
        </script>
    </head>

    <body>
        <nav class="navbar navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span> <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
                    <a class="navbar-brand" href="/">TA</a>
                </div>
                <div class="collapse navbar-collapse" id="top-navbar-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="/">Home</a></li>
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
        <br />
        <br />
        <div class="container">
            <div class="top-content-text">
                <br />
                <h2>
                    <center>TA - Resource Management</center>
                </h2>
                <hr />
            </div>

            <br />
            <br />

            <div class="row">
                <h3>
                    <center>Account and Funding Details</center>
                </h3>
                <div id="Domain-chart">
                    <strong>Domain</strong>
                    <a class="reset" href="javascript:domainChart.filterAll();dc.redrawAll();" style="display: none">reset</a
          >

          <div class="clearfix"></div>
        </div>

        <div id="FundingType-chart">
          <strong>Funding</strong>
          <a
            class="reset"
            href="javascript:fundingtypeChart.filterAll();dc.redrawAll();"
            style="display: none"
            >reset</a
          >

          <div class="clearfix"></div>
        </div>

        <div id="ProgrammeName-chart">
          <strong>Programme</strong>
          <a
            class="reset"
            href="javascript:programmeNameChart.filterAll();dc.redrawAll();"
            style="display: none"
            >reset</a
          >

          <div class="clearfix"></div>
        </div>

        <div id="WorkStream-chart">
          <strong>Work Stream</strong>
          <a
            class="reset"
            href="javascript:workStreamChart.filterAll();dc.redrawAll();"
            style="display: none"
            >reset</a
          >

          <div class="clearfix"></div>
        </div>

        <div id="ProjectName-chart">
          <strong>Project Name</strong>
          <a
            class="reset"
            href="javascript:projectNameChart.filterAll();dc.redrawAll();"
            style="display: none"
            >reset</a
          >

          <div class="clearfix"></div>
        </div>
      </div>

      <br />
      <br />
      <hr />

      <div class="row">
        <h3>
          <center>Resource and Vendor Details</center>
        </h3>
        <div id="CostObject-chart">
          <strong>Cost Object</strong>
          <a
            class="reset"
            href="javascript:costObjectChart.filterAll();dc.redrawAll();"
            style="display: none"
            >reset</a
          >

          <div class="clearfix"></div>
        </div>

        <div id="ResourceName-chart">
          <strong>Resource Name</strong>
          <a
            class="reset"
            href="javascript:resourceNameChart.filterAll();dc.redrawAll();"
            style="display: none"
            >reset</a
          >

          <div class="clearfix"></div>
        </div>

        <div id="GPN-chart">
          <strong>Employee ID</strong>
          <a
            class="reset"
            href="javascript:gPNChart.filterAll();dc.redrawAll();"
            style="display: none"
            >reset</a
          >

          <div class="clearfix"></div>
        </div>

        <div id="OutsourceVendor-chart">
          <strong>Out Source Vendor</strong>
          <a
            class="reset"
            href="javascript:outsourceVendorChart.filterAll();dc.redrawAll();"
            style="display: none"
            >reset</a
          >

          <div class="clearfix"></div>
        </div>

        <div id="OFFON-chart">
          <strong>OFF/ON details</strong>
          <a
            class="reset"
            href="javascript:oFFONChart.filterAll();dc.redrawAll();"
            style="display: none"
            >reset</a
          >

          <div class="clearfix"></div>
        </div>
      </div>

      <br />
      <br />
      <hr />

      <div class="row">
        <h3>
          <center>Resource Utilization Details</center>
        </h3>
        <div id="yearly-bubble-chart" class="dc-chart">
          <strong>Yearly Resource Details</strong>
          <a
            class="reset"
            href="javascript:yearlyBubbleChart.filterAll();dc.redrawAll();"
            style="display: none"
            >reset</a
          >
          <div class="clearfix"></div>
        </div>

        <div id="FTEUtilization-chart" class="dc-chart">
          <strong>FTE Utilization Details</strong>
          <a
            class="reset"
            href="javascript:fTEUtilizationchart.filterAll();dc.redrawAll();"
            style="display: none"
            >reset</a
          >
          <div class="clearfix"></div>
        </div>
      </div>

      <br />
      <br />
      <hr />

      <div class="row">
        <h3>
          <center>Location and Role Details</center>
        </h3>
        <div id="Location-chart">
          <strong>Location</strong>
          <a
            class="reset"
            href="javascript:locationChart.filterAll();dc.redrawAll();"
            style="display: none"
            >reset</a
          >

          <div class="clearfix"></div>
        </div>

        <div id="Role-chart">
          <strong>Role</strong>
          <a
            class="reset"
            href="javascript:roleChart.filterAll();dc.redrawAll();"
            style="display: none"
            >reset</a
          >

          <div class="clearfix"></div>
        </div>

        <div id="Rank-chart">
          <strong>Rank</strong>
          <a
            class="reset"
            href="javascript:rankChart.filterAll();dc.redrawAll();"
            style="display: none"
            >reset</a
          >

          <div class="clearfix"></div>
        </div>

        <div id="RoleSummary-chart">
          <strong>Role Summary</strong>
          <a
            class="reset"
            href="javascript:roleSummaryChart.filterAll();dc.redrawAll();"
            style="display: none"
            >reset</a
          >

          <div class="clearfix"></div>
        </div>
      </div>

      <br />
      <br />
      <hr />

      <div class="row">
        <h3>
          <center>Resource Costing Details</center>
        </h3>

        <div id="quarter-chart">
          <strong>Quarters</strong>
          <a
            class="reset"
            href="javascript:quarterChart.filterAll();dc.redrawAll();"
            style="display: none"
            >reset</a
          >

          <div class="clearfix"></div>
        </div>

        <div id="OutSourceDayRate-chart">
          <strong>OutSource Day Rate</strong>
          <a
            class="reset"
            href="javascript:outSourceDayRateChart.filterAll();dc.redrawAll();"
            style="display: none"
            >reset</a
          >

          <div class="clearfix"></div>
        </div>

        <div id="RateOverride-chart">
          <strong>Rate Override</strong>
          <a
            class="reset"
            href="javascript:rateOverrideChart.filterAll();dc.redrawAll();"
            style="display: none"
            >reset</a
          >

          <div class="clearfix"></div>
        </div>

        <div id="AnnualCost-chart">
          <strong>Annual Cost</strong>
          <a
            class="reset"
            href="javascript:annualCostChart.filterAll();dc.redrawAll();"
            style="display: none"
            >reset</a
          >

          <div class="clearfix"></div>
        </div>

        <div id="TotalCost-chart">
          <strong>Total Cost</strong>
          <a
            class="reset"
            href="javascript:totalCostChart.filterAll();dc.redrawAll();"
            style="display: none"
            >reset</a
          >

          <div class="clearfix"></div>
        </div>
      </div>

      <br />
      <br />
      <hr />

      <div class="row">
        <div id="monthly-move-chart">
          <strong>Yearly Status</strong>
          <span class="reset" style="display: none"
            >range: <span class="filter"></span
          ></span>
          <a
            class="reset"
            href="javascript:moveChart.filterAll();volumeChart.filterAll();dc.redrawAll();"
            style="display: none"
            >reset</a
          >

          <div class="clearfix"></div>
        </div>
      </div>

      <div class="row">
        <div id="monthly-volume-chart"></div>
        <p class="muted pull-right" style="margin-right: 15px">
          select a time range to zoom in
        </p>
      </div>
      <hr />

      <div class="row">
        <div>
          <div class="dc-data-count">
            <span class="filter-count"></span> selected out of
            <span class="total-count"></span> records |
            <a href="javascript:dc.filterAll(); dc.renderAll();">Reset All</a>
                </div>
            </div>
            <table class="table table-hover dc-data-table"></table>
        </div>
        </div>

        <script type="text/javascript" src="TAReports/d3.js"></script>
        <script type="text/javascript" src="TAReports/crossfilter.js"></script>
        <script type="text/javascript" src="TAReports/dc.js"></script>
        <script type="text/javascript" src="TAReports/colorbrewer.js"></script>
        <script type="text/javascript" src="TAReports/RM.js"></script>
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
                        <center>
                            &copy; 2016. Test Automatic Technologies Private Limited. All Rights Reserved.
                        </center>
                    </div>
                </div>
            </div>
        </footer>
        <script type="text/javascript" src="Welcome/js/Welcome.js"></script>
    </body>

    </html>