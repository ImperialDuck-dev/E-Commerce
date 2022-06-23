<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST'){
    if (isset($_POST['delete_cart'])){
        $deletedRecord = $Cart->deleteCart($_POST['item_id']);
    }

}

function asDollars($value)
{
    if ($value<0) return "-".asDollars(-$value);
    return '₱ ' . number_format($value, 2);
}
?>
<!-- Shopping cart  -->
<section id="cart" class="py-3">
    <div class="container-fluid w-75">
        <h5 class="font-baloo font-size-30">SHOPPING CART</h5>



        <!--  Shopping cart items  -->
        <div class="row">
            <div class="col-sm-9 py-3">
                <?php
                foreach($product->getCar_Data('cart') as $item):
                    $cart = $product->getProduct(($item['item_id']));
                    $subTotal[] = array_map(function ($item){
                ?>
                <!--  cart item  -->
                <div class="row border-top py-3 mt-3">
                    <div class="col-sm-2">
                        <img src="<?php echo $item['item_image']?>" style="height:100px"  alt="cart1" class="img-fluid">
                    </div>
                    <div class="col-sm-8">
                        <h5 class="font-baloo font-size-20"><?php echo $item['item_name']?></h5>
                        <small>by <?php echo $item['item_brand']?></small>
                        <!-- product rating -->
                        <div class="d-flex">
                            <a href="" class="px-2 font-rale font-size-14">20,534 ratings</a>
                        </div>
                        <!-- product qty -->
                        <div class="qty d-flex">
                            <div class="d-flex font-rale">
                                <button class="qty-up border bg-light" data-id="<?php echo $item['item_id'] ??  '0'?>"><i class="fas fa-angle-up"></i></button>
                                <input type="text" data-id="<?php echo $item['item_id']?>" class="qty-input border px-2 w-100 bg-light" disabled value="1" placeholder="1">
                                <button class="qty-down border bg-light" data-id="<?php echo $item['item_id'] ?? '0'?>"><i class="fas fa-angle-down"></i></button>
                            </div>
                            <form method="post">
                                <input type="hidden" value="<?php echo $item['item_id'] ?? 0;?>" name="item_id">
                                <button type="submit" name="delete_cart" class="btn font-baloo text-danger px-3 border-right">Delete</button>
                            </form>

                            <button type="submit" class="btn font-baloo text-danger">Save for Later</button>
                        </div>

                    </div>

                    <div class="col-sm-2 text-right">
                        <div class="font-size-20 text-danger font-baloo">
                            <span class ="product_price" data-id="<?php echo $item['item_id']?>"><?php echo $pricetotal=asDollars($item['item_price']);?></span>
                        </div>
                    </div>
                </div>


                <?php
                        return $item['item_price'];
                    },$cart); //closing array_map function
                endforeach;
                ?>
            </div>
            <div class="col-sm-3">
                <div class="sub-total border text-center mt-2">
                    <h6 class="font-size-12 font-rale text-success p-3"><i class="fas fa-check"></i>Your order is eligible for FREE DELIVERY</h6>
                    <div class="border-top py-4">
                        <h5 class="font-baloo font-size-20">Subtotal (<?php echo isset($subTotal) ? count($subTotal) : 0?> items)&nbsp;<span class="text-danger"></span><span class="text-danger" id="deal-price"><?php echo isset($subTotal) ? $Cart->getSum($subTotal) : 0;?></span></h5>
                        <button type="submit" class="btn-buy color-gray-bg color-white mx-3 font-baloo ">PROCEED TO BUY</button>
                    </div>
                </div>
            </div>

        </div>
</section>