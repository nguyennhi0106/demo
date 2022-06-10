<?php
$action = "login";
if(isset($_GET['act'])){
    $action = $_GET['act'];
}
switch ($action) {
    case "login":
        include "View/login.php";
        break;
    case "login_action": 
        $user=$_POST['txtUser'];
        $pass=$_POST['txtPassword'];
        $crypt=md5($pass);
        $dt=new KhachHang();
        $u=$dt->logUser($user,$crypt);
        if($u!=false)
        {
            $_SESSION['ID']=$u[0];
            $_SESSION['User']=$u[1];
            $_SESSION['Pass']=$u[2];
            $_SESSION['Ten']=$u[3];
            $_SESSION['SDT']=$u[4];
            $_SESSION['Email']=$u[5];
            $_SESSION['Dia_Chi']=$u[6];
            echo '<script> alert("Đăng Nhập Thành Công");</script>';
            echo '<meta http-equiv="refresh" content="0;url=./index.php?action=home"/>';
        }
        else
        {
            echo '<script> alert("Đăng Nhập Không Thành Công");</script>';
            echo '<meta http-equiv="refresh" content="0;url=./index.php?action=login"/>';
        }
        break;
        case "login_out":
            if(isset($_SESSION['ID']))
            {
                unset($_SESSION['ID']);
            }
            echo '<meta http-equiv="refresh" content="0;url=./index.php?action=home"/>';
            break;
}
?>