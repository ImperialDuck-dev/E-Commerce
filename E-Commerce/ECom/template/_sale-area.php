<?php


shuffle($product_shuffle);


//request method post
if($_SERVER['REQUEST_METHOD'] == 'POST')
{
    if(isset($_POST['sale_submit']))
    {
        //call method addToCart
        $Cart->addToCart($_POST['user_id'],$_POST['item_id']);
    }

}
?>
<section id ="sale">
    <div class="container py-5 ">
        <h4 class="font-rubik text-center font-size-40 py-2">ON SALE</h4>
        <hr>
        <div class="owl-carousel owl-theme">
            <?php
            foreach($product_shuffle as $item){
                ?>
                <div class="cars py-2">
                    <div class="item font-rale">
                        <div class="d-flex flex-column">
                            <a href="<?php printf('%s?item_id=%s','product.php',$item['item_id'])?>"><img src="<?php echo $item['item_image_secondary']?>" alt="cars1" class="img-fluid mx-2 "></a>
                            <div class="text-center ">
                                <h6 class="font-baloo font-size-20"><?php echo $item['item_name']?></h6>
                                <div class="price py-2">
                                    <span class="font-size-20">&nbsp</span>
                                </div>
                                <div class="buy-now">
                                    <form method="post">
                                        <input type="hidden" name="item_id" value="<?php echo $item['item_id']?>">
                                        <input type="hidden" name="user_id" value="<?php echo 1?>">
                                        <?php
                                        if(in_array($item['item_id'],$Cart->getCartID($product->getCar_Data('cart')) ?? [])){
                                            echo '<button type="submit"  disabled class="font-baloo btn btn-dark font-size-12">IN THE CART</button>';
                                        }else{
                                            echo '<button type="submit" name="sale_submit" class="font-baloo btn btn-dark font-size-12">ADD TO CART</button>';
                                        }
                                        ?>

                                    </form>
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
