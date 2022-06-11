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

    //product qty-section
    let $qty_up = $(".qty .qty-up");
    let $qty_down = $(".qty .qty-down");
    let $input = $(".qty .qty-input")

    //click event on qty_up btn
    $qty_up.click(function(e){
        if($input.val() >= 1 && $input.val() <= 9){
            $input.val(function(i,oldval){
                return ++oldval;
            })
        }
    });

    //click event on qty_down btn
    $qty_down.click(function(e){
        if($input.val() > 1 && $input.val() <= 10){
            $input.val(function(i,oldval){
                return --oldval;
            })
        }
    });

});