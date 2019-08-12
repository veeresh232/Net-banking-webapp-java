<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  if(session.getAttribute("userId")==null)
      response.sendRedirect("login.jsp");

  %> 
<title>FinCorp Bank</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Bank Online Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link href="css1/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstrap-css -->
<!-- css -->
<link rel="stylesheet" href="css1/style.css" type="text/css" media="all" />
<!--// css -->
<!-- font-awesome icons -->
<link href="css1/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- font -->
<link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Crimson+Text:400,400i,600,600i,700,700i" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>
<!-- //font -->
<script src="js1/jquery-1.11.1.min.js"></script>
<script src="js1/bootstrap.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script> 
<!-- flexslider -->
<link rel="stylesheet" href="css1/flexslider.css" type="text/css" media="screen" />
<!-- //flexslider -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<![endif]-->
</head>
<body>
	<div class="banner-top">
		<div class="slider">
			<div class="callbacks_container">
				<ul class="rslides callbacks callbacks1" id="slider4">
					<li>
						<div class="w3layouts-banner-top jarallax">
							<div class="agileinfo-dot">
								<div class="container">
									<div class="agileits-banner-info">
										<h3>Welcome to FinCorp Bank</h3>
										<h6>Banking services at your fingertips!</h6>
										<p></p>
										<div class="w3-button">
											
										</div>
									</div>	
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="w3layouts-banner-top w3layouts-banner-top1 jarallax">
							<div class="agileinfo-dot">
								<div class="container">
									<div class="agileits-banner-info">
										<h3></h3>
										<h6></h6>
										<p></p>
										<div class="w3-button">
											
										</div>
									</div>	
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="w3layouts-banner-top w3layouts-banner-top2 jarallax">
							<div class="agileinfo-dot">
								<div class="container">
									<div class="agileits-banner-info">
										<h3></h3>
										<h6></h6>
										<p></p>
										<div class="w3-button">
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="clearfix"> </div>
			<script src="js/responsiveslides.min.js"></script>
			<script>
						// You can also use "$(window).load(function() {"
						$(function () {
						  // Slideshow 4
						  $("#slider4").responsiveSlides({
							auto: true,
							pager:true,
							nav:true,
							speed: 500,
							namespace: "callbacks",
							before: function () {
							  $('.events').append("<li>before event fired.</li>");
							},
							after: function () {
							  $('.events').append("<li>after event fired.</li>");
							}
						  });
					
						});
			</script>
			<!--banner Slider starts Here-->
		</div>
	</div>
	<!-- banner -->
	<div class="banner">
		<div class="header">
			<div class="container">
				<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					  </button>
						<div class="w3layouts-logo">
							<h1><a href="index.html">FinCorp<span>Bank</span></a></h1>
						</div>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						<nav>
							<ul class="nav navbar-nav">
								<li class="active"><a href="index.html">Home</a></li>

								<li><a href="#markets" class="scroll">Services</a></li>
								<li><a href="Logout" >Log Out</a></li>
							</ul>
						</nav>
					</div>
					<!-- /.navbar-collapse -->
				</nav>
			</div>
		</div>
	</div>
	<!-- //banner -->
	<!-- modal -->
	<div class="modal about-modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header"> 
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						<h4 class="modal-title">Bank <span>Online</span></h4>
					</div> 
					<div class="modal-body">
					<div class="agileits-w3layouts-info">
						<img src="images/2.jpg" alt="" />
						<p></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //modal -->
	<!-- about -->
	
	<!-- //about -->
	<!-- markets -->
	<div class="markets" id="markets">
		<div class="container">
			<div class="wthree-heading">
				<h3>Online Services</h3>
				<h5>Our services for a smooth banking expereince</h5>
			</div>
			<div class="markets-grids">
				<div class="col-md-4 w3ls-markets-grid">
					<div class="agileits-icon-grid">
						<div class="icon-left">
							<i class="fa fa-bar-chart" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<a href='withdraw.jsp'><h5>Withdrawal</h5></a>
							<p>Withdraw money from your savings account</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-4 w3ls-markets-grid">
					<div class="agileits-icon-grid">
						<div class="icon-left">
							<i class="fa fa-line-chart" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<a href='money_transfer.jsp'><h5>Money Transfer</h5></a>
							<p>Send money online</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-4 w3ls-markets-grid">
					<div class="agileits-icon-grid">
						<div class="icon-left">
							<i class="fa fa-area-chart" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<a href='deposit.jsp'><h5>Deposit</h5></a>
							<p>Deposit money into your savings account</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-4 w3ls-markets-grid">
					<div class="agileits-icon-grid">
						<div class="icon-left">
							<i class="fa fa-signal" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<a href='mini_statements.jsp'><h5>Mini Statement</h5></a>
							<p>Get details of recent transactions</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-4 w3ls-markets-grid">
					<div class="agileits-icon-grid">
						<div class="icon-left">
							<i class="fa fa-money" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<a href='balance_display.jsp'><h5>Balance Enquiry</h5></a>
							<p>Check your account balance</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-4 w3ls-markets-grid">
					<div class="agileits-icon-grid">
						<div class="icon-left">
							<i class="fa fa-briefcase" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<a href='#'><h5>Loan Options</h5></a>
							<p>Checkout our latest loan offers!</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				
				
		</div>
		
		<div class="col-md-4 w3ls-markets-grid" >
					<div class="agileits-icon-grid">
						<div class="icon-left">
							<i class="fa fa-bar-chart" aria-hidden="true"></i>
						</div>
						<div class="icon-right">
							<a href='pin_change.jsp'><h5>Change PIN</h5></a>
							<p>Change your PIN</p>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
	</div>
	
	</div>
	
				
	
	
	
	<footer>
		<div class="container">
			<div class="copyright">
				<p>© 2017 Bank Online. All rights reserved | </p>
			</div>
		</div>
	</footer>
	<!-- //copyright -->
	<script src="js1/jarallax.js"></script>
	<script src="js1/SmoothScroll.min.js"></script>
	<script type="text/javascript">
		/* init Jarallax */
		$('.jarallax').jarallax({
			speed: 0.5,
			imgWidth: 1366,
			imgHeight: 768
		})
	</script>
	<script src="js1/responsiveslides.min.js"></script>
	<script type="text/javascript" src="js1/move-top.js"></script>
	<script type="text/javascript" src="js1/easing.js"></script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
<!-- FlexSlider -->
  <script defer src="js1/jquery.flexslider.js"></script>
	<script type="text/javascript">
    $(window).load(function(){
      $('#carousel').flexslider({
        animation: "slide",
        controlNav: false,
        animationLoop: true,
        slideshow: false,
        itemWidth: 102,
        itemMargin: 5,
        asNavFor: '#slider'
      });

      $('#slider').flexslider({
        animation: "slide",
        controlNav: false,
        animationLoop: true,
        slideshow: true,
        sync: "#carousel",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
    });
  </script>
<!-- //FlexSlider -->
</body>	
</html>