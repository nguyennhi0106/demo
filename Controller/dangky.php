<?php
$action = "dangky";
if(isset($_GET['act']))
{
    $action = $_GET['act'];
}
switch ($action) {
    case "dangky":
        include "View/dangky.php";
        break;
    case "dangky_action":
        //txtName txtUserName txtPassword txtConfirmPassword txtEmail txtPhone txtAddress
        $tenkh=$_POST['txtName'];
        $username=$_POST['txtUserName'];
        $password=$_POST['txtPassword'];
        $crypt=md5($password);
        $email=$_POST['txtEmail'];
        $dthoai=$_POST['txtPhone'];
        $diachi=$_POST['txtAddress'];
        $dt=new KhachHang();
        $dt->insertKhachHang($username,$crypt,$tenkh,$dthoai,$email,$diachi);
        echo '<script>alert("Đăng Ký Thành Công");</script>';
        echo '<meta http-equiv="refresh" content="0;url=./index.php?action=home&act=home"/>';
        break;
        
}
?>