<?php

$product_shuffle = $product->getCar_Data('cars_secondary');

//request method post
if($_SERVER["REQUEST_METHOD"] == "POST")
{
    if(isset($_POST["offer_submit"]))
    {
        //call method addToCart
        $Cart->addToCart($_POST['user_id'],$_POST['item_id']);
    }

}
    $in_Cart = $Cart->getCartID($product->getCar_Data('cart'));

?>

<section id="offer">
    <div class="container my-3">
        <h4 class="font-rubik font-size-40 text-center">SPECIAL OFFER</h4>
        <div id="filters"class="button-group text-right">
            <button class="btn all" type="button" data-filter="*">ALL CARS</button>
            <button class="btn" type="button" data-filter=".MPV">MPVs</button>
            <button class="btn" type="button" data-filter=".VANS">Vans & Pick-ups</button>
            <button class="btn" type="button" data-filter=".HATCHBACKS">Hatchbacks & Sedans</button>
        </div>

        <div class id="grid">
            <?php array_map(function ($item) use($in_Cart){?>
            <div class="grid-cars border <?php echo $item['item_brand'];?>">
                <div class="cars py-2" style="width:271px;">
                    <div class="item font-rale">
                        <a href="<?php printf('%s?item_id=%s','product.php',$item['item_id'])?>"><img src="<?php echo $item['item_image']?>" alt="cars1" class="img-fluid"</a>
                        <div class="text-center ">

                            <div class="price py-2">
                            </div>
                            <form method="post">
                                <input type="hidden" name="item_id" value="<?php echo $item['item_id']?>">
                                <input type="hidden" name="user_id" value="<?php echo 1?>">
                                <?php
                                if(in_array($item['item_id'],$in_Cart ?? [])){
                                    echo '<button type="submit"  disabled class="font-baloo btn btn-dark font-size-12">IN THE CART</button>';
                                }else{
                                    echo '<button type="submit" name="offer_submit" class="font-baloo btn btn-dark font-size-12">ADD TO CART</button>';
                                }
                                ?>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <?php },$product_shuffle) ?>
        </div>

    </div>

</section>