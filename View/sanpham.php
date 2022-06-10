<!-- sản phẩm -->
<div class="sanpham">
        
    <section id="products">

        <!-- hien thi danh sach san phan -->
            <div class="items">

                <?php
                    $act = '';
                    $limit = 15;
                    $current_page =isset($_GET['page']) ? $_GET['page'] :1;
                    if(isset($_GET['act'])){ 
                        $act = $_GET['act'];
                        
                        //san pham moi
                        if($act=="sanphammoi" && !isset($_GET['searchdata']))
                        {
                            $sp = new SanPham();
                            $p = new Page();

                            //lấy danh sách sản phẩm và đếm
                            $spNewAll = $sp->spMoiAll();
                            $count = $spNewAll->rowCount();

                            //tinh so page
                            $page = $p->findPage($count,$limit);

                            //tinh start
                            $start = $p->findStart($limit);
                            // echo "<script>alert('".$start."')</script>";

                            //sản phẩm theo phân trang
                            $list = $sp->spMoiPage($start,$limit);
                            
                        }

                        //san pham khuyen mai
                        elseif($_GET['act']=='khuyenmai' && !isset($_GET['searchdata']))
                        {
                            $sp = new SanPham();
                            $p = new Page();

                            //lấy danh sách sản phẩm và đếm
                            $spSaleAll = $sp->spGiamGiaAll();
                            $count = $spSaleAll->rowCount();

                            //tinh so page
                            $page = $p->findPage($count,$limit);

                            //tinh start
                            $start = $p->findStart($limit);
                            // echo "<script>alert('".$start."')</script>";

                            //sản phẩm theo phân trang
                            $list = $sp->spGiamGiaPage($start,$limit);
                            
                        }

                        //san pham search
                        elseif(isset($_GET['searchdata']))
                        {                         
                            $sp = new SanPham();
                            $list = $sp->spSearch($_GET['searchdata']);                       
                        }

                        //san pham all
                        elseif($_GET['act']=='sanpham')
                        { 
                            $sp = new SanPham();
                            $p = new Page();

                            //lấy danh sách sản phẩm và đếm
                            $spAll = $sp->spAll();
                            $count = $spAll->rowCount();

                            //tinh so page
                            $page = $p->findPage($count,$limit);

                            //tinh start
                            $start = $p->findStart($limit);
                            // echo "<script>alert('".$start."')</script>";

                            //sản phẩm theo phân trang
                            $list = $sp->spPage($start,$limit);

                        }
                    }
                    while($set=$list->fetch()):
                ?>

                    <form action="index.php?action=giohang&act=addsp" method="post">          
                        
                        <input type="hidden" name="masp" value="<?php echo $set['MA_SP']?>">
                        <input type="hidden" name="sp" value="sanpham">

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

<div class="page" style="text-align: center;margin-bottom:20px;">
<?php 
    if($page>1):
?>
    <?php
        for($i=1;$i<=$page;$i++):
    ?>
    <a style="font-size:25px;padding:10px;margin:0 10px; border:1px solid #ddd;color:black;" class="page-item"
        href="index.php?action=home&act=<?php echo $act;?>&page=<?php echo $i;?>"><?php echo $i;?></a>
    <?php endfor;?>
<?php endif;?>
</div>