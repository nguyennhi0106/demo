<?php
    $action = 'thanhtoan';
    if(isset($_GET['act']))
    {
        $action = $_GET['act'];
    }
    switch ($action) {
        case 'thanhtoan':
            include 'View/thanhtoan.php';
            break;
        case 'thanhtoan_action':
            if(isset($_SESSION['ID']))
            {
                $ten = $_POST['txtTen'];
                $diachi = $_POST['txtDiaChi'];
                $tinh = $_POST['txtTinh'];
                $sdt = $_POST['txtSDT'];
                $email = $_POST['txtEmail'];

                $makh = $_SESSION['ID'];
                $tongtien = tongTien();
                $tt = new ThanhToan();
                $madh = $tt->ttInsertDH($makh,$tongtien);      
                $_SESSION['sohd']=$madh;
                
                foreach($_SESSION['cart'] as $key=>$item)
                {
                    $tt->ttInsertCTDH($madh,$item['mahh'],$item['qty'],0,$item['total']);
                    
                }
                $tt->ttInsertGH($madh,$makh,$ten,$diachi,$tinh,$sdt,$email);
                include 'View/home.php';
            }
            else
            {
                echo "<script>alert('Bạn chưa đăng nhập')</script>";
                include 'View/login.php';
            }

            
            break;
    }
?>