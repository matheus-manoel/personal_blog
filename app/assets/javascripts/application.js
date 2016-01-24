// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require typed

    $(function(){
        $(".element").typed({
            strings: ["<button type='button' class='btn btn-software-developer btn-lg sharp'>tech stuff.^2000</button>", 
            '<button type="button" class="btn btn-esports-fan btn-lg sharp">eSports.^2000</button>'],
            contentType: 'html',
            loop: true,
            typeSpeed: 0  
        });
    });

    $(document).ready(function() {
     var navpos = $('#mainnav').offset();
     console.log(navpos.top);
       $(window).bind('scroll', function() {
         if ($(window).scrollTop() > navpos.top - 1) {
           $('#mainnav').addClass('navbar-fixed-top');
          }
          else {
            $('#mainnav').removeClass('navbar-fixed-top');
          }
       });
     });

     $(window).scroll(function() {
       $(".slideanim").each(function(){
         var pos = $(this).offset().top;

         var winTop = $(window).scrollTop();
         if (pos < winTop + 600) {
           $(this).addClass("slide");
         }
       });
     });