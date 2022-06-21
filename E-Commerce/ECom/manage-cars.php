<?php
require('./template/top.admin.php');
$categories_id='';
$name='';
$brand	='';
$mrp='';
$price='';
$qty='';
$image='';
$register	='';
$short_desc	='';
$description	='';
$msg='';
$image_required='required';
if(isset($_GET['id']) && $_GET['id']!=''){
    $image_required='';
    $id=get_safe_value($con,$_GET['id']);
    $res=mysqli_query($con,"select * from `montemayor car dealership`.cars_products where item_id='$id'");
    $check=mysqli_num_rows($res);
    if($check>0){
        $row=mysqli_fetch_assoc($res);
        $categories_id=$row['category_id'];
        $brand=$row['item_brand'];
        $name=$row['item_name'];
        $mrp=$row['mr_price'];
        $price=$row['item_price'];
        $qty=$row['qty'];
        $register=$row['item_register'];
        $short_desc=$row['starting_description'];
        $description=$row['long_description'];

    }else{
        header('location:product.php');
        die();
    }
}
if(isset($_POST['submit'])){
    $categories_id=get_safe_value($con,$_POST['category_id']);
    $name=get_safe_value($con,$_POST['item_name']);
    $brand=get_safe_value($con,$_POST['item_brand']);
    $mrp=get_safe_value($con,$_POST['mr_price']);
    $price=get_safe_value($con,$_POST['item_price']);
    $qty=get_safe_value($con,$_POST['qty']);
    $register=get_safe_value($con,$_POST['item_register']);
    $short_desc=get_safe_value($con,$_POST['starting_description']);
    $description=get_safe_value($con,$_POST['long_description']);



    $res=mysqli_query($con,"select * from `montemayor car dealership`.cars_products where item_id='$id'");
    $check=mysqli_num_rows($res);
    if($check>0){
        if(isset($_GET['id']) && $_GET['id']!=''){
            $getData=mysqli_fetch_assoc($res);
            if($id==$getData['item_id']){

            }else{
                $msg="Product already exist";
            }
        }else{
            $msg="Product already exist";
        }
    }


    if($_GET['id']==0){
        if($_FILES['image']['type']!='image/png' && $_FILES['image']['type']!='image/jpg' && $_FILES['image']['type']!='image/jpeg'){
            $msg="Please select only png,jpg and jpeg image format";
        }
    }else{
        if($_FILES['image']['type']!=''){
            if($_FILES['image']['type']!='image/png' && $_FILES['image']['type']!='image/jpg' && $_FILES['image']['type']!='image/jpeg'){
                $msg="Please select only png,jpg and jpeg image format";
            }
        }
    }

    if($msg==''){
        if(isset($_GET['id']) && $_GET['id']!=''){
            if($_FILES['image']['name']!=''){
                $image=rand(111111111,999999999).'_'.$_FILES['image']['name'];
                move_uploaded_file($_FILES['image']['tmp_name'],$image);
                $update_sql="update `montemayor car dealership`.cars_products set category_id='$categories_id',item_name='$name',mr_price='$mrp',item_price='$price',qty='$qty',starting_description='$short_desc',long_description='$description',item_image='$image' where item_id='$id'";
            }else{
                $update_sql="update `montemayor car dealership`.cars_products set category_id='$categories_id',item_name='$name',mr_price='$mrp',item_price='$price',qty='$qty',starting_description='$short_desc',long_description='$description',item_image='$image' where item_id='$id'";
            }
            mysqli_query($con,$update_sql);
        }else{
            $image=rand(111111111,999999999).'_'.$_FILES['image']['name'];
            move_uploaded_file($_FILES['image']['tmp_name'],$image);
            mysqli_query($con,"insert into `montemayor car dealership`.cars_products(category_id,item_brand,item_name,mr_price,item_price,qty,item_register,starting_description,long_description,status,item_image) values('$categories_id','$brand','$name','$mrp','$price','$qty','$register','$short_desc','$description',1,'$image')");
        }
        header('location:product.php');
        die();
    }

}
?>
<section id="car-edit">
    <div class="content pb-0">
        <div class="animated fadeIn">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header"><strong>Car</strong><small> Form</small></div>
                        <form method="post" enctype="multipart/form-data">
                            <div class="card-body card-block">
                                <div class="form-group">
                                    <label for="categories" class=" form-control-label">Car Name</label>
                                    <input type="text" name="name" placeholder="Enter product name" class="form-control" required value="<?php echo $name?>">
                                </div>

                                <div class="form-group">
                                    <label for="categories" class=" form-control-label">Brand Name</label>
                                    <input type="text" name="brand" placeholder="Enter brand name" class="form-control" required value="<?php echo $brand?>">
                                </div>

                                <div class="form-group">
                                    <label for="categories" class=" form-control-label">MRP</label>
                                    <input type="text" name="mrp" placeholder="Enter product mrp" class="form-control" required value="<?php echo $mrp?>">
                                </div>

                                <div class="form-group">
                                    <label for="categories" class=" form-control-label">Price</label>
                                    <input type="text" name="price" placeholder="Enter product price" class="form-control" required value="<?php echo $price?>">
                                </div>

                                <div class="form-group">
                                    <label for="categories" class=" form-control-label">Qty</label>
                                    <input type="text" name="qty" placeholder="Enter qty" class="form-control" required value="<?php echo $qty?>">
                                </div>

                                <div class="form-group">
                                    <label for="categories" class=" form-control-label">Image</label>
                                    <input type="file" name="image" class="form-control" <?php echo  $image_required?>>
                                </div>

                                <div class="form-group">
                                    <label for="categories" class=" form-control-label">Register</label>
                                    <input type="text" name="register" placeholder="Enter register" class="form-control" required value="<?php echo $register?>">
                                </div>

                                <div class="form-group">
                                    <label for="categories" class=" form-control-label">Short Description</label>
                                    <textarea name="short_desc" placeholder="Enter product short description" class="form-control" required><?php echo $short_desc?></textarea>
                                </div>

                                <div class="form-group">
                                    <label for="categories" class=" form-control-label">Description</label>
                                    <textarea name="description" placeholder="Enter product description" class="form-control" required><?php echo $description?></textarea>
                                </div>


                                <button id="payment-button" name="submit" type="submit" class="btn btn-lg btn-info btn-block">
                                    <span id="payment-button-amount">Submit</span>
                                </button>
                                <div class="field_error"><?php echo $msg?></div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<?php
require('./template/footer.admin.php');
?>