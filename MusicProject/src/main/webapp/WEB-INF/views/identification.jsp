<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 		<meta name="generator" content="Bootply">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		
		<link href="<c:url value="/resources/css/bootstrap.min.css" />"
			rel="stylesheet">
		<link href="<c:url value="/resources/css/bootbox.css" />"
			rel="stylesheet">
		<link href="<c:url value="/resources/css/font-awesome.min.css" />"
			rel="stylesheet">
		<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
		<link href="<c:url value="/resources/css/animate.css" />"
			rel="stylesheet">
		<link href="<c:url value="/resources/css/responsive.css" />"
			rel="stylesheet">
	
	<style type="text/css">
	
	
	
	</style>
	
<title>Insert title here</title>
</head>

<body>



		<button type="button" data-id="ISBN564541" class="openModal btn btn-primary"  data-toggle="modal" data-target="#myModal">Popup image</button>

		<div id="myModal1" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		        <div class="modal-body">
		            <img src="//placehold.it/1000x600" class="img-responsive">
		        </div>
		    </div>
		  </div>
		</div>

	<a id="backAdresse" href="" class="btn default">qwe</a>

	<!-- modal apres clicker sur le bouton -->
	
		<div id="myModal" class="modal fade  tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"">
			<!-- modal-vertical-centered -->
			<div class="modal-dialog margin-top">
				<div class="modal-content">
					<div class="modal-body">
					<div class="modal-header text-primary"> <p> header</p></div>
					<div class="modal-body text-primary"> 
					<button type="button" class="btn btn-default" data-dismiss="modal">cancel</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">submit</button>
					<input type="text" name="bookId" id="bookId" value=""/>
					<p> body </p></div>
					<div class="modal-footer text-primary"> <p> footer</p></div>
					
					</div>
				</div>
			</div>
		</div>
		</br>
		</br>
		
		<div class=" col-sm-10">
				<table class=" pagination-centered col-sm-9 table">
				<tr class="row">
				<th  class="text-primary"> name </th>
				<th class="text-primary"> time </th>
				<th class="text-primary"> genre </th>
				</tr>
				
				<c:forEach var="listValue" items="${listMusic}">
				<tr class="row">
				<th class="text-primary col-xs-6 col-sm-4"> ${listValue.name} </th>
				<th class="text-primary"> ${listValue.time} </th>
				
				</tr>
				</c:forEach>
				</table>
				
				
			
		</div>

    <script src="<c:url value="/resources/js/jquery.js" />"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
	<script src="<c:url value="/resources/http://maps.google.com/maps/api/js?sensor=true" />"></script>
	<script src="<c:url value="/resources/js/gmaps.js" />"></script>
	<script src="<c:url value="/resources/js/smoothscroll.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.parallax.js" />"></script>
	<script src="<c:url value="/resources/js/coundown-timer.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.scrollTo.js" />"></script>
	<script src="<c:url value="/resources/js/jquery.nav.js" />"></script>
	<script src="<c:url value="/resources/js/music.js" />"></script>
	<script src="<c:url value="/resources/js/bootstrap-confirmation.js" />"></script>
	<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
    <script type="text/javascript" src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>

	<script type="text/javascript">
    
	$( document ).ready(function() {
		$("#backAdresse").trigger("click",["null","url:www.peru.com","we:ad","ff"]);
		
	});
	
	$("#backAdresse").click(function(event, succes,url,we,sd){
		if(we!=null){
			alert(we);
			alert(url);
		}
		
		
	});
	
	$( "#ongletIdentifiant" ).click(function( event, succes, executerAction,url ) {
	    alert(url);
		$( "#ongletIdentifiant" ).attr("aria-selected","true");
		$( "#ongletMotDePasse" ).attr("aria-selected","false");
		$( "#ongletParametres" ).attr("aria-selected","false");
		$( "#ongletJumelage" ).attr("aria-selected","false");
		
		chargerOnglet(event, "#onglet-identifiant", "#btnModifierIdentifiant", "/identifiantunique/identifiant/identifiant.ajax", succes, executerAction,url);
	});
	
        $(document).ready(function() {
        
            function centerModal() {
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
       
	
</body>
</html>