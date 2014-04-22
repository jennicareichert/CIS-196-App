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
	setWidth();

	$(window).on("resize", function(){
		setHeight();
		setWidth();
	});

	function setHeight(){
		//$(selectors).methodName()
		var windowHeight = $(window).height();
		var distFromTop = $("#wrapper").offset().top;
		var wrapperHeight = windowHeight - distFromTop - 30;
		$("#wrapper").height(wrapperHeight);
		//$("#wrapper").offset(30).bottom; //returns height of div with id = "wrapper"
		//var navSize = $(".nav").height(50), $(".nav").width(1382), $(".nav").offset(8).top, $(".nav").offset(8).left; 
	}

	function setWidth(){
		console.log("here");
		if ($(window).width() <= 1010) 
		{
			$(".nav .dropdown").removeClass("hide");
			$(".dashboard").addClass("hide");
		}else{
			$(".nav .dropdown").addClass("hide");
			$(".dashboard").removeClass("hide");
		}
	}
});

$(document).on("page:load", function(){
	setHeight();
	setWidth();

	$(window).on("resize", function(){
		setHeight();
		setWidth();
	});

	function setHeight(){
		//$(selectors).methodName()
		var windowHeight = $(window).height();
		var distFromTop = $("#wrapper").offset().top;
		var wrapperHeight = windowHeight - distFromTop - 30;
		$("#wrapper").height(wrapperHeight);
		//$("#wrapper").offset(30).bottom; //returns height of div with id = "wrapper"
		//var navSize = $(".nav").height(50), $(".nav").width(1382), $(".nav").offset(8).top, $(".nav").offset(8).left; 
	}

	function setWidth(){
		console.log("here");
		if ($(window).width() <= 1010) 
		{
			$(".nav .dropdown").removeClass("hide");
			$(".dashboard").addClass("hide");
		}else{
			$(".nav .dropdown").addClass("hide");
			$(".dashboard").removeClass("hide");
		}
	}
});