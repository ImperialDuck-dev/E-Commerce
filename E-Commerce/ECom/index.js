$(document).ready(function(){

    $(".readmore-btn").on('click',function(){
        $(this).parent().toggleClass("showContent");

        var replaceText = $(this).parent().hasClass("showContent")? "Read Less" : "Read More";
        $(this).text(replaceText);
    });

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
            600:{
                items:3
            },
            100:{
                items:5
            }
        }
    });

    $("#blogs .owl-carousel").owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 3
            }
        }
    });

    var $grid = $("#grid").isotope({
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
    let $deal_price = $("#deal-price");
    //let $input = $(".qty .qty-input")

    //click event on qty_up btn
    $qty_up.click(function(e){

        let $input = $(`.qty-input[data-id='${$(this).data("id")}']`);
        let $price = $(`.product_price[data-id='${$(this).data("id")}']`);

        //change product price using ajax call
        $.ajax({url: "template/ajax.php", type: 'post',data: {itemid: $(this).data("id")},success: function (result){
        let obj = JSON.parse(result);
        let item_price = obj[0]['item_price'];

                if($input.val() >= 1 && $input.val() <= 9){
                    $input.val(function(i,oldval){
                        return ++oldval;
                    })

                    //increase product price
                    $price.text(parseInt(item_price * $input.val()).toFixed(2));

                    //set subtotal price
                    let subtotal = parseInt($deal_price.text()) + parseInt(item_price);
                    $deal_price.text(subtotal.toFixed(2));
                }



        }}); // closing ajax req



    });

    //click event on qty_down btn
    $qty_down.click(function(e){
        let $input = $(`.qty-input[data-id='${$(this).data("id")}']`);
        let $price = $(`.product_price[data-id='${$(this).data("id")}']`);

        //change product price using ajax call
        $.ajax({url: "template/ajax.php", type: 'post',data: {itemid: $(this).data("id")},success: function (result){
                let obj = JSON.parse(result);
                let item_price = obj[0]['item_price'];

                if($input.val() > 1 && $input.val() <= 10){
                    $input.val(function(i,oldval){
                        return --oldval;
                    })
                    //increase product price
                    $price.text(parseInt(item_price * $input.val()).toFixed(2));

                    //set subtotal price
                    let subtotal = parseInt($deal_price.text()) - parseInt(item_price);
                    $deal_price.text(subtotal.toFixed(2));
                }



            }}); // closing ajax req

    });

});