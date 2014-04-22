// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
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

$(function(){
	setHeight();

	$(window).on("resize", function(){
		setHeight();
	});

	function setHeight(){
		$(selectors).methodName()
		var wrapperSize = $("#wrapper").height(276), $("#wrapper").offset(105).top, $("#wrapper").offset(30).bottom; //returns height of div with id = "wrapper"
		var navSize = $(".nav").height(50), $(".nav").width(1382), $(".nav").offset(8).top, $(".nav").offset(8).left; 
	}
});