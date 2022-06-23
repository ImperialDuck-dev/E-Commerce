<?php
//require MYSQL connection
require_once ('D:\Xampp\htdocs\project\E-Commerce\E-Commerce\ECom\database\DBController.php');

//require car class
require_once ('D:\Xampp\htdocs\project\E-Commerce\E-Commerce\ECom\database\cars.php');

//require cart class
require_once ('D:\Xampp\htdocs\project\E-Commerce\E-Commerce\ECom\database\cart.php');

//DBController object
$db = new DBController();

//Car object
$product = new cars($db);
?>
<!-- Shopping cart  -->
<section id="cart" class="py-3">
    <div class="container-fluid w-75">
        <h5 class="font-baloo font-size-30">SHOPPING CART</h5>



        <!--  Shopping cart items  -->
        <div class="row">
            <div class="col-sm-9 py-3">
                    <!-- empty cart -->
                        <div class="row border-top py-3 mt-3">
                            <div class="col-sm-12">
                                <img src="./empty-cart.png" alt="">
                                <p class="font-baloo font-size-20 color-black">EMPTY CART</p>
                            </div>
                        </div>

                        <!--  cart item  -->




            </div>




        </div>
</section>