<?php
//require MYSQL connection
require ('database/DBController.php');

//require car class
require ('database/cars.php');


//DBController object
$db = new DBController();


//Car object
$product = new cars($db);

print_r($product->getCar_Data());