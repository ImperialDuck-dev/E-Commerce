<?php
//require MYSQL connection
require ('database/DBController.php');

//require car class
require ('database/cars.php');

//require cart class
require ('database/cart.php');





//DBController object
$db = new DBController();

//Car object
$product = new cars($db);
$product_shuffle = $product->getCar_Data();

//cart object
$Cart = new cart($db);

?>
