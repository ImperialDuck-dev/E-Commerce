<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Dealership</title>

    <!-- Bootstrap CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <!-- Owl-carousel CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha256-UhQQ4fxEeABh4JrcmAJ1+16id/1dnlOEVCFOxDef9Lw=" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha256-kksNxjDRxd/5+jGurZUJd1sdR2v+ClrCl3svESBaJqw=" crossorigin="anonymous" />

    <!-- font awesome icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" integrity="sha256-h20CPZ0QyXlBuAw7A+KluUYx/3pK+c7lYEpqLTlxjYQ=" crossorigin="anonymous" />

    <!-- Custom CSS file -->
    <link rel="stylesheet" href="style.css">

    <?php
    // require functions.php file
    require ('functions.php');
    ?>

</head>
<body>

<!-- start #header -->
<header id="header">
    <div class="text-center px-4 py-1 color-dirty_white-bg">
        <p class="font-rale font-size-12 text-black-50 my-1" >5 Star Customer Ratings&nbsp&nbsp&nbsp&nbsp&nbsp | &nbsp&nbsp&nbsp&nbsp&nbspOverseas Delivery&nbsp&nbsp&nbsp&nbsp&nbsp | &nbsp&nbsp&nbsp&nbsp&nbspBest Quality Vehicles</p>
    </div>

    <!-- Primary Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark color-gray-bg py-3">
        <a class="navbar-brand" href="index.php"><img src=/Logos%20Revised%20Two.png  alt="" width="220" height="55" class="d-inline-block align-text-mid mx-5 my-2 "></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav m-auto color-white font-rubik font-size-30">
                <li class="nav-item active">
                    <a class="nav-link mx-5" href="#">ABOUT</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link mx-5" href="#">BLOG</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link mx-5" href="store.php">STORE </a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link mx-5" href="#">CONTACT</a>
                </li>
            </ul>
            <form action="#" class="font-size-20 font-rale">
                <a href="#">
                    <span><i class="fa-solid fa-user color-white mx-3"></i></span>
                </a>
                <a href="cart.php">
                    <span class="font-size-20 px-2 text-white mx-3"><i class="fa-solid fa-cart-flatbed"></i></span>
                    <span class="px-3 py-2 rounded-pill text-dark bg-light font-size-16 font-baloo"><?php echo count($product->getCar_Data('cart'));?></span>
                </a>
            </form>
        </div>
    </nav>
    <!-- !Primary Navigation -->

</header>
<!-- !start #header -->

<!-- start #main-site -->
<main id="main-site">