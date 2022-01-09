<%@ page import="com.testautomatic.view.ContactServlets"%>
    <%@ page
import="javax.mail.MessagingException"%>
        <% String message = null; String status
= null; String icon = null; if (request.getParameter("submit") != null) {
ContactServlets javaEmail = new ContactServlets(); /*
javaEmail.setMailServerProperties(); */ String emailSubject = "[TA Contact Us] -
" + request.getParameter("subject") ; String emailBody = ""; if
(request.getParameter("name") != null) { emailBody = "Sender Name: " +
request.getParameter("name") + "<br />"; } if (request.getParameter("email") !=
null) { emailBody = emailBody + "Sender Email: " + request.getParameter("email")
+ "<br />"; } if (request.getParameter("subject") != null) { emailBody =
emailBody + "Sender Subject: " + request.getParameter("subject") + "<br />"; }
if (request.getParameter("message") != null) { emailBody = emailBody + "Message:
" + request.getParameter("message") + "<br />"; }
javaEmail.createEmailMessage(emailSubject, emailBody); try {
javaEmail.sendEmail(); status = "success"; icon = "\"fa fa-thumbs-up fa-3\"";
message = "Thank you for contacting us."; } catch (MessagingException me) {
status = "error"; icon = "\"fa-exclamation-triangle\""; message = "Error in
Sending Email!"; } } %>
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
                <title>TestAutomatic : Contact Us | An Agile Test Automation Tool</title>
                <link rel="stylesheet" type="text/css" href="Welcome/css/bootstrap.min.css" />
                <link rel="stylesheet" type="text/css" href="Welcome/css/animate.css" />
                <link rel="stylesheet" type="text/css" href="Welcome/css/googlefont.css" />
                <link rel="stylesheet" type="text/css" href="Welcome/css/Welcome.css" />
                <link rel="stylesheet" type="text/css" href="Welcome/css/ContactUs.css" />

                <script type="text/javascript">
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

                <script type="text/javascript">
                    function checkform() {
                        if (
                            document.frm.email.value == "" ||
                            document.frm.subject.value == "" ||
                            document.frm.message.value == ""
                        ) {
                            /* alert("We don't want to miss your information. Kindly fill in all details !"); */
                            document.getElementById("alertMessage").innerHTML =
                                "We don't want to miss your information. Kindly fill in all details !";
                            icon = '"fa fa-minus-square"';
                            return false;
                        } else if (document.frm.email.value != "") {
                            var x = document.frm.email.value;
                            var atpos = x.indexOf("@");
                            var dotpos = x.lastIndexOf(".");
                            if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length) {
                                document.getElementById("alertMessage").innerHTML =
                                    "Enter correct e-mail address";
                                icon = '"fa fa-minus-square"';
                                return false;
                            }
                        } else {
                            document.frm.submit();
                        }
                    }
                </script>
            </head>

            <body>
                <nav class="navbar navbar-fixed-top navbar-no-bg" role="navigation">
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
                                <li><a href="MaverickServlet">TryItNow</a></li>
                                <li><a href="ContactUs">Contact Us</a></li>
                                <li>
                                    <a href="https://testautomatic.atlassian.net/wiki/spaces/TESTAUTOMA/pages/262196/Introduction">Blog</a
              >
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Contact Form 1 -->
    <div
      class="c-form-1-container section-container section-container-image-bg"
    >
      <div class="container">
        <div class="row">
          <div
            class="col-sm-8 col-sm-offset-2 c-form-1 section-description wow fadeIn"
          >
            <h2>
              <lessstrong> TestAutomatic Contact Us </lessstrong>
            </h2>
            <div class="divider-1 wow fadeInUp">
              <span></span>
            </div>
            <p>
              Contact us for queries, issues and your feedback. We will make
              sure to be up to your expectations!
            </p>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-6 col-sm-offset-3 wow fadeInUp">
            <div class="c-form-1-top">
              <div class="c-form-1-top-left">
                <h3>Contact us</h3>
                <p>Fill in the form below to contact us:</p>
              </div>
              <div class="c-form-1-top-right">
                <i class="fa fa-envelope"></i>
              </div>
            </div>
            <div id="message">
              <div class="c-form-1-bottom">
                <form
                  name="frm"
                  id="frm"
                  role="form"
                  action="ContactUs.jsp"
                  method="post"
                >
                  <div class="form-group">
                    <label class="sr-only" for="c-form-1-email">Email</label>
                    <input
                      type="text"
                      name="email"
                      placeholder="Your Email ID"
                      class="c-form-1-email form-control"
                      id="email"
                      required
                    />
                  </div>
                  <div class="form-group">
                    <label class="sr-only" for="c-form-1-subject"
                      >Subject</label
                    >
                    <input
                      type="text"
                      name="subject"
                      placeholder="Subject Line"
                      class="c-form-1-subject form-control"
                      id="subject"
                      required
                    />
                  </div>
                  <div class="form-group">
                    <label class="sr-only" for="c-form-1-message"
                      >Message</label
                    >
                    <textarea
                      name="message"
                      placeholder="Your Message/Feedback"
                      class="c-form-1-message form-control"
                      id="message"
                      required
                    ></textarea>
                  </div>
                  <!-- 		                        <button type="submit" class="btn">Send message</button>	      -->
                  <div id="mail-status"></div>
                  <button
                    type="submit"
                    class="btn"
                    name="submit"
                    onclick="return checkform()"
                    style="clear: both"
                  >
                    Send Message
                  </button>
                  <p id="alertMessage"></p>
                  <% if (null != message) { out.print("<i class="+ icon +"></i
                  >"); out.print("
                  <div class="&quot; + status + &quot;">" + message + "</div>
                  "); } %>
                </form>
              </div>
            </div>
          </div>
        </div>

        <div class="row">
          <div class="col-sm-12 c-form-1-info-title wow fadeInUp">
            <h3>Find us here:</h3>
          </div>
        </div>

        <div class="row">
          <!-- <div class="col-sm-6 c-form-1-info-box wow fadeInUp">
	            		<div class="c-form-1-info-box-icon">
	            			<i class="fa fa-map-marker"></i>
	            		</div>
	            		<p>Dallas<br>Texas</p>
	            	</div> -->
          <!-- <div class="col-sm-4 c-form-1-info-box wow fadeInDown">
	            		<div class="c-form-1-info-box-icon">
	            			<i class="fa fa-phone"></i>
	            		</div>
	            		<p>Phone:<br>9999 9999</p>
	            	</div> -->
          <div class="col-sm-12 c-form-1-info-box wow fadeInUp">
            <div class="c-form-1-info-box-icon">
              <i class="fa fa-envelope"></i>
            </div>
            <p>
              Email:<br />
              <a href="mailto:board@testautomatic.com"
                >board@testautomatic.com</a
              >
            </p>
          </div>
        </div>
      </div>
    </div>

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
                            &copy; 2016. TestAutomatic Technologies Private Limited. All Rights Reserved.
                        </div>
                    </div>
                    </div>
                    </footer>
                    <script type="text/javascript" src="Welcome/js/Welcome.js"></script>
                    <script type="text/javascript" src="Welcome/js/contact-forms.js"></script>
            </body>

            </html>