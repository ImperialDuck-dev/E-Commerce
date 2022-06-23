<?php
//require MYSQL connection
require ('D:\Xampp\htdocs\project\E-Commerce\E-Commerce\ECom\database\DBController.php');

//require car class
require ('D:\Xampp\htdocs\project\E-Commerce\E-Commerce\ECom\database\cars.php');

//require cart class
require ('D:\Xampp\htdocs\project\E-Commerce\E-Commerce\ECom\database\cart.php');

//DBController object
$db = new DBController();

//Car object
$product = new cars($db);
if(isset($_POST['itemid']))
{
    $result = $product->getProduct($_POST['itemid']);
    echo json_encode($result);
}