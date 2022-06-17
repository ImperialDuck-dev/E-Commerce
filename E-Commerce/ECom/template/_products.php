<?php


function asDollars($value)
{
    if ($value<0) return "-".asDollars(-$value);
    return '₱ ' . number_format($value, 2);
}
$item_id= $_GET['item_id'] ?? 1;
foreach ($product->getCar_Data('cars_products') as $item):
        if($item['item_id']==$item_id):

            if($_SERVER["REQUEST_METHOD"] == "POST")
            {
                if(isset($_POST["product_submit"]))
                {
                    //call method addToCart
                    $Cart->addToCart($_POST['user_id'],$_POST['item_id']);
                }

            }
            $in_Cart = $Cart->getCartID($product->getCar_Data('cart'));

            ?>

    ?>

<section id ="product" class ="py-3">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <img src="<?php echo $item['item_image']?>"  alt="product" class="img-fluid">
                <div class="form-row pt-4 font-size-16 font-ballo">
                    <div class="col">
                        <button type="submit" class="btn-buy color-gray-bg color-white font-baloo form-control">PROCEED TO BUY</button>
                    </div>
                    <div class="col">
                        <form method="post">
                            <input type="hidden" name="item_id" value="<?php echo $item['item_id']?>">
                            <input type="hidden" name="user_id" value="<?php echo 1?>">
                            <?php
                            if(in_array($item['item_id'],$Cart->getCartID($product->getCar_Data('cart')) ?? [])){
                                echo '<button type="submit" disabled class="product_submit color-black-bg form-control font-baloo">IN THE CART</button>';
                            }else{
                                echo '<button type="submit" name="product_submit" class="color-dirty_white-bg form-control font-baloo">ADD TO CART</button>';
                            }
                            ?>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 py-5">
                <h5 class="font-ballo font-size-20 " ><?php echo $item['item_name']?></h5>
                <small>by <?php echo $item['item_brand']?></small>
                <div class="d-flex">
                    <a href="#"class ="px-2 font-rale font-size-14">20,534 ratings | 1000+ answered questions</a>
                </div>
                <hr class ="m-0">

                <!--  product price  -->
                <table class="my-3">
                    <tr class="font-rale font-size-14">
                        <td>Deal Price:</td>
                        <td class="font-size-20 text-danger"><span><?php echo $pricetotal=asDollars($item['item_price']);?></span><small class="text-dark font-size-12">&nbsp;&nbsp;inclusive of all taxes</small></td>
                    </tr>
                </table>


                <?php
                /*

                <!--  color  -->
                <div class="row">
                    <div class="col-6">
                        <div class="color my-3">
                            <div class="d-flex justify-content-between">
                                <h6 class="font-baloo">Color:</h6>
                                <div class="p-2 color-primary-bg rounded-circle"><button class="btn font-size-14"></button></div>
                                <div class="p-2 color-gray-bg rounded-circle"><button class="btn font-size-14"></button></div>
                                <div class="p-2 color-second-bg rounded-circle"><button class="btn font-size-14"></button></div>
                            </div>

                        </div>
                    </div>
                    <!-- quantity -->
                    <div class="col-6">
                        <div class="qty d-flex">
                            <h6 class="font-baloo">Qty</h6>
                            <div class="px-4 d-flex font-rale">
                                <button class="qty-up border bg-light" data-id="pro1"><i class="fas fa-angle-up"></i></button>
                                <input type="text" class="qty-input border px-2 w-50 bg-light" disabled value="1" placeholder="1" data-id="pro1">
                                <button class="qty-down border bg-light" data-id="pro1"><i class="fas fa-angle-down"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- downpayment -->
                <div class="size my-3">
                    <h6 class="font-baloo">Downpayment:</h6>
                    <div class="d-flex justify-content-between w-75">
                        <div class="div-font-rubik border p-2">
                            <button class="btn p-0 font-size-14">15%</button>
                        </div>
                        <div class="div-font-rubik border p-2">
                            <button class="btn p-0 font-size-14">20%</button>
                        </div>
                        <div class="div-font-rubik border p-2">
                            <button class="btn p-0 font-size-14">30%</button>
                        </div>
                        <div class="div-font-rubik border p-2">
                            <button class="btn p-0 font-size-14">40%</button>
                        </div>
                        <div class="div-font-rubik border p-2">
                            <button class="btn p-0 font-size-14">50%</button>
                        </div>
                    </div>
                </div>
                <!-- months -->
                <div class="size my-3">
                    <h6 class="font-baloo">Months:</h6>
                    <div class="d-flex justify-content-between w-25">
                        <div class="div-font-rubik border p-2">
                            <button class="btn p-0 font-size-14">36</button>
                        </div>
                        <div class="div-font-rubik border p-2">
                            <button class="btn p-0 font-size-14">48</button>
                        </div>
                        <div class="div-font-rubik border p-2">
                            <button class="btn p-0 font-size-14">60</button>
                        </div>
                    </div>
                </div>
                */
            ?>

                <!-- policy  -->
                <div id="policy">
                    <div class="d-flex">
                        <div class="return text-center mr-5">
                            <div class="font-size-20 my-2 color-second">
                                        <span class="fas fa-retweet border p-3 rounded-pill">
                                        </span>
                            </div>
                            <a href="#" class ="font-rale font-size-12">10 Days<br>Replacement</a>
                        </div>
                        <div class="return text-center mr-5">
                            <div class="font-size-20 my-2 color-second">
                                        <span class="fas fa-truck border p-3 rounded-pill">
                                        </span>
                            </div>
                            <a href="#" class ="font-rale font-size-12">Fast Delivery<br>Guaranteed</a>
                        </div>
                        <div class="return text-center mr-5">
                            <div class="font-size-20 my-2 color-second">
                                        <span class="fas fa-check-double border p-3 rounded-pill">
                                        </span>
                            </div>
                            <a href="#" class ="font-rale font-size-12">1 Week<br>Free Service</a>
                        </div>
                    </div>

                </div>

                <!-- order details  -->
                <div id="order_details" class="font-rale d-flex flex-column text-dark">
                    <small>Delivery by: Mar-29 - Apr 1</small>
                    <small>Sold by Montemayor Car Dealership</small>
                    <small><i class="fas fa-map-marker-alt color-primary"></i>&nbsp;&nbsp;Deliver to Customer - 69690</small>
                </div>
            </div>
        </div>
        <div class="col-12">
            <h6 class="font-rubik">Product Description</h6>
            <hr>
            <p class="font-rale font-size-14"><?php echo $item['starting_description']?></p>
            <p class="font-rale font-size-14"><?php echo $item['long_description']?></p>
        </div>
    </div>

    </div>
</section>

<?php
        endif;
        endforeach;
        ?>