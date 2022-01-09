<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="keywords" content="Test Automatic, TestAutomatic, Automatic test ,Reports, TAReports, Dynamic Reports, TA Sense, TASense, Analytics, TAAnalytics, Functional, Manual, Test, Testing, Automation, Automatic, HP, QTP, UFT, Selenium, TESTNG, JUNIT, waitr, Cucumber, Automator, Live, Code, Generator, QC, Quality Center, QuickTest Pro, JIRA, Excel, TestCase, Defect, TestStep, ALM, TestScenarios, Maven, Jenkins, GIT, Agile, dockers, Gradle, Ant"
    />
    <meta name="description" content="TestAutomation Aglie Automation Tool, Reports and Analytics for Sprints, Code Generator and Test Automation " />
    <meta name="author" content="TestAutomatic" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=yes" />

    <title>Login to TestAutomatic Demo | An Agile Test Automation Tool</title>

    <%--
    <link href="Welcome/css/googlefont.css" rel="stylesheet" />
    --%>
        <link rel="stylesheet" type="text/css" href="Welcome/css/TAJiraDemo.css" />
        <%--
    <link href="Welcome/css/font-awesome.min.css" rel="stylesheet" />
    --%>
            <!-- <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"> -->

            <%--
    <link rel="shortcut icon" href="Welcome/ico/favicon.ico" />
    --%>

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
    <iframe id="iframeId" frameborder="0" marginheight="0" marginwidth="0" width="100%" height="100%" scrolling="auto">
    </iframe>
    <script type="text/javascript">
        //    $.get("http://165.22.252.136:8080/secure/Dashboard.jspa", function (response){
        //        var html = response;
        //
        //        var html_src = 'data:text/html;charset=utf-8,' + html;
        //        $("#iframeId").attr("src" , html_src);
        //
        //    });

        tademo();

        function tademo() {
            // alert("inside TAdemo");
            window.location.href =
                "https://testautomatic.com:9091/secure/Dashboard.jspa";
            window.history.pushState(
                "https://testautomatic.com:9091/secure/Dashboard.jspa",
                "TA for JIRA",
                "https://testautomatic.com/Jiralogin"
            );
            // window.history.pushState("https://testautomatic.com", "TA for JIRA", "https://www.testautomatic.com/hey");
            window.history.replaceState(
                "https://testautomatic.com:9091/secure/Dashboard.jspa",
                "TA for JIRA",
                "https://testautomatic.com/Jiralogin"
            );
        }
    </script>
</body>

</html>