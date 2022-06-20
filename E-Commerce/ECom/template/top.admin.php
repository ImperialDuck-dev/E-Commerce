<?php
require('./template/connections.admin.php');
require('./template/functions.admin.php');

if(isset( $_SESSION['ADMIN_LOGIN']) && $_SESSION['ADMIN_USERNAME'] != '') {

}else{
    header('location:admin-login.php');
    die();
}

?>
<!doctype html>
<html class="no-js" lang="">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Dashboard Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="./assets/css/normalize.css">
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="./assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="./assets/css/themify-icons.css">
    <link rel="stylesheet" href="./assets/css/pe-icon-7-filled.css">
    <link rel="stylesheet" href="./assets/css/flag-icon.min.css">
    <link rel="stylesheet" href="./assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="./assets/css/style.css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
</head>
<body>
<aside id="left-panel" class="left-panel">
    <nav class="navbar navbar-expand-sm navbar-default">
        <div id="main-menu" class="main-menu collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="menu-title">Admin Panel</li>
                <li class="menu-item-has-children dropdown">
                    <a href="admin-cars.php" > Cars Directory </a>
                </li>
                <li class="menu-item-has-children dropdown">
                    <a href="admin-orders.php" > Orders Directory</a>
                </li>
                <li class="menu-item-has-children dropdown">
                <a href="admin-users.php" > Users Directory</a>
                </li>
            </ul>
        </div>
    </nav>
</aside>
<div id="right-panel" class="right-panel">
    <header id="header" class="header color-gray-bg">
        <div class="top-left">
            <div class="navbar-header ">
                <a class="navbar-brand " href="#"><img src="./Logos%20Black.png " alt="Logo"></a>
                <a class="navbar-brand hidden" href="#"><img src="#" alt="Logo"></a>
            </div>
        </div>
        <div class="top-right">
            <div class="header-menu">
                <a class="nav-link" href="./admin-logout.php">Logout</a>
            </div>
        </div>
    </header>