// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready( function(){ 
    setInterval(function(){ $('#refresh').load('/cocinero_ajax'); }, 3000);})
$(function(){
      // Activate PJAX on ul.menu links
      //   // Response will be loaded into #main element on the page
           $('.menu_l').pjax('#yield')
           $('.admin_cat a').pjax('#yield')
            })
