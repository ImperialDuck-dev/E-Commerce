<?php
//require MYSQL connection
require ('D:\E-Commerce\E-Commerce\ECom\database\DBController.php');

//require car class
require ('D:\E-Commerce\E-Commerce\ECom\database\cars.php');

//require cart class
require ('D:\E-Commerce\E-Commerce\ECom\database\cart.php');


//DBController object
$db = new DBController();

//Car object
$product = new cars($db);
$product_shuffle = $product->getCar_Data();

//cart object
$Cart = new cart($db);



?>


<?php