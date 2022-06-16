<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <!--bootstrap cdn-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <!--owl carousel cdn-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!--font awsome-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!--custom css file-->
    <link rel="stylesheet" href="style.css">

    <?
        //require functions.php
        require('functions.php');
    ?>

    <?
        require('/datab')
    ?>

</head>
<body>
<header id="header">
    <div class=" text-center px-4 py-1 color-dirty_white-bg">
        <p class="font-rale font-size-12 text-black-50 my-1">5 Star Customer Ratings&nbsp&nbsp&nbsp&nbsp&nbsp | &nbsp&nbsp&nbsp&nbsp&nbspOverseas Delivery&nbsp&nbsp&nbsp&nbsp&nbsp | &nbsp&nbsp&nbsp&nbsp&nbspBest Quality Vehicles</p>
    </div>
    <nav class="navbar navbar-expand-lg navbar-dark color-gray-bg py-4">
        <div class="container-fluid">
            <img src=./Logos%20Revised%20Two.png alt="" width="220" height="55" class="d-inline-block align-text-mid mx-5 my-2 "></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav m-auto color-white font-rubik font-size-30">
                    <li class="nav-item">
                        <a class="nav-link active mx-5" aria-current="page" href="#">ABOUT</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link active mx-5" href="#">BLOG</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link active mx-5" href="#">STORE</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active mx-5" href="#">CONTACT</a>
                    </li>
                    <li class="right-side">

                    </li>
                </ul>
                <form action="#" class="font-size-20 font-rale">
                    <a href="#">
                        <span><i class="fa-solid fa-user color-white mx-3"></i></span>
                    </a>
                    <a href="#">
                        <span class="font-size-20 px-2 text-white mx-3"><i class="fa-solid fa-cart-flatbed"></i></span>
                        <span class="px-3 py-2 rounded-pill text-dark bg-light">0</span>
                    </a>

            </div>
        </div>
    </nav>
</header>

<main id="main">
