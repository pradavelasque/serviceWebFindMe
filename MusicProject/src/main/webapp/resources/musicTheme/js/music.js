/**
 * 
 */

$(document).on("click", ".openModal", function () {
     var myBookId = $(this).data('id');
     $("#bookId").val( myBookId );
});

$( "#ongletIdentifiant" ).click(function( event, succes, executerAction,url ) {
    alert(url);
	$( "#ongletIdentifiant" ).attr("aria-selected","true");
	$( "#ongletMotDePasse" ).attr("aria-selected","false");
	$( "#ongletParametres" ).attr("aria-selected","false");
	$( "#ongletJumelage" ).attr("aria-selected","false");
	
	chargerOnglet(event, "#onglet-identifiant", "#btnModifierIdentifiant", "/identifiantunique/identifiant/identifiant.ajax", succes, executerAction,url);
});

$('#myModal').on('shown.bs.modal', function (e) {

            var object = $('.modal-dialog');
            var object_outerheight = object.outerHeight();
            var window_height = $(window).height();
            var window_scrolltop = $(window).scrollTop();
            var object_top = ((window_height - object_outerheight)/2) + window_scrolltop;
            console.log(object_top);

            // Set the object's position.
            object.css({
                marginTop: object_top + 'px'
            }).fadeIn();

            // Add responsive when the window is being resized.
            $( window ).resize(function() {

                // Redo the calc on each resize's action.
                var window_height = $(window).height();
                var window_scrolltop = $(window).scrollTop();
                var object_top = ((window_height - object_outerheight)/2) + window_scrolltop;
                console.log(object_top);

                // Reset the object's position.
                object.css({
                    marginTop: object_top + 'px'
                });

            });
        });