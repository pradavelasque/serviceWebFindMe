<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Evento | Free Onepage Event Template | ShapeBootstrap</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/animate.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/responsive.css" />"
	rel="stylesheet">



<!--[if lt IE 9]>
	    <script src="js/html5shiv.js"></script>
	    <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="/resources/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="/resources/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="/resources/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="/resources/images/ico/apple-touch-icon-57-precomposed.png">

<script type="text/javascript">
var initialModalHeight = $('#myModal').outerHeight();
$('#myModal').css('margin-top',(window.screenY/2)+initialModalHeight);
alert(initialModalHeight);
</script>

</head>
<!--/head-->

<body>
	<header id="header" role="banner">
		<div class="main-nav">
			<div class="container">
				<div class="header-top">
					<div class="pull-right social-icons">
						<a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
							class="fa fa-facebook"></i></a> <a href="#"><i
							class="fa fa-google-plus"></i></a> <a href="#"><i
							class="fa fa-youtube"></i></a>
					</div>
				</div>
				<div class="row">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="home.jsp"> <img
							class="img-responsive" src="/music/resources/images/logo.png"
							alt="logo">
						</a>
					</div>
					<div class="collapse navbar-collapse">
						<ul class="nav navbar-nav navbar-right">
							<li class="scroll active"><a href="#home">Home</a></li>
							<!--   <li class="scroll"><a href="#explore">Explore</a></li>                         
		                 <!--   <li class="scroll"><a href="#event">Event</a></li>-->
							<!--   <li class="scroll"><a href="#about">About</a></li> -->
							<!--   <li class="no-scroll"><a href="#twitter">Twitter</a></li>-->
							<!--   <li><a class="no-scroll" href="#" target="_blank">PURCHASE TICKETS</a></li> -->
							<!--   <li class="scroll"><a href="#contact">Contact</a></li> -->
						</ul>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!--/#header-->

	<section id="home">
		<div id="main-slider" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#main-slider" data-slide-to="0" class="active"></li>
				<li data-target="#main-slider" data-slide-to="1"></li>
				<li data-target="#main-slider" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img class="img-responsive"
						src="/music/resources/images/slider/bg1.jpg" alt="slider">
					<div class="carousel-caption">
						<h2>register for our next event</h2>
						<h4>full event package only @$199</h4>
						<a href="#contact">GRAB YOUR TICKETS <i
							class="fa fa-angle-right"></i></a>
					</div>
				</div>
				<div class="item">
					<img class="img-responsive"
						src="/music/resources/images/slider/bg2.jpg" alt="slider">
					<div class="carousel-caption">
						<h2>register for our next event</h2>
						<h4>full event package only @$199</h4>
						<a href="#contact">GRAB YOUR TICKETS <i
							class="fa fa-angle-right"></i></a>
					</div>
				</div>
				<div class="item">
					<img class="img-responsive"
						src="/music/resources/images/slider/bg3.jpg" alt="slider">
					<div class="carousel-caption">
						<h2>register for our next event</h2>
						<h4>full event package only @$199</h4>
						<a href="#contact">GRAB YOUR TICKETS <i
							class="fa fa-angle-right"></i></a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section>
	<a href="#myModal"  type ="button" class="btn btn-default" data-toggle="modal"> button </a>
	
	<!-- modal apres clicker sur le bouton -->
	
	<div id="myModal" class="modal fade">
		
		<div class="modal-dialog modal-vertical-centered">
			<div class="modal-content">
				
				<div class="modal-header text-primary"> <p> header</p></div>
				<div class="modal-body text-primary"> <p> body </p></div>
				<div class="modal-footer text-primary"> <p> footer</p></div>
			</div>
		</div>
	
	</div>
	
		<div class="row">
			<ul>	
				<table class="table">
				<tr>
				<th  class="text-primary"> name </th>
				<th class="text-primary"> time </th>
				<th class="text-primary"> genre </th>
				</tr>
				
				<c:forEach var="listValue" items="${listMusic}">
				<tr>
				<th class="text-primary"> ${listValue.name} </th>
				<th class="text-primary"> ${listValue.time} </th>
				
				</tr>
				</c:forEach>
				</table>
				
				
			</ul>
		</div>

	</section>
	<!--/#home-->
	<section id="explore">
		<div class="container">
			<div class="row">
				<div class="watch">
					<img class="img-responsive" src="/music/resources/images/watch.png"
						alt="">
				</div>
				<div class="col-md-4 col-md-offset-2 col-sm-5">
					<h2>the music list</h2>
				</div>
				<div class="col-sm-7 col-md-6">
					<c:forEach var="listValue" items="${listMusic}">


						<li>${listValue.name}${listValue.path}${listValue.use}</li>
					</c:forEach>


				</div>
			</div>
			<div class="cart">
				<a href="#"><i class="fa fa-shopping-cart"></i> <span>Purchase
						Tickets</span></a>
			</div>
		</div>
	</section>
	<!--/#explore-->
	<!--/#contact-->

	<footer id="footer">
		<div class="container">
			<div class="text-center">
				<p>
					Copyright &copy;2014<a target="_blank"
						href="http://shapebootstrap.net/"> Evento </a>Theme. All Rights
					Reserved. <br> Designed by <a target="_blank"
						href="http://shapebootstrap.net/">ShapeBootstrap</a>
				</p>
			</div>
		</div>
	</footer>
	<!--/#footer-->

	<script src="<c:url value="/resources/js/jquery.js" />"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
	<script
		src="<c:url value="/resources/http://maps.google.com/maps/api/js?sensor=true" />"></script>
	<script src="<c:url value="/resources/js/gmaps.js" />"></script>
	<script src="<c:url value="/resources/js/smoothscroll.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.parallax.js" />"></script>
	<script src="<c:url value="/resources/js/coundown-timer.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.scrollTo.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.nav.js" />"></script>
	<script src="<c:url value="/resources/js/main.js" />"></script>

</body>
</html>