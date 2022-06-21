<?php
require('./template/top.admin.php');
$categories_id='';
$name='';
$brand	='';
$msg='';
$image_required='required';
if(isset($_GET['id']) && $_GET['id']!=''){
    $image_required='';
    $id=get_safe_value($con,$_GET['id']);
    $res=mysqli_query($con,"select * from `montemayor car dealership`.cars_secondary where item_id='$id'");
    $check=mysqli_num_rows($res);
    if($check>0){
        $row=mysqli_fetch_assoc($res);
        $name=$row['item_name'];

    }else{
        header('location:admin-offer.php');
        die();
    }
}
if(isset($_POST['submit'])){
    $name=get_safe_value($con,$_POST['name']);



    $res=mysqli_query($con,"select * from `montemayor car dealership`.cars_secondary where item_id='$id'");
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
                $update_sql="update `montemayor car dealership`.cars_secondary set item_name='$name',item_image='$image' where item_id='$id'";
            }else{
                $update_sql="update `montemayor car dealership`.cars_secondary set item_name='$name',item_image='$image' where item_id='$id'";
            }
            mysqli_query($con,$update_sql);
        }else{
            $image=rand(111111111,999999999).'_'.$_FILES['image']['name'];
            move_uploaded_file($_FILES['image']['tmp_name'],$image);
            mysqli_query($con,"insert into `montemayor car dealership`.cars_secondary(item_name,status,item_image) values('$name',1,'$image')");
        }
        header('location:admin-offer.php');
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
                                    <label for="categories" class=" form-control-label">Image</label>
                                    <input type="file" name="image" class="form-control" <?php echo  $image_required?>>
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