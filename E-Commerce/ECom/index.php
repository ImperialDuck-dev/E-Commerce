
<?php
    ob_start();
    //include header.php
    include('header.php');
?>

<?php
    /*   include banner section   */
    include('template/_banner-area.php');

    /*   include sale section   */
    include('template/_sale-area.php');

    /*   include offer section   */
    include('template/_offer-area.php');


?>

<?php
//include footer.php
include('footer.php');
?>

