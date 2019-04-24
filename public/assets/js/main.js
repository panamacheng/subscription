/* ----------------------------------------------------------------------------------------
 * Author        : Mehedi
 * Template Name : Mehedi - Personal Portfolio Template
 * File          : Custom JS
 * Version       : 3.0
 * ---------------------------------------------------------------------------------------- */
(function ($) {
    "use strict";

    var $window = $(window);


    /* Top Menu */
    $('#navigation ul li a').on('click', function () {
        var id = $(this).attr('href');
        var h = parseFloat($(id).offset().top);
        $('body,html').stop().animate({
            scrollTop: h - 70
        }, 800);
        $(".navbar-collapse").collapse("hide");

        return false;
    });

    /* Sticky header */
    $window.scroll(function () {
        if ($window.scrollTop() > 200) {
            $('.navbar').addClass('sticky-header');
        } else {
            $('.navbar').removeClass('sticky-header');
        }
    });

    $('#main-nav .navbar-nav a').on('click', function () {
        $('#main-nav .navbar-nav').find('li.active').removeClass('active');
        $(this).parent('li').addClass('active');
    });

    /*=====Scroll Smoth JS====*/

    $('a[href*=#]:not([href=#])').click(function () {
        if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {
            var target = $(this.hash);
            target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
            if ($(window).width() < 768) {
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top - $('.navbar-header').outerHeight(true) + 1
                    }, 1000);
                    return false;
                }
            } else {
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top - $('.navbar').outerHeight(true) + 1
                    }, 1000);
                    return false;
                }
            }

        }
    });

    /*Blog Slider*/
    $(".latest_news_slider").owlCarousel({
        nav: false,
        loop: true,
        dots: false,
        margin: 25,
        autoplay: true,
        items: 3,
        responsive: {
            0: {
                items: 1,

            },
            600: {
                items: 2,

            },
            1000: {
                items: 3,
            }
        },
    });


})(jQuery);
