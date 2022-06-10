<style>
    *{
        padding: 0;
        margin: 0;
    }
    img {
        width: 100%;
    }
    button
    {
        border:0;
        outline: none;
        background-color: white;
    }
    input {
        padding: 5px;
        border: 1px solid #ddd;
        border-radius: 5px;
    }
    .main-gio-hang {
        padding:30px 0 ;
    }

    #main-gio-hang {
        margin:20px 150px  40px 150px ;
        display: flex;
        flex-direction: row;
    }
    .gio-hang .menu-gio-hang {
        border-bottom: 1px solid #ddd;
        display: flex;
        flex-direction: row;
        text-align: center;
        padding-bottom: 10px;
    }
    .gio-hang .menu-gio-hang p {
        font-weight: bold;
        font-size:22px;
    }
    .gio-hang .menu-gio-hang .gia-ban {
        font-weight: bold;
        font-size:22px;
    }
    .gio-hang .menu-gio-hang .hinh-anh, .so-luong, .xoa {
        flex: 1;
    }
    .gio-hang .menu-gio-hang .gia, .tong-tien {
        flex: 2;
    }
    .gio-hang .menu-gio-hang .ten {
        flex: 4;
    }
    .gio-hang {
        border: 1px solid #ddd;
        box-shadow: 2px 2px 4px #ddd;
        padding: 20px;
        width: 70%;
    }
    .item-gio-hang {
        display: flex;
        flex-direction: row;
        align-items: center;
        text-align: center;
        padding-top: 20px;
    }
    .gio-hang .item-gio-hang .hinh-anh img {
        width: 60%;
        height: 50px;
    }
    .gio-hang .item-gio-hang .hinh-anh, .so-luong, .xoa {
        flex: 1;
    }
    .gio-hang .item-gio-hang .so-luong {
        border:0;
        display: flex;
        flex-direction: row;
    }
    .gio-hang .item-gio-hang .so-luong #qty {
        font-size:24px;
    }
    .gio-hang .item-gio-hang .so-luong #giam,#tang {
        margin-top:5px;
    }
    .gio-hang .item-gio-hang .so-luong #giam,#tang i {
        color:black;
    }
    .gio-hang .item-gio-hang .so-luong .item{
        padding:0 10px;
    }        
    .gio-hang .item-gio-hang .gia, .tong-tien {
        flex: 2;
        font-size: 22px;
    }
    .gio-hang .item-gio-hang .ten {
        flex: 4;
        font-size: 24px;
    }
    .gio-hang .item-gio-hang .xoa i {
        color: black;
        font-size:20px;
    }
    .gio-hang .item-gio-hang .xoa i:hover {
        color: blue;
    }

    .thong-tin-gio-hang {
        margin-left: 60px;
        border: 1px solid #ddd;
        box-shadow: 2px 2px 4px #ddd;
        width: 30%;
        border-radius: 8px;
        height: 350px;
        padding: 15px;
    }
    .thong-tin-gio-hang .thong-tin {
        padding: 20px;
    }
    .thong-tin-gio-hang .thong-tin #item {
        display: flex;
        flex-direction: row;
        padding: 10px 0;
    }
    .thong-tin-gio-hang .thong-tin .title-pa {
        width: 100%;
        padding-bottom: 20px;
    }
    .thong-tin-gio-hang .thong-tin #item p:last-child {
        margin-left: auto;
    }
    .thong-tin-gio-hang .thong-tin #item .title {
        font-size: 22px;
    }
    .thong-tin-gio-hang .thong-tin #item .number {
        font-size: 22px;
    }
    .thong-tin-gio-hang .thong-tin .code button {
        font-size: 16px;
        width: 40%;
        background-color: rgb(43, 132, 235);
    }
    .thong-tin-gio-hang .thong-tin .code button:hover {
        background-color: rgb(14, 96, 190);
    }
    .thong-tin-gio-hang .thong-tin a {
        height: 50px;
    }
    .thong-tin-gio-hang .thong-tin button {
        width: 100%;
        height: 50px;
        font-size: 18px;
        border: 1px solid #ddd;
        border-radius: 5px;
        background: rgb(243, 124, 12);
        color: white;
    }
    .thong-tin-gio-hang .thong-tin button:hover {
        background: rgb(209, 106, 9);
    }
    .thong-tin-gio-hang .thong-tin button span {
        font-size: 20px;
    }
    .thong-tin-gio-hang .thong-tin button:hover span {
        border-bottom:2px solid white;
    }
</style>
    
<nav class="main-gio-hang" id="main-gio-hang">
    <div class="gio-hang">
        <div class="menu-gio-hang">
            <div class="hinh-anh">
            
            </div>
            <p class="ten">Tên Sản Phẩm</p>
            <div class="gia">
                <span class="gia-ban">Giá Sản Phẩm</span>
            </div>
            <p class="so-luong">Số lượng</p>
            <p class="tong-tien">Tổng tiền</p>
            <div class="xoa">
                
            </div>
        </div>

        <?php
            if(!isset($_SESSION['cart']) || count($_SESSION['cart'])==0):          
                echo '<script>alert("Giỏ hàng bạn chưa có sản phẩm");</script>';     
        ?>
        <meta http-equiv="refresh" content="0;url=./index.php?action=home&act=sanpham">;
        <?php
            else:
        ?>
        <?php
            foreach($_SESSION['cart'] as $key=>$item):
            $costnew=number_format($item['cost']);
            $totalnew=number_format($item['total']);
        ?>

        <form action="" method="post">
            <input type="hidden" name="mahh" value="<?php echo $item['mahh'];?>">

            <div class="item-gio-hang">
                <div class="hinh-anh">
                    <img src="Content/Img/<?php echo $item['hinh']; ?>" alt="....">
                </div>
                <p class="ten"><?php echo $item['name']?></p>
                <div class="gia">
                    <span class="gia-ban"><?php echo $costnew?>đ</span>
                </div>
                <div class="so-luong">
                    <a href="index.php?action=giohang&act=update&id=<?php echo $item['mahh'];?>&qty=giam" id='giam' onclick="checkSL('giam')" class="item"><i class="fas fa-minus"></i></a>
                    <p id="qty" class="item"><?php echo $item['qty']?></p>
                    <a href="index.php?action=giohang&act=update&id=<?php echo $item['mahh'];?>&qty=tang" id='tang' onclick="checkSL('tang')" class="item"><i class="fas fa-plus"></i></a>
                </div>
                <p class="tong-tien"><?php echo $totalnew?>đ</p>
                <div class="xoa">
                    <a href="index.php?action=giohang&act=xoa&id=<?php echo $item['mahh'];?>"><i class="far fa-trash-alt"></i></a>
                </div>
            </div>

        </form>

        <?php endforeach; ?>        

        <?php
            endif;
        ?>

    </div>

    <?php
        if(isset($_SESSION['cart']))
        {
            $dem=count($_SESSION['cart']);
        }
        else{
            $dem=0;
        }
    ?>

    <div class="thong-tin-gio-hang">
        <div class="thong-tin">
            <div class="title-pa">
                <h2>Thông tin đơn hàng</h2>
            </div>
            <div id="item" class="so-luong-san-pham">
                <p class="title">Tổng sản phẩm</p>
                <p class="number"><?php echo $dem?></p>
            </div>
            <div id="item" class="giao-hang">
                <p class="title">Phí giao hàng</p>
                <p class="number">0đ</p>
            </div>
            <div id="item" class="code">
                <input type="text" value="Mã giảm giá">
                <button>Áp dụng</button>
            </div>
            <div id="item" class="tong-tien">
                <p class="title">Tổng tiền</p>
                <p class="number"><?php echo number_format(tongTien()); ?>đ</p>
            </div>
            <a href="index.php?action=thanhtoan&act=thanhtoan"><button><span>Đặt hàng</span></button></a>
        </div>
    </div>
</nav>  