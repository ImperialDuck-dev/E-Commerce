<?php
//require MYSQL connection
require ('database/DBController.php');

//require car class
require ('database/cars.php');


//DBController object
$db = new DBController();

//Car object
$product = new cars($db);
$product_shuffle = $product->getCar_Data();

print_r($product->getCar_Data());

    $product_shuffle=$product->getCar_Data();
?>
<section id ="sale">
    <div class="container py-5 color-dirty_white-bg">
        <h4 class="font-rubik text-center font-size-40 py-2">ON SALE</h4>
        <hr>
        <div class="owl-carousel owl-theme">
            <?php
            foreach($product_shuffle as $item){
            ?>
            <div class="cars py-2">
                <div class="item font-rale">
                    <div class="d-flex flex-column">
                        <a href="#"><img src="<?php echo $item['item_image_secondary']?>" alt="cars1" class="img-fluid"></a>
                        <div class="text-center ">
                            <h6>TOYOTA CRUISER</h6>
                            <div class="price py-2">
                                <span>$3000</span>
                            </div>
                                    <div class="buy-now">
                                        <a href="#"><button type="submit" class="font-baloo btn btn-dark font-size-12">PROCEED TO BUY</button></a>
                                    </div>
                                </div>
                    </div>
                </div>
            </div>
                    <?php
            }
            ?>

        </div>
    </div>
</section>
