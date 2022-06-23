<?php
ob_start();
//include header.php
include('header.php');
?>

<?php

/*   include cart items if it is not empty   */
count($product->getCar_Data('cart')) ? include('template/_cart-template.php') : include('template/notFound/cartNotFound.php');


/*   include sale section   */
include('template/_sale-area.php');

?>

<?php
//include footer.php
include('footer.php');
?>
