<style>
    h2 {
        font-size: 30px;
        margin-top: 0;
        margin-left:50px;
        font-weight:normal;
    }
    #products {
        margin: auto;
        margin-top: 15px;
        margin-bottom: 30px;
        padding: 0 15px;
        min-height: 555px;
    }
    #products .items {
        display: grid;
        grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
        grid-gap: 20px;
    }
    #products .items .item {
        border: 1px solid rgb(236, 232, 232);
        box-shadow: 1px 2px 4px rgb(209, 209, 209);
        border-radius: 8px;
        padding: 20px 10px;
    }
    #products .items .item .item-thumb img {
        border-radius: 8px;
        height: 250px;
    }
    #products .items .item #title {
        text-align: center;
        width: 100%;
    }
    #products .items .item #title .title {
        font-size: 19px;
        height: 60px;
        line-height: 30px;
        margin: 20px 0;
        text-transform: uppercase;
        color: black;
    }
    #products .items .item #title .title:hover {
        color: red;
    }
    #products .items .item .title a {
        color: rgb(0, 0, 0);
    }
    #products .items .item .title a:hover {
        color: rgba(44, 19, 158, 0.973);
    }
    #products .items .item .item-price {
        margin-bottom: 20px;
        padding-left: 20px;
    }
    #products .items .item .item-price .item-price-origin {
        font-size: 20px;
        text-decoration: line-through;
    }
    #products .items .item .item-price .item-price-sale {
        font-size: 24px;
        color: red;
        margin-bottom: 20px;
        font-weight: bold;
        margin-left: 10px;
    }
    #products .items .item .item-price #item-price-sale {
        padding-left: 30%;
    }
    #products .items .item .btn-lx {
        display: flex;
    }
    #products .items .item .btn-lx .luocxem {
        flex: 1;
        font-size: 20px;
        margin-left: 15px;
    }
    #products .items .item .btn-lx .luocxem i {
        color: #ababab;
    }
    #products .items .item .btn-lx .btn {
        flex: 2;
        padding: 0;
        height: 55px;
        font-size: 20px;
        cursor: pointer;
    }
</style>
<?php
    if(isset($_SESSION['ID'])):
        $makh = $_SESSION['ID'];
        $sp = new SanPham();
        $yt = new YeuThich();
        $count = $yt->countYT($makh);
?>
    <h2>Sản phẩm yêu thích của bạn: <span style="font-size:25px;">có <?php echo $count[0]; ?> sản phẩm</span></h2>

    <section id="products">
        <?php if ($count != 0):?>
            <!-- hien thi danh sach san phan -->

            <div class="items">
                
                    <?php
                        $sp = new SanPham();
                        $result = $sp->spYT($makh);
                        while($set = $result->fetch()):  
                    ?>

                    <form action="index.php?action=giohang&act=addsp" method="post">          
                        
                        <input type="hidden" name="masp" value="<?php echo $set['MA_SP']?>">
                        <input type="hidden" name="sp" value="home">

                        <div class="item">
                            
                            <div class="item-thumb">
                                <img src="Content/Img/<?php echo $set['Hinh']?>" alt="">
                            </div>

                            <div id="title">
                                <a href="index.php?action=home&act=chitietsanpham&id=<?php echo $set['MA_SP']?>" class="title"><?php echo $set['Ten_Sp']?></a>
                            </div>

                            <div class="item-price">
                                <?php 
                                    if($set['Gia_Giam'] > 0):
                                ?>
                                <span class="item-price-origin"><?php echo number_format($set['Gia']);?>đ</span>
                                <span class="item-price-sale"><?php echo number_format($set['Gia_Giam']);?>đ</span>
                                <?php
                                    else:
                                ?>
                                <span class="item-price-sale" id="item-price-sale"><?php echo number_format($set['Gia']);?>đ</span>
                                <?php
                                    endif;
                                ?>
                            </div>

                            <div class="btn-lx">
                                <p class="luocxem"><i class="far fa-eye"></i> <?php echo $set['So_Luoc_Xem']?></p>
                                <button class="btn btn-primary">Thêm vào giỏ hàng</button>
                            </div>

                        </div> 
                    
                    </form>
                    
                    <?php endwhile;?>

            </div>

        <?php endif;?>
    </section>

<?php
    else:
?>
    <script>
        alert('Bạn chưa đăng nhập')
    </script>
    <meta http-equiv="refresh" content="0;url=./index.php?action=login">;
<?php endif;?>