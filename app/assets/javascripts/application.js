// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
// require turbolinks
//= require_tree .


jQuery(function($){
	$('ul.nav-left-ml').toggle();
	$('label.nav-toggle span').click(function () 
	{
		$(this).parent().parent().children('ul.nav-left-ml').toggle(300);
	  	var cs = $(this).attr("class");
	  	if(cs == 'nav-toggle-icon glyphicon glyphicon-chevron-right') 
	  	{
	    	$(this).removeClass('glyphicon-chevron-right').addClass('glyphicon-chevron-down');
	  	}
	  	if(cs == 'nav-toggle-icon glyphicon glyphicon-chevron-down') 
	  	{
	    	$(this).removeClass('glyphicon-chevron-down').addClass('glyphicon-chevron-right');
	  	}
	});
});