<?php
$action = "home";
if(isset($_GET['act'])){
    $action = $_GET['act'];
}
switch ($action) {
    case "home":
        include "View/home.php";
        break;
    case "login":
        include "View/login.php";
        break;
    case "sanpham":
        include "View/sanpham.php";
        break;
    case "sanphammoi":
        include "View/sanpham.php";
        break;
    case 'khuyenmai':
        include "View/sanpham.php";
        break;
    case 'chitietsanpham':
        //update lược xem
        $masp = $_GET['id'];
        $sp = new SanPham();
        $sp->spUpdate($masp);

        include "View/chitietsanpham.php";
        break;
    case 'search':
        include "View/search.php";
        break;
    case 'sanphamsearch':
        if(isset($_POST['search'])){
            echo '<meta http-equiv="refresh" content="0;url=./index.php?action=home&act=sanpham&searchdata='.$_POST['search'].'"/>';
        }
        break;
    case 'comment':
        if(isset($_SESSION['ID'])){
            $masp=$_POST['masp'];
            $noidung=$_POST['comment'];
            $makh=$_SESSION['ID'];
            $kh = new KhachHang();
            $kh->insertComment($makh,$masp,$noidung);
            echo '<meta http-equiv="refresh" content="0;url=./index.php?action=home&act=chitietsanpham&id='.$masp.'"/>';
        }
        else
        {
            echo "<script>alert('Bạn chưa đăng nhập')</script>";
            include 'View/login.php';
        }
        break;
    case 'yeuthich':
        include "View/yeuthich.php";
        break;
    case "addyeuthich":
        if(isset($_GET['id'])){
            $masp = $_GET['id'];
        }
        if(isset($_SESSION['ID'])){
            $yt = new YeuThich();
            $yt->insertSPYT($_SESSION['ID'],$masp);
            echo '<meta http-equiv="refresh" content="0;url=./index.php?action=home&act=chitietsanpham&id='.$masp.'"/>';
        }
        else {
            echo "<script>alert('Bạn chưa đăng nhập')</script>";
            include 'View/login.php';
        }
        
        break;
    case 'xoayeuthich':
        $masp = $_GET['id'];
        $makh = $_SESSION['ID'];
        $yt = new YeuThich();
        $yt->deleteYT($makh,$masp);
        echo '<meta http-equiv="refresh" content="0;url=./index.php?action=home&act=chitietsanpham&id='.$masp.'"/>';
        break;
}
?>