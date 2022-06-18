
<?php
    ob_start();
    //include header.php
    include('header.php');
?>

<?php
    /*   include banner section   */
    include('template/_banner-area.php');

    /*   include intro section    */
    include('template/_introduction.php');

    /*   include ads section    */
    include('template/_banner-ads.php');

    /*   include blogs section    */
    include('template/_blogs.php');

?>

<?php
//include footer.php
include('footer.php');
?>

