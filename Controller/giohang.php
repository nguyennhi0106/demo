<?php
$action = "giohang";
if(isset($_GET['act'])){
    $action = $_GET['act'];
}
switch ($action) {
    case "giohang":
        include "View/giohang.php";
        break;
    case "addsp":
        $masp = $_POST['masp'];
        $sp = $_POST['sp'];
        // //lược xem
        // if(isset( $_POST['sp'])) {
        //     $ssp = new SanPham();
        //     $ssp->spUpdate($masp,1);
        // }
        // else
        // {
        //     $sp = $_POST['sp'];
        // }
        //số lượng
        if(!isset($_POST['qty']))
        {
            $quantity=1;
        }
        else
        {
            $quantity=$_POST['qty'] ;
        }
        add_item($masp,$quantity);

        echo '<meta http-equiv="refresh" content="0;url=./index.php?action=home&act='.$sp.'"/>';

        break;
    case "xoa":
        if(isset( $_GET['id']))
        {
            $masp = $_GET['id'];
            unset($_SESSION['cart'][$masp]);
        }
        echo '<meta http-equiv="refresh" content="0;url=./index.php?action=giohang"/>';
        break;
    case "update":
        if(isset($_GET['id']))
        {
            $masp = $_GET['id'];
            $qty = $_GET['qty'];
            update_item($masp,$qty);
            // echo '<meta http-equiv="refresh" content="0;url=./index.php?action=giohang"/>';
            include "View/giohang.php";
        }
        echo '<meta http-equiv="refresh" content="0;url=./index.php?action=giohang"/>';
        break;
}
?>