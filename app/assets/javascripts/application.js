// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

function folio () {
	var f = new Date();
	var m = null;
	m = f.getMonth();
	var mes = null;
	if (m<10) {
		m++;
		mes = "0"+m;
	}else{
		mes = m;
	}
	var d = null;
	var dia = null;
	d =f.getDate();
	if (d<10) {
		dia = "0"+d;
	}else{
		dia = d;
	}

	folio = f.getFullYear()+""+mes+""+dia+"-"+f.getHours()+f.getMinutes()+f.getSeconds();;
	console.log("Folio="+folio);
	$("#note_folio").val(folio);
}

function paginas() {
	previus = '<span class="material-icons">keyboard_arrow_left</span>';
	next = '<span class="material-icons">keyboard_arrow_right</span>';
	$(".previous_page").empty();
	$(".previous_page").html(previus);
	$(".next_page").empty();
	$(".next_page").html(next);
}

var puerto =window.location.port;
var urlhost="http://" + window.location.hostname+":"+puerto;

function status(ide) {
	uri = urlhost + "/notes/"+ide;
	red = urlhost + "/notes/"+ide+"/print";
	 $.ajax({
      type: "POST",
      url: uri,
      data: {id: ide, status: 2},
      success: function(events){
         console.log("success");
      },
      error: function(){
         console.log("error");
         console.log(uri);
      }
   });
  	
}
function goPrint (ide) {
	red = urlhost + "/notes/"+ide+"/print";

	window.location = red;
}


$(document).ready(function() {
	paginas();
	setTimeout(function() {
      $("#notice_wrapper").slideUp();
      /*$("#notice_wrapper").fadeOut("slow", function() {
        $(this).remove();
      });*/
    }, 3000);
     
});

function menu () {
	nota = '<i class="material-icons left">note</i>';
	$("#nota").append(nota);

	clientes = '<i class="material-icons left">people</i>';
	$("#clientes").append(clientes);


	device = '<i class="material-icons left">important_devices</i>';
	$("#device").append(device);

	marca = '<i class="material-icons left">branding_watermark</i>';
	$("#marca").append(marca);
	
	salida = '<i class="material-icons left">exit_to_app</i>';
	$("#salida").append(salida);
}