<!-- Shopping cart  -->
<section id="cart" class="py-3">
    <div class="container-fluid w-75">
        <h5 class="font-baloo font-size-20">Shopping Cart</h5>



        <!--  Shopping cart items  -->
        <div class="row">
            <div class="col-sm-9">
                <!--  cart item  -->
                <div class="row border-top py-3 mt-3">
                    <div class="col-sm-2">
                        <img src="./assets/cars/HONDA%20ACCORD.jpg" style="height:120px" alt="cart1" class="img-fluid">
                    </div>
                    <div class="col-sm-8">
                        <h5 class="font-baloo font-size-20">Honda Accord</h5>
                        <small>by Honda</small>
                        <!-- product rating -->
                        <div class="d-flex">
                            <div class="rating text-warning font-size-12">
                            </div>
                            <a href="#"class ="px-2 font-rale font-size-14">20,534 ratings</a>
                        </div>

                        <!-- product qty -->
                        <div class="qty d-flex">
                            <div class="d-flex font-rale">
                                <button class="qty-up border bg-light"data-id="pro1"><i class="fas fa-angle-up"></i></button>
                                <input type="text" class="qty-input border px-2 w-100 bg-light" disabled value="1" placeholder="1" data-id="pro1">
                                <button class="qty-down border bg-light" data-id="pro1"><i class="fas fa-angle-down"></i></button>
                            </div>
                            <button type="submit" class="btn font-baloo text-danger px-3 border-right">Delete</button>
                            <button type="submit" class="btn font-baloo text-danger">Save for Later</button>
                        </div>
                    </div>

                    <div class="col-sm-2 text-right">
                        <div class="font-size-20 text-danger font-baloo">
                            ₱<span>73,852.01</span>
                        </div>
                    </div>
                </div>



            </div>
            <div class="col-sm-3">
                <div class="sub-total border text-center mt-2">
                    <h6 class="font-size-12 font-rale text-success"><i class="fas fa-check"></i>Your order is eligible for FREE DELIVERY</h6>
                    <div class="border-top py-4">
                        <h5 class="font-baloo font-size-20">Subtotal (2 items)&nbsp;<span class="text-danger">₱</span><span class="text-danger" id="deal-price">73,852.01</span></h5>
                        <button type="submit" class="btn btn-warning m-3">Proceed to Buy</button>
                    </div>
                </div>
            </div>
            <div class="col-sm-9">
                <!--  cart item  -->
                <div class="row border-top py-3 mt-3">
                    <div class="col-sm-2">
                        <img src="./assets/cars/HONDA%20ACCORD.jpg" style="height:120px" alt="cart1" class="img-fluid">
                    </div>
                    <div class="col-sm-8">
                        <h5 class="font-baloo font-size-20">Honda Accord</h5>
                        <small>by Honda</small>
                        <!-- product rating -->
                        <div class="d-flex">

                            <a href="#"class ="px-2 font-rale font-size-14">20,534 ratings</a>
                        </div>

                        <!-- product qty -->
                        <div class="qty d-flex">
                            <div class="d-flex font-rale">
                                <button class="qty-up border bg-light"><i class="fas fa-angle-up"></i></button>
                                <input type="text" class="qty-input border px-2 w-100 bg-light" disabled value="1" placeholder="1">
                                <button class="qty-down border bg-light"><i class="fas fa-angle-down"></i></button>
                            </div>
                            <button type="submit" class="btn font-baloo text-danger px-3 border-right">Delete</button>
                            <button type="submit" class="btn font-baloo text-danger">Save for Later</button>
                        </div>
                    </div>

                    <div class="col-sm-2 text-right">
                        <div class="font-size-20 text-danger font-baloo">
                            ₱<span>73,852.01</span>
                        </div>
                    </div>
                </div>

            </div>



        </div>
</section>