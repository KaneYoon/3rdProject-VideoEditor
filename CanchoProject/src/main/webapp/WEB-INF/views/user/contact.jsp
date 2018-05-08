<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="This is social network html5 template available in themeforest......" />
		<meta name="keywords" content="Social Network, Social Media, Make Friends, Newsfeed, Profile Page" />
		<meta name="robots" content="index, follow" />
		<title>FAQ | Frequently Asked Questions</title>

		<!-- Stylesheets
    ================================================= -->
		<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
		<link rel="stylesheet" href="../resources/css/style.css" />
		<link rel="stylesheet" href="../resources/css/ionicons.min.css" />
    <link rel="stylesheet" href="../resources/css/font-awesome.min.css" />
    
    <!--Google Font-->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,400i,700,700i" rel="stylesheet">
    
    <!--Favicon-->
    <link rel="shortcut icon" type="image/png" href="../resources/images/fav.png"/>
	</head>
  <body>

    <!-- Header
    ================================================= -->
		<header id="header">
      <nav class="navbar navbar-default navbar-fixed-top menu">
        <div class="container">

          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/cancho"><img src="../resources/images/logo.png" alt="logo" /></a>
          </div>

          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<c:if test="${sessionScope.loginId != null }">
	            <ul class="nav navbar-nav navbar-right main-menu">
	              <li class="dropdown">
	                <a href="/cancho">Timeline</a>
	              </li>
	              <li class="dropdown">
	                <a href="../post/postList">My Page</a>
	              </li>
	              <li class="dropdown">
	                <a href="friendList">Friends</a>
	              </li>
	              <li class="dropdown">
	                <a href="logout">Logout</a>
	              </li>
	              <li class="dropdown">
	                <a href="">Contact</a>
	              </li>
	            </ul>
			</c:if>
			<c:if test="${sessionScope.loginId == null }">
	            <ul class="nav navbar-nav navbar-right main-menu">
	              <li class="dropdown">
	                <a href="loginPage">Login</a>
	              </li>
	              <li class="dropdown">
	              	<a href="">Contact</a>
	              </li>
	            </ul>
			</c:if>
          </div><!-- /.navbar-collapse -->
        </div><!-- /.container -->
      </nav>
    </header>
    <!--Header End-->
    
    <!-- Page Title Section
    ================================================= -->
    <div class="page-title-section faq">
      <div class="container">
        <div class="headline">
          <h1 class="title">How Can We Help You?</h1>
        </div>
        <div class="page-search">
          <form class="search-form">
            <div class="form-group">
              <label for="search_content" class="screen-reader-text">Search Content!</label>
              <input id="search_content" type="text" class="form-control" value="" placeholder="Search what you want to find...">
            </div>
            <button type="submit" class="btn btn-primary" value=""><i class="icon ion-ios-search-strong"></i></button>
          </form>
        </div>
      </div>
    </div><!-- .page-header faq -->

    <div id="page-contents">
      <div class="container ">

        <!-- FAQ Menu
        ================================================= -->
        <ul class="nav nav-tabs faq-cat-list">
          <li class="active"><a href="#faq_cat_1" data-toggle="tab"><i class="icon ion-ios-information-outline"></i>General</a></li>
          <li><a href="#faq_cat_2" data-toggle="tab"><i class="icon ion-ios-person"></i>Account</a></li>
          <li><a href="#faq_cat_3" data-toggle="tab"><i class="icon ion-eye-disabled"></i>Privacy</a></li>
          <li><a href="#faq_cat_4" data-toggle="tab"><i class="icon ion-ios-plus-outline"></i>Other</a></li>
        </ul><!-- .faq-cat-list -->
      
        <div class="row">
        	<div class="col-sm-9">
          
            <!-- FAQ Content
            ================================================= -->
            <div class="tab-content faq-content">
            
              <!-- FAQ Category Content : General -->
              <div class="tab-pane active" id="faq_cat_1">
                <div class="faq-headline">
                	<h3 class="item-title grey"><i class="icon ion-ios-information-outline"></i>General Questions</h3>
                	<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias.</p>
                </div>
                <div class="panel-group" id="faqAccordion-1">
                  <div class="panel panel-default ">
                    <div class="panel-heading accordion-toggle question-toggle collapsed" data-toggle="collapse" data-parent="#faqAccordion-1" data-target="#question1">
                      <h4 class="panel-title"><a href="javascript:void(0);" class="ing">Q: What is TOMOlog?</a></h4>
                    </div>
                    <div id="question1" class="panel-collapse collapse" style="height: 0px;">
                      <div class="panel-body">
                        <h5><span class="label label-primary">Answer</span></h5>
                        <p>TOMOlog is simply dummy text of the printing and typesetting industry. TOMOlog has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing TOMOlog passages, and more recently with desktop publishing software like Aldus PageMaker including versions of TOMOlog.</p>
                      </div>
                    </div>
                  </div><!-- .panel -->
                  <div class="panel panel-default ">
                    <div class="panel-heading accordion-toggle collapsed question-toggle" data-toggle="collapse" data-parent="#faqAccordion-1" data-target="#question2">
                      <h4 class="panel-title"><a href="javascript:void(0);" class="ing">Q: Why do we use it?</a></h4>
                    </div>
                    <div id="question2" class="panel-collapse collapse" style="height: 0px;">
                      <div class="panel-body">
                        <h5><span class="label label-primary">Answer</span></h5>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using TOMOlog is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use TOMOlog as their default model text, and a search for 'TOMOlog' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>
                      </div>
                    </div>
                  </div><!-- .panel -->
                  <div class="panel panel-default ">
                    <div class="panel-heading accordion-toggle collapsed question-toggle" data-toggle="collapse" data-parent="#faqAccordion-1" data-target="#question3">
                      <h4 class="panel-title"><a href="javascript:void(0);" class="ing">Q: Where does it come from?</a></h4>
                    </div>
                    <div id="question3" class="panel-collapse collapse" style="height: 0px;">
                      <div class="panel-body">
                        <h5><span class="label label-primary">Answer</span></h5>
                        <p>Contrary to popular belief, TOMOlog is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a TOMOlog passage, and going through the cites of the word in classical literature, discovered the undoubtable source. TOMOlog comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of TOMOlog, "TOMOlog dolor sit amet..", comes from a line in section 1.10.32</p>
                      </div>
                    </div>
                  </div><!-- .panel -->
                  <div class="panel panel-default ">
                    <div class="panel-heading accordion-toggle collapsed question-toggle" data-toggle="collapse" data-parent="#faqAccordion-1" data-target="#question4">
                      <h4 class="panel-title"><a href="javascript:void(0);" class="ing">Q: Where can I get some?</a></h4>
                    </div>
                    <div id="question4" class="panel-collapse collapse" style="height: 0px;">
                      <div class="panel-body">
                        <h5><span class="label label-primary">Answer</span></h5>
                        <p>There are many variations of passages of TOMOlog available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of TOMOlog, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the TOMOlog generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate TOMOlog which looks reasonable. The generated TOMOlog is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>
                      </div>
                    </div>
                  </div><!-- .panel -->
                  <div class="panel panel-default ">
                    <div class="panel-heading accordion-toggle collapsed question-toggle" data-toggle="collapse" data-parent="#faqAccordion-1" data-target="#question5">
                      <h4 class="panel-title"><a href="javascript:void(0);" class="ing">Q: Who uses TOMOlog?</a></h4>
                    </div>
                    <div id="question5" class="panel-collapse collapse" style="height: 0px;">
                      <div class="panel-body">
                        <h5><span class="label label-primary">Answer</span></h5>
                        <p>The standard chunk of TOMOlog used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>
                      </div>
                    </div>
                  </div><!-- .panel -->
                  <div class="panel panel-default ">
                    <div class="panel-heading accordion-toggle collapsed question-toggle" data-toggle="collapse" data-parent="#faqAccordion-1" data-target="#question6">
                      <h4 class="panel-title"><a href="javascript:void(0);" class="ing">Q: When they use it?</a></h4>
                    </div>
                    <div id="question6" class="panel-collapse collapse" style="height: 0px;">
                      <div class="panel-body">
                        <h5><span class="label label-primary">Answer</span></h5>
                        <p>TOMOlog dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                      </div>
                    </div>
                  </div><!-- .panel -->
                  <div class="panel panel-default ">
                    <div class="panel-heading accordion-toggle collapsed question-toggle" data-toggle="collapse" data-parent="#faqAccordion-1" data-target="#question7">
                      <h4 class="panel-title"><a href="javascript:void(0);" class="ing">Q: Who can see this?</a></h4>
                    </div>
                    <div id="question7" class="panel-collapse collapse" style="height: 0px;">
                      <div class="panel-body">
                        <h5><span class="label label-primary">Answer</span></h5>
                        <p>TOMOlog dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                      </div>
                    </div>
                  </div><!-- .panel -->
                  <div class="panel panel-default ">
                    <div class="panel-heading accordion-toggle collapsed question-toggle" data-toggle="collapse" data-parent="#faqAccordion-1" data-target="#question8">
                      <h4 class="panel-title"><a href="javascript:void(0);" class="ing">Q: Why people love this?</a></h4>
                    </div>
                    <div id="question8" class="panel-collapse collapse" style="height: 0px;">
                      <div class="panel-body">
                        <h5><span class="label label-primary">Answer</span></h5>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui doTOMOlog quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>
                      </div>
                    </div>
                  </div><!-- .panel -->
                </div><!-- .panel-group -->
              </div><!-- #faq_cat_1 -->
              
              <!-- FAQ Category Content : Account -->
              <div class="tab-pane" id="faq_cat_2">
                <div class="faq-headline">
                	<h3 class="item-title grey"><i class="icon ion-ios-person"></i>Account</h3>
                	<p>TOMOlog dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud</p>
                </div>
                <div class="panel-group" id="faqAccordion-2">
                  <div class="panel panel-default ">
                    <div class="panel-heading accordion-toggle question-toggle collapsed" data-toggle="collapse" data-parent="#faqAccordion-2" data-target="#question9">
                      <h4 class="panel-title"><a href="javascript:void(0);" class="ing">Q: Account is Locked?</a></h4>
                    </div>
                    <div id="question9" class="panel-collapse collapse" style="height: 0px;">
                      <div class="panel-body">
                        <h5><span class="label label-primary">Answer</span></h5>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui doTOMOlog quia dolor sit amet, consectetur</p>
                      </div>
                    </div>
                  </div><!-- .panel -->
                  <div class="panel panel-default ">
                    <div class="panel-heading accordion-toggle collapsed question-toggle" data-toggle="collapse" data-parent="#faqAccordion-2" data-target="#question10">
                      <h4 class="panel-title"><a href="javascript:void(0);" class="ing">Q: Change Password?</a></h4>
                    </div>
                    <div id="question10" class="panel-collapse collapse" style="height: 0px;">
                      <div class="panel-body">
                        <h5><span class="label label-primary">Answer</span></h5>
                        <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quib.</p>
                      </div>
                    </div>
                  </div><!-- .panel -->
                  <div class="panel panel-default ">
                    <div class="panel-heading accordion-toggle collapsed question-toggle" data-toggle="collapse" data-parent="#faqAccordion-2" data-target="#question11">
                      <h4 class="panel-title"><a href="javascript:void(0);" class="ing">Q: How to Delete Account?</a></h4>
                    </div>
                    <div id="question11" class="panel-collapse collapse" style="height: 0px;">
                      <div class="panel-body">
                        <h5><span class="label label-primary">Answer</span></h5>
                        <p>TOMOlog is simply dummy text of the printing and typesetting industry. TOMOlog has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing TOMOlog passages, and more recently with desktop publishing software like Aldus PageMaker including versions of TOMOlog.</p>
                      </div>
                    </div>
                  </div><!-- .panel -->
                </div><!--.panel-group-->
              </div><!-- #faq_cat_2 -->
              
              <!-- FAQ Category Content : Privacy -->
              <div class="tab-pane" id="faq_cat_3">
                <div class="faq-headline">
                	<h3 class="item-title grey"><i class="icon ion-eye-disabled"></i>Privacy FAQ</h3>
                	<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi</p>
                </div>
                <div class="panel-group" id="faqAccordion-3">
                  <div class="panel panel-default ">
                    <div class="panel-heading accordion-toggle question-toggle collapsed" data-toggle="collapse" data-parent="#faqAccordion-3" data-target="#question12">
                      <h4 class="panel-title"><a href="javascript:void(0);" class="ing">Q: Why Privacy is Important?</a></h4>
                    </div>
                    <div id="question12" class="panel-collapse collapse" style="height: 0px;">
                      <div class="panel-body">
                        <h5><span class="label label-primary">Answer</span></h5>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui doTOMOlog quia dolor sit amet, consectetur</p>
                      </div>
                    </div>
                  </div><!-- .panel -->
                  <div class="panel panel-default ">
                    <div class="panel-heading accordion-toggle collapsed question-toggle" data-toggle="collapse" data-parent="#faqAccordion-3" data-target="#question13">
                      <h4 class="panel-title"><a href="javascript:void(0);" class="ing">Q: Why Should I care?</a></h4>
                    </div>
                    <div id="question13" class="panel-collapse collapse" style="height: 0px;">
                      <div class="panel-body">
                        <h5><span class="label label-primary">Answer</span></h5>
                        <p>TOMOlog is simply dummy text of the printing and typesetting industry. TOMOlog has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing TOMOlog passages, and more recently with desktop publishing software like Aldus PageMaker including versions of TOMOlog.</p>
                      </div>
                    </div>
                  </div><!-- .panel -->
                </div><!--.panel-group-->
              </div><!-- #faq_cat_2 -->
              
              <!-- FAQ Category Content : Other -->
              <div class="tab-pane" id="faq_cat_4">
                <div class="faq-headline">
                	<h3 class="item-title grey"><i class="icon ion-ios-plus-outline"></i>Other FAQ</h3>
                	<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod</p>
                </div>
                <div class="panel-group" id="faqAccordion-4">
                  <div class="panel panel-default ">
                    <div class="panel-heading accordion-toggle question-toggle collapsed" data-toggle="collapse" data-parent="#faqAccordion-4" data-target="#question14">
                      <h4 class="panel-title"><a href="javascript:void(0);" class="ing">Q: What are Other Questions?</a></h4>
                    </div>
                    <div id="question14" class="panel-collapse collapse" style="height: 0px;">
                      <div class="panel-body">
                        <h5><span class="label label-primary">Answer</span></h5>
                        <p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus</p>
                      </div>
                    </div>
                  </div><!-- .panel -->
                </div><!--.panel-group-->
              </div><!-- #faq_cat_2 -->

            </div>
          </div>
        	<div class="col-sm-3">
            <div class="faq_contact">
              <div class="faq-headline">
                <h3 class="item-title grey"><i class="icon ion-ios-help-outline"></i>Still Confused?</h3>
                <p>Contact us if you still have any question.</p>
              </div>
              <div class="reach-out">
                <div class="method by-forum"><a href="#"><i class="icon ion-chatboxes"></i>Ask in Forum</a></div>
                <div class="method by-ticket"><a href="#"><i class="icon ion-help-circled"></i>Send Ticket</a></div>
                <div class="method by-email"><a href="#"><i class="icon ion-email"></i>Email us</a></div>
                <div class="method by-phone"><a href="#"><i class="icon ion-android-call"></i>Call us</a></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Footer
    ================================================= -->
		<footer id="footer">
      <div class="container">
      	<div class="row">
          <div class="footer-wrapper">
            <div class="col-md-3 col-sm-3">
              <a href="/cancho"><img src="../resources/images/logo-black.png" alt="" class="footer-logo" /></a>
              <ul class="list-inline social-icons">
              	<li><i class="icon ion-social-facebook"></i></li>
              	<li><i class="icon ion-social-twitter"></i></li>
              	<li><i class="icon ion-social-googleplus"></i></li>
              	<li><i class="icon ion-social-pinterest"></i></li>
              	<li><i class="icon ion-social-linkedin"></i></li>
              </ul>
            </div>
            <div class="col-md-2 col-sm-2">
              <h6>For individuals</h6>
              <ul class="footer-links">
                <li>Signup</li>
                <li>login</li>
                <li>Explore</li>
                <li>Finder app</li>
                <li>Features</li>
                <li>Language settings</li>
              </ul>
            </div>
            <div class="col-md-2 col-sm-2">
              <h6>For businesses</h6>
              <ul class="footer-links">
                <li>Business signup</li>
                <li>Business login</li>
                <li>Benefits</li>
                <li>Resources</li>
                <li>Advertise</li>
                <li>Setup</li>
              </ul>
            </div>
            <div class="col-md-2 col-sm-2">
              <h6>About</h6>
              <ul class="footer-links">
                <li>About us</li>
                <li>Contact us</li>
                <li>Privacy Policy</li>
                <li>Terms</li>
                <li>Help</li>
              </ul>
            </div>
            <div class="col-md-3 col-sm-3">
              <h6>Contact Us</h6>
                <ul class="contact">
                	<li><i class="icon ion-ios-telephone-outline"></i>+82 (02) 1566 5114</li>
                	<li><i class="icon ion-ios-email-outline"></i>canchoad@gmail.com</li>
                  <li><i class="icon ion-ios-location-outline"></i>524 Samsung Seoul, Korea</li>
                </ul>
            </div>
          </div>
      	</div>
      </div>
      <div class="copyright">
         <p>Tomo Log @2018. All rights reserved</p>
      </div>
		</footer>
    
    <!--preloader-->
    <div id="spinner-wrapper">
      <div class="spinner"></div>
    </div>

    <!-- Scripts
    ================================================= -->
    <script src="../resources/js/jquery-3.1.1.min.js"></script>
    <script src="../resources/js/bootstrap.min.js"></script>
    <script src="../resources/js/script.js"></script>
    
  </body>
</html>