<?php
//require MYSQL connection
include ('database/DBController.php');

//require car class
include ('database/cars.php');

//DBController object
$db = new DBController();

//Car object
$product = new cars($db);
print_r($product->getCar_Data());
?>
