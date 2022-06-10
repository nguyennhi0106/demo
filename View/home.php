<nav class="main">

    <!-- slide -->
    <div class="top-main">
        <div class="slide">
            <img src="./Content/Img/s1-banner-1.png" alt="" class="slide-item" number="0">
            <img src="https://trangha.com.vn/wp-content/uploads/2018/04/banner-nuoc-hoa-1-1.jpg" alt="" class="slide-item" number="1" style="display: none;">
            <img src="https://hali.vn/wp-content/uploads/2020/07/thiet-ke-banner-my-pham1-e1594688180530.jpg" alt="" class="slide-item" number="2" style="display: none;">
            <img src="./Content/Img/Capture.PNG" alt="" class="slide-item" number="3" style="display: none;">
        </div>
    </div>

    <!-- thương hiệu -->
    <div class="thuong-hieu">
        <div class="title">
            <div class="item"></div>
            <p class="item" id="title"><i class="far fa-heart"> Thương hiệu</i></p>
            <a class="item" id="showth" href="">Xem thêm ></a>
        </div>
        <div class="img">
            <a href="" class="img-item"><img src="https://www.milem.vn/fileserver/images/file/resize-400x400/upload/manufacturer/M5bd2c4230aa80/dior.png.webp?v=1.3" alt=""></a>
            <a href="" class="img-item"><img src="https://www.milem.vn/fileserver/images/file/resize-400x400/upload/manufacturer/M5bd2c4230aa80/dior.png.webp?v=1.3" alt=""></a>
            <a href="" class="img-item"><img src="https://www.milem.vn/fileserver/images/file/resize-400x400/upload/manufacturer/M59474d84de528/skii.png.webp?v=1.3" alt=""></a>
            <a href="" class="img-item"><img src="https://www.milem.vn/fileserver/images/file/resize-400x400/upload/manufacturer/M5bd2c4504b9df/fancl.png.webp?v=1.3" alt=""></a>
            <a href="" class="img-item"><img src="https://www.milem.vn/fileserver/images/file/resize-400x400/upload/manufacturer/M5bcd37f291da6/bioderma.png.webp?v=1.3" alt=""></a>
            <a href="" class="img-item"><img src="https://www.milem.vn/fileserver/images/file/resize-400x400/upload/manufacturer/M5bcd37f291da6/bioderma.png.webp?v=1.3" alt=""></a>
        </div>
    </div>

    <!-- sản phẩm mới -->
    <div class="sanpham">
        <div class="title">
            <div class="item"></div>
            <p class="item" id="title"><i class="far fa-star"> Sản phẩm mới</i></p>
            <a class="item" id="showsp"href="index.php?action=home&act=sanphammoi">Xem thêm <i class="fas fa-angle-right"></i></a>
        </div>

        <section id="products">

        <!-- hien thi danh sach san phan -->

            <div class="items">
                
                    <?php
                        $sp = new SanPham();
                        $list = $sp->spMoi();
                        while ($set = $list->fetch()):
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
            
        </section>
    </div>

    <!-- banner -->
    <div class="banner">

        <div class="banner-item">
            <a href=""><img src="./Content/Img/Dua-Lipa-Yves-Saint-Laurent-Libre-Perfume-Campaign03.jpg" alt=""></a>
        </div>

        <div class="banner-item">
            <a href=""><img src="https://pbs.twimg.com/media/EpfSVonUcAETAyD.jpg" alt=""></a>
        </div>

    </div>

    <!-- sản phẩm khuyến mãi -->
    <div class="sanpham">

        <div class="title">
            <div class="item"></div>
            <p class="item" id="title"><i class="far fa-star"> Sản phẩm khuyến mãi</i></p>
            <a class="item" id="showsp"href="index.php?action=home&act=khuyenmai">Xem thêm <i class="fas fa-angle-right"></i></a>
        </div>

        <section id="products">

        <!-- hien thi danh sach san phan -->   
        
            <div class="items">

                <?php
                    $sp = new SanPham();
                    $list=$sp->spGiamGia();
                    while ($set = $list->fetch()):
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

                <?php endwhile; ?>  

            </div>
            
        </section>
        
    </div>

</nav>

<div class="x"></div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    // tạo slide
    $(() => {
        $('a.next').click(function () {
            changeImg('next');
        })

        $('a.prev').click(function () {
            changeImg('prev');
        })
    })
    //hàm chuyển ảnh của slide
    function changeImg(type){
        //truy cập đến ảnh hiện tại
        const imgSelectVisible = $('img.slide-item:visible');
        //lấyvị trí của ảnh hiện tại
        let imgVisible = parseInt(imgSelectVisible.attr('number'));
        //nếu nhấn next thì vị trí ảnh cộng thêm 1 ngược lại trừ đi 1
        let nextImg = type === 'next' ? imgVisible + 1 : imgVisible - 1 ;
        //nếu ảnh ở vị trí cuối cùng thì quay lại ảnh đầu tiên
        if(nextImg >= $('img.slide-item').length) {
            nextImg = 0;
        }
        // hiện ảnh kế tiếp lên
        $('img.slide-item').eq(nextImg).fadeIn(1000);
        // ẩn ảnh hiện tại
        imgSelectVisible.fadeOut(1000);
    }
    // hàm chỉnh thời gian chuyển ảnh của slide
    setInterval(function(){
        $('a.next').click();
    },4000);
</script>