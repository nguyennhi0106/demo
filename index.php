<?php
    include 'Model/giohang.php';
    include 'Model/menu.php';

    session_start();

    set_include_path(get_include_path().PATH_SEPARATOR.'Model/');
    spl_autoload_extensions('.php');
    spl_autoload_register();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://kit.fontawesome.com/484e125510.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="Content/css/header.css">
    <link rel="stylesheet" href="Content/css/login.css">
    <link rel="stylesheet" href="Content/css/search.css">
    <link rel="stylesheet" href="Content/css/home.css">
    <link rel="stylesheet" href="Content/css/sanpham.css">
    <link rel="stylesheet" href="Content/css/chitietsanpham.css">
    <link rel="stylesheet" href="Content/css/dangky.css">
    <link rel="stylesheet" href="Content/css/footer.css">

    <title>Mini Store</title>
</head>
<body>

    <?php
        if(!isset($_GET['act']) || $_GET['act'] != 'search'){
            include 'View/header.php';
        }
    ?>

    <?php
        $ctrl = "home";
        if(isset($_GET['action'])){
            $ctrl = $_GET['action'];
        }
        include "Controller/".$ctrl.".php";
    ?>
    
    <?php
        if(!isset($_GET['act']) || $_GET['act'] != 'search'){
            include 'View/footer.php';
        }
    ?>
    
    
</body>
</html>