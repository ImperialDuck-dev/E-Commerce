$(document).ready(function(){


    $("#banner .owl-carousel").owlCarousel({
        dots: true,
        items: 1
    });

    $("#sale .owl-carousel").owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        responsive: {
            0:{
                items:1
            },
            100:{
                items:3
            },
            500:{
                items:5
            }
        }
    });
    
    var $grid = $(".grid").isotope({
      itemSelector:'.grid-cars',
      layoutMode:'fitRows'
    });

    $(".button-group").on("click","button",function(){
        var filterVal=$(this).attr('data-filter');
        $grid.isotope({filter:filterVal});
    })
});