<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="generator" content="Bootply">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/animate.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/responsive.css" />"
	rel="stylesheet">



<title>Insert title here</title>
</head>
<body>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Popup image</button>

<div id="myModal1" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-body">
            <img src="//placehold.it/1000x600" class="img-responsive">
        </div>
    </div>
  </div>
</div>

	<section>
	
	<!-- modal apres clicker sur le bouton -->
	
	<div id="myModal" class="modal fade  tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"">
		<!-- modal-vertical-centered -->
		<div class="modal-dialog margin-top">
			<div class="modal-content">
				<div clas="modal-body">
				<div class="modal-header text-primary"> <p> header</p></div>
				<div class="modal-body text-primary"> <p> body </p></div>
				<div class="modal-footer text-primary"> <p> footer</p></div>
				</div>
			</div>
		</div>
	
	</div>
	
		<div class="content col-sm-10 center-block">
			<a href="#myModal"  type ="button" class="btn btn-default" data-toggle="modal"> button </a>
	
				<table class=" pagination-centered col-sm-9 table">
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
				
				
			
		</div>

	</section>
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
	
	
	
	 <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
<script type="text/javascript" src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>

	    <script type="text/javascript">
        
        $(document).ready(function() {
        
            function centerModal() {
            	alert("allo");
    $(this).css('display', 'block');
    var $dialog = $(this).find(".modal-dialog");
    var offset = ($(window).height() - $dialog.height()) / 2;
    // Center modal vertically in window
    $dialog.css("margin-top", offset);
}

$('.modal').on('show.bs.modal', centerModal);
$(window).on("resize", function () {
    $('.modal:visible').each(centerModal);
});
        
        });
        
        </script>
        
        
        <!-- Quantcast Tag -->
       
	
</body>
</html>