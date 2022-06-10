<header>

        <div class="line"></div>

        <div id="main-header">
            <div class=left></div>

            <div class="logo">
                <p class="logo-item">MINI STORE</p>
            </div>

            <ul class="right">
                
                <li class="item"><a href="index.php?action=home&act=search" ><i class="fas fa-search"></i></a></li>

                <?php if (!isset($_SESSION['ID'])): ?>
                    
                    <li class="item" id="login"><a href="index.php?action=login">Đăng nhập</a></li>
                    <li class="item"><a href="index.php?action=dangky">Đăng Ký</a></li>

                <?php else: ?>

                    <li class="item" id="login"><a href="#">Xin chào, <?php echo $_SESSION['Ten']?> </a></li>
                    <li class="item"><a href="index.php?action=login&act=login_out">Đăng xuất</a></li>

                <?php endif; ?>
                

                <li class="item"><a href="index.php?action=home&act=yeuthich"><i class="far fa-heart"></i></a></li>
                
                <?php
                    if(isset($_SESSION['cart']))
                    {
                        $dem=count($_SESSION['cart']);
                    }
                    else{
                        $dem=0;
                    }
                ?>

                <li class="item" id="gh"><a  id="cart" href="index.php?action=giohang" >
                    <i class="fas fa fa-shopping-bag"></i></a>
                </li>
                <span class="soluong"><?php echo $dem; ?></span>
                
            </ul>
        </div>

        <div id="header-bottom">
            <?php
                $result = getMenu();
                while ($set = $result->fetch()):
            ?>
            <a href="index.php?action=home&act=<?php echo $set['action']; ?>" class="bottom-item"><?php echo $set['Ten']; ?></a>
            <!-- <a href="index.php?action=home&act=sanpham" class="bottom-item">Sản Phẩm</a>
            <a href="" class="bottom-item">Liên Hệ</a>
            <a href="" class="bottom-item">Dịch Vụ</a>
            <a href="" class="bottom-item">Sự Kiện</a>
            <a href="" class="bottom-item">Hỗ Trợ</a> -->
            <?php endwhile;?>
        </div>

    </header>
    
    <div class="end"></div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $(window).scroll(function () { 
                if($(this).scrollTop()) { 
                    $('header').addClass('sticky');
                }
                else {
                    $('header').removeClass('sticky');
                }
            });
        });
    </script>