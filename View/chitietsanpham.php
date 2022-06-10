<?php
    if (isset($_GET['id'])){
        $id = $_GET['id'];
    }
    $sp= new SanPham();
    $result = $sp->spDieuKien($id);
?>
<form action="index.php?action=giohang&act=addsp" method="post">
    <div class="product">
        <div class="product-item">
            <div class="img">
                <div class="img-item">
                    <?php
                        $list = $sp->spNhom($result['Nhom_SP']);
                    ?>
                    <center>
                    <?php
                    $i=0;
                        while($set=$list->fetch()):
                    ?>
                    <img src="Content/Img/sp<?php echo $result['MA_SP'];?><?php if($i!=0) {echo '.',$i;} ?>.jpg" alt="">
                    <?php
                    $i++;
                        endwhile;
                    ?>
                    <!-- <img src="https://product.hstatic.net/1000025647/product/anel-coco-mademoiselle-intense_454b018683d2432ba28a61406041a508_grande_5fd2187b44e341efad8c470bafb18183_small.png" alt="">
                    <img src="https://product.hstatic.net/1000025647/product/anel-coco-mademoiselle-intense_454b018683d2432ba28a61406041a508_grande_5fd2187b44e341efad8c470bafb18183_small.png" alt="">
                    <img src="https://product.hstatic.net/1000025647/product/anel-coco-mademoiselle-intense_454b018683d2432ba28a61406041a508_grande_5fd2187b44e341efad8c470bafb18183_small.png" alt=""> -->
                    </center>     
                </div>
                <div class="img-items">
                    <center>
                    <img src="Content/Img/<?php echo $result['Hinh']?>" alt="">
                    </center>                
                </div>
            </div>
        </div>
        
        <div class="product-item">
            <div class="title">
                <p><?php echo $result['Ten_Sp']?>l</p>
            </div>
            <div class="price">
                <?php
                    if($result['Gia_Giam']> 0):
                ?>
                    <p class="price-sale"><?php echo number_format($result['Gia_Giam']);?>đ</p>
                    <p class="price"><?php echo number_format($result['Gia']);?>đ</p>
                <?php
                    else:
                ?>
                    <p class="price-sale"><?php echo number_format($result['Gia']);?>đ</p>
                <?php
                    endif;
                ?>
            </div>
            <div class="camket">
                <p>CAM KẾT CỦA CỬA HÀNG</p>
                <ul>
                    <li><i class="fas fa-check"></i> BẢO ĐẢM HÀNG CHẤT LƯỢNG CHÍNH HÃNG 100%</li>
                    <li><i class="fas fa-check"></i> DATE MỚI NHẤT</li>
                    <li><i class="fas fa-check"></i> GIAO HÀNG NHANH NHẤT</li>
                    <li><i class="fas fa-check"></i> PHỤC VỤ ĐẾN KHI KHÁCH HÀNG HÀI LÒNG</li>
                    <li><i class="fas fa-check"></i> 30 NGÀY BAO NGÀY ĐỔI TRẢ, HOÀN TIỀN 100% NẾU KHÔNG ĐÚNG CHẤT LƯỢNG</li>
                </ul>
            </div>
        
            <input type="hidden" name="masp" value="<?php echo $result['MA_SP']?>">
            <input type="hidden" name="sp" value="sanpham">
            
            <p style="font-size:25px; font-weight:bold;">Số lượng</p>
            <div style="display:flex">
                <!-- số lượng -->
                <input type="number" class="qty" name="qty" value="1">

                <!-- yêu thích -->
                <?php 
                    if(!isset($_SESSION['ID'])):
                ?>

                <a class="like" style="color:gray;margin:0 20px;" 
                    href="index.php?action=home&act=addyeuthich&id=<?php echo $id?>"><i class="fas fa-3x fa-heart"></i> </a>
                
                <?php
                    else:
                ?>
                    <?php
                        $yt = new YeuThich();
                        $ytcheck = $yt->checkYT($_SESSION['ID'],$id);
                        if($ytcheck == null):
                    ?>

                        <a class="like" style="color:gray;margin:0 20px;" 
                        href="index.php?action=home&act=addyeuthich&id=<?php echo $id?>"><i class="fas fa-3x fa-heart"></i> </a>

                    <?php
                        else:
                    ?>

                        <a class="like" style="color:red;margin:0 20px;" 
                            href="index.php?action=home&act=xoayeuthich&id=<?php echo $id?>"><i class="fas fa-3x fa-heart"></i> </a>
                        
                    <?php endif;?>

                <?php endif;?>
            
                </div>

            
            <div class="btn">
                <button><i class="fas fa-cart-arrow-down"></i> Thêm vào giỏ</button>
            </div>
        </div>      
    </div>
</form>

<h1>Mô tả sản phẩm</h1>
        
<div class="thongtin">
    <?php
        $list = $sp->spNhom($result['Nhom_SP']);
        $i=0;
        while($set=$list->fetch()):
            
    ?>
    <p><?php echo $set['Mo_Ta']?></p>
    <center><img src="Content/Img/sp<?php echo $result['MA_SP'];?><?php if($i!=0) {echo '.',$i;} ?>.jpg" alt=""></center>
    <!-- <p>Nhắc đến nước hoa trong số vô vàn những thương hiệu nổi tiếng trên toàn thế giới thì chắc chắn nước hoa Chanel chính là dòng sản phẩm đẳng cấp với mùi hương đặc trưng không lẫn vào đâu được. Đây được xem là thương hiệu nước hoa có sức ảnh hưởng lớn nhất trên thị trường, đã và đang chiếm được cảm tình của hầu hết các tín đồ nước hoa hiện nay.</p>
    <center><img src="https://product.hstatic.net/1000025647/product/nuoc-hoa-chanel-chance-edp_5f9deb23b9cd428d9bc856fdb6b22efa_grande_1e24687ec1df4d4793da1981921cabb1_small.jpg" alt=""></center>
    <p>Nhắc đến nước hoa trong số vô vàn những thương hiệu nổi tiếng trên toàn thế giới thì chắc chắn nước hoa Chanel chính là dòng sản phẩm đẳng cấp với mùi hương đặc trưng không lẫn vào đâu được. Đây được xem là thương hiệu nước hoa có sức ảnh hưởng lớn nhất trên thị trường, đã và đang chiếm được cảm tình của hầu hết các tín đồ nước hoa hiện nay.</p>
    <center><img src="https://product.hstatic.net/1000025647/product/nuoc-hoa-chanel-chance-edp_5f9deb23b9cd428d9bc856fdb6b22efa_grande_1e24687ec1df4d4793da1981921cabb1_small.jpg" alt=""></center>
    <p>Nhắc đến nước hoa trong số vô vàn những thương hiệu nổi tiếng trên toàn thế giới thì chắc chắn nước hoa Chanel chính là dòng sản phẩm đẳng cấp với mùi hương đặc trưng không lẫn vào đâu được. Đây được xem là thương hiệu nước hoa có sức ảnh hưởng lớn nhất trên thị trường, đã và đang chiếm được cảm tình của hầu hết các tín đồ nước hoa hiện nay.</p>
    <center><img src="https://product.hstatic.net/1000025647/product/nuoc-hoa-chanel-chance-edp_5f9deb23b9cd428d9bc856fdb6b22efa_grande_1e24687ec1df4d4793da1981921cabb1_small.jpg" alt=""></center>
    <p>Nhắc đến nước hoa trong số vô vàn những thương hiệu nổi tiếng trên toàn thế giới thì chắc chắn nước hoa Chanel chính là dòng sản phẩm đẳng cấp với mùi hương đặc trưng không lẫn vào đâu được. Đây được xem là thương hiệu nước hoa có sức ảnh hưởng lớn nhất trên thị trường, đã và đang chiếm được cảm tình của hầu hết các tín đồ nước hoa hiện nay.</p>
    <center><img src="https://product.hstatic.net/1000025647/product/nuoc-hoa-chanel-chance-edp_5f9deb23b9cd428d9bc856fdb6b22efa_grande_1e24687ec1df4d4793da1981921cabb1_small.jpg" alt=""></center> -->
    <?php
        $i++;
        endwhile;
    ?>
</div>

<h1>Sản phẩm liên quan</h1>

<div class="sanpham">
        
    <section id="products">

    <!-- hien thi danh sach san phan -->
        <div class="items">

                <?php

                    $list = $sp->spNhom($result['Nhom_SP']);
                    
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
<div class="comment">
    <?php
        $kh = new KhachHang();
        $count = $kh->countComment($result['MA_SP']);
    ?>
    <p> <?php echo $count[0]; ?> Bình luận</p>     
    <form action="index.php?action=home&act=comment" method="post">
        <input type="hidden" name="masp" value="<?php echo $result['MA_SP']?>">
        <input name="comment" type="text" placeholder="Bình luận của bạn ...">
        <button>Đăng</button>
    </form>  
    <?php
        $kh = new KhachHang();
        $list = $kh->commentAll($result['MA_SP']);
        while($in=$list->fetch()):
    ?>
    <div class="view">
        <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBIVFRgVFRUYGRgYGBgYGBgYGBgYGBgaGBgZGhgYGBgcIS4lHB4rIRgYJjgmLS8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHhISHjQhJCQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0ND80NP/AABEIAOEA4QMBIgACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAAAQYEBQcDAv/EAEwQAAIBAgIGBQcJBAgEBwAAAAECAAMRBBIFBiExQVEiYXGBkQcTMkJyobEUI1JigpKistEzU8HCFRYkNHODs9IXQ2OjNURUk+Hi8P/EABkBAQADAQEAAAAAAAAAAAAAAAABAwQCBf/EACMRAAMAAgIBBQEBAQAAAAAAAAABAgMRITESEyIyQVEEQhT/2gAMAwEAAhEDEQA/ALxESJYQTEiTAEREAREQBERAEREAREQBERAEREAREQBERAESIgCTIiAJMiTAESLxAEREAREmAUzXzTtam1LDYZ8tWqQSRbMAWCooJ3Zmvt5LNQdHad/9T/3R/FJ64pTV00QbWpKpHYtEML9eepLwlMETLkulWka4ifHbKD8t0/R2sDUUfUpVB+CzmZGE8o7I2XE4YqeJQlW/9t/90u5o8jMfFYNHUrURXU8GUMPfIWal2S8Us89EayYTE7KVUZ/oP0H7lb0u683EoGlNRcO+2gxpNvAN3S/Yekvce6aXFaY0vgV807nKdiOwWp3I7D3Ntls5kyusDXR1k8+HOajG6y4GlfPiadx6qtnbZwypcygYDQGMx6LWrYq6PewJZz0TYjJsRdo4Td4XUPBoOkajnrfKPBQPjFZkhOBvsza/lCwC+j51/Zp2v98rMFvKdhgdlCr3sg/mM2tDVvBJuw9M9bLnPi95n08JSX0aaL2Io+AlT/oLFgRWv+J2G/cVPvJ+sf8AE7D/ALip99P1lpFNfor4CDSQ70U/ZEf9D/B6Elco+UrCE9KjWUcSMjAfjBmxw2vWjnNvOsnto6jvYAgeMya+isM/pUKTdqJ8bTW4jVDAv/ysnsO6+69vdJX9H6Q/519FnweOo1RelURx9R1bxsdkyJzjFeT9L5qFd0bhnANux1yke+eIr6bwYvc1kF9/z69+6oPG0snNLK6wUujpVSoqKWZgqqLszEBQBvJJ2ASnaY8oWHS60FNZtwY9CnfqJ6TdwsecpWO07Ux1RRiawp0r7kViideS5Jb6zE2nQtA6GwlJA+HVXuP2tw7N9vh2C0Xl10TOHfZXDpTTmJ200NJDusiIO3NUu/hPKrpXSuBenUxDmpTZiCuZWVgNpW+UZWtcjsPCdCFLrmu09owV6L0TvZboeTjah8bdxMp9Wt7Zb6c60jcYbEJURHQ3R1DKeasLgz1lF8mOkWKVMM+xqTZ1B3hXJDr9lwfvy9zWntbMdLT0RESRJIEREASIiAJMiSIBzjVl/OaSxlS1rGoo76oX4JL+m6c91BqB6+LcC2ZlYdQd6rWM6Gu6YqfvZuS9iJiDPN6q9shhIOq9kxMRQR1KOqup2FWAIPcZ6MeqRKmyyUfFCiiKERQqqLBVFgByAE+4icnQiIgCJ6JSvtM9RTXlO1LZy6SMaJkMi25Tl+N16xLMTRCInq5lzsRwLEmwPUB4yVDZHmjpETnuhtdMQaqJXCOjsqEquVlzEKG2GxAJ3WnRzRMOKRKpM0mltXsLidrpZ+DpZX7zubvvKhX0VjtHMatBy9PexUErb/q07/iHiJ0YiRE254DlM1GrWtdHFWVvm6tvQJur9aNx7N49831Zdl5SNZdUA962GGWoDmZAcoY78yH1Wvt5HqntqlrYahGHxJtU9FHItnI2ZHHB9nf2y3iltFfMvk1rH5JpdGBslVhfkVr3U/8AcGbunTpzPylUCDQqrsYZkB5EWdPAhp0XBYgVESoNzojjsdQ38Zdie5KM06rZ7RECXFBMSIgCIkwCJMTG0hjadCm9VzZEFz18lHMk2AHMwEc78m3pYnso/GrOjLuE5n5NqnzlcbsyI1ux2/3zpWcACYa+bN+vakfTMBvmMz3hmuZ8yuq2dzOhERODoRExsfj6VFc9V1QcLnaepRvY9klAyZi6Q0jSw6Z6rZUuF3FiSdwAAuTsPhKhj9eyTkw1Isx3FwST7NNdp7yJq8dS0piULVVbIvTCEKlyAfRQdItYnYectnE2V1aR06rpKgtIVzUVaRCkOTZbPbKe+4k2r+eO1PMZBb0vOZ822/DJltKjqVp3D1cOuFrlMydFVqZcjoGumXNsLLsFt+wGW7SNOuyr5h1RsylmZcwKg9JR1kcZZrRWfGFxFdqtVHpBaaZPNvmB85cXe68LHZOaa6atjDOKiOPN1GIVNuZCQWIHArsNuVwOudI0lpjDUAWq1UX6twXPUEG0mc30vja2k69qSEJTVsgbZa+0s5FwGawAHV2mTKDNnqPqqHyYuqwK3z00HFlYgM5PIi4A5DsluTSjUaAqY0LTYvltTLOvSYhN1ztH/wC4Sqaj6zUqSfJ8Q2TIzZXe4Wxa5Rz6rBi2+WFdMYej51q2Np1EZ89NQVYooAsqqpJYgwyDeYgbp4TnWj9MfKNJiu1TzadIKHfKMgTKqb7XYnNbtnRhKMi0y+HtESqa46tCspr0l+dUXZR/zAOI+sLbDxtbla1xOJpy9ktbWjl+P02cTgslQ3q0XRgTvqJYpmP1hn2+POdH1Nq58DhzyphPuEp/LKJr1oMU3+UUxZHNnA3LUPrdjfHtlv8AJ418BT27nqjs+cc28CPGbcTT6MuZaXJZokxLzMREXiATERAE53rninxeKTAUjZUYGow3ZrXJI5Ip72a3CXTTukhh8PUrGxKL0QfWc7EXvJEp+oGjyEfEvteszAE78oYlm+09z3CU5a8ZLsMeT2Rq9q5Vw2MqOAPM5HVGzAlgzKVW2+4y7T1dct8RMVU6NqnQiInJIiCZQNY9YamJf5LhLlSSrOu9+YB9VBxbj2b+4l09I5qkls2GsGuaoTSwwzvfKXtmRW3WUD0293bumqwWrNfEN57Fu4J25bguRyJ3IPqgeE3WgNXaeGAY2epxe2xfqoOA695903U2RiUmWsrfRjYDR1GiuWkipzI2sfaY7T3mZMSZaVle0vqnQrEupNN2uTlAZGJ4sh49hE1X9S642DEjLys4H3Q1pdokOUyVTRUsFqPTU3qVGfmEUID2m5PhaWbB4OnSQJTQIo4DieZJ2k9ZnvEJJdEOm+zVaT1fw1clnQq59dDlY9o3N2kTW0tScMDcvUYfRugv2lVB8JZzAjxQVNFdx+qGGdbUwabAWBBLKfbVjt7QQZqcNpHG6OYJUGejewF7oR9RztQ/VPhxl3nniKCOpR1DK2wqdoM5qFSOptye+itKUsSgem1xuZTsZD9FhwPx4TNnNMbhK2jqor0CTTY2sdotf9nU6uTfx33/AETpKniKa1E3HYVO9GG9W6x79h4zHkxuWbItUj2xmGSqj03F1dSrdh4jrG/ulL1Hxb4XF1MFUPRdiBy84oujDqdLeCy9GUbyhYMo9LFJsZWVCeTKc9Ju4hh4ScNarRzlnyk6XEw9FY5a9GnWXYHRWtyJHSXuNx3TMm888RIiATEiTAKB5SsQ1R8Pg0PSds7AcCxyISOW1z3S04agqIiILKihV7FFhKdo/wDtGl61Q7Vo5wDe4BQCko/OfGXWYc9brRuwzqRERKC4RE1msGlhhqD1Nhb0UB4u3o9w2k9QMlLb0Gyu67acYt8joXLtYVCu/pbqS9Zvt6u+Z2ruhVwybbGowGdh7kX6o9+/s1Opeiyb4qp0mctkLb9pOd+0m4HVfnLbN2OFKMeS22IiJaVCIiAIiIBMiIgEyIiAIiIB516COrIwDKwKsDxBlL0ZXfR2LNN2JovYFjuKk9Cp2qbhu/ql4mg1y0cKtAuBd6V3HWnrr4bfsicXPkjuK8WW+a7WHBeew9Wna7FCye0vSX3gTA1K0l57DKGN3pHzbcyAAUb7pA7QZYJgfto2rlFZ8l2Pz4d6RP7N8yjklQFvzB/GXgTmepZ8xpOvQ3KwqKB7DB0/AW8Z0yejD3J5+RapkRJvE6KyJ54msER3O5EZz2KpJ+E9Zptb3C4LEkm16TL3v0VHeSB3yGSltlT8m9IlK9VtrO6qTzKrnY+LmXOV3UGnbBofpPUY9zlf5RLFPOt7pnpR0IiJwdCc81sqNisamGQ9FDlJHBmGao3aqgDtB5y/4muqI7tuRWc9igk/CULUmgXqVcQ+1tq3+u5zv/L96X4J3RVlrUlvo01RVRRZVAVQNwAFgJ9RE2mMREQBERAEREAmREQBJMiIAiIgCCBuO47+uIMApuprHD46rhyeiwZV6yhzoe9C06EZzrTDea0nRqDZmNEk+0zU2/CJ0YzDmWqN2J7koeK+a01SYeuyH79M0viJ0ycw1tGXSOFbrw/4a5/WdQM04X7UZM69xESYlxSJXdfv7hW7af8AqpLFK7r9/cK3+X/q05D6Jn5IxdTVtgqPssfF3P8AGbqabU8/2Kh7LDwdhNzPNv5M9GehEROTo0Ou1fJg6gG9yidzMM34Q0w9UKGTCoeLl3PexA9yrPHyk1LYemOdW/3Uf9ZtNCplw1FeVKnftyLf33mzAuDNmf0ZkRJmgzkREQBJlT1y01VpMlGkxQlM7sPSsWKqqk7vRa/dMPUlPleIelXq4g/NllZazqQVZQQQDaxzjw65Hlzo68XrZd4n2dS8Pwr4sdYxL/xmix9CrgsTQpDEPWpYjMuWrZqiFQOkHAFx0h4HtjZyuTdSZESQIiIAiVHXDTdam4o0mKdAOzC2Y5iQFBO4dG+zbtjUej8seqlatiboqurJXdRYnKVI3ciO+R5c6OvHjZbrRPptTaVtmJxgPP5Qx9xBE0iithsb8kesa1N6XnUZwA6bbZXI2EbDt6xujZzpfRo9fOjVoPyDfhdCPjOjGc41+PToA7Blfbw2sl/C06MTymTP2a8PRQtdP79hf8r/AFjOnmcw192YnCt1L+Gqp/jOoHeZfg+JRn+REReJcUCaPXOkHwOIB4Jn70YOPyzeTxxVBaiOjC6ujIRzDAgj3yH0E9MqWodS+CQfQeov4y3wYSwyleTauQlai2xkdXIPC4yN4FPfLrPOtapnpS+BERODopflNHzNH23/ACGb7BG9NPYT8omq8otEthkb6FVSexlZfiRMvV6pmw1A/wDTRT2oMp96mbcHxMubs2Eh3AF59TxxA3GW22p2jnDKqkmfBrNJWseM8ombzr9PReGGtaMXTegqWJCliVddiutr2O0qwO8fCYmhtA18I7vQxCAuApL0M5Cg3sDn2XNr87CWCmLCfU0pb5PMrhuV0YpxGkz/AOapDrGG2+95jUNFt575RXrPWq5cqMyqioNtwqLsG8+J5zZRJ0cbJPVK5ovWan5sjEutOshYOmVhuJtlG2+y0sU8KuEpOcz00ZvpMik7N20iHsla+zQ4fW+ne9em9JGGak5DMHW5G4LsPZcde6+w1dxlWsjVKnotUc0rqFPm9mS4G/jt49c2rKCLEAjkQCIhJhtfRqNNaApYmzMSjqLB1sbrt6LA7xc36p46H0NicLn+T4hVz2zFsOGaw3DNn3bTs65vYjxW9keT1oxTV0id+MUD6uGQHxZj8Jj4HRgpu9Z6jVar2DVGtfKNyqo2KNg2dQmynjiBskVwtlmKVVJP7K3rvSD0Fa3oOPBuiR4lfCWXVjEmphKLk3OQKe1LofyzRayj+zVb8lPg6kTYahn+xJ7dT87TJkbqds2uZmvGfw0flGNquGPU/udDOotvM5d5RBevhl5g/idAPhOoneZowfEx/wBHyIiIlxnEREA5tXX5HpY32JibkHh86b+IqKR2GXeafX/Q3n8P5xB06N3Ft5S3TUW232Bh1r1xqtpcYmgrE9NLJUH1gNjdjDb4jhMmeNPZtw1udG4iImUvNfrBgfP4apTG8rdfbU5l94ErGo2MDU3pcUbMvsPt9zZvES7znenqD4HGDEIvzbsTYbjm21Kfb6w7uRmjBWnopyztF1kTzwuJSoiujZkYXB/gRwI3ET1mwynm1ESVpgT6kyPGe9Hby21rYkSZEkrJiIgERJiARERAEREAQYiCSua6uqYbLxd0UfZOc/k983Wp9DJg6I+kpf77Fx7mEp2mKhx2LTD0zdFJUsN2+9V+wAAA8x1zoxKIm2yoi9gVVHwAEx5muka8W2t0UjWBPPaVw9K/omkD3M1Rh90DxnTZzfUimcTjq2LI6KZit/pP0EA6witftE6PNOKdSjLmrdC8SYlhUIiRAJnNtO4J9GYkYmgt8PUOV0G5STcp1c1PA3Hb0meWIoI6MjqGRgVZWFwQeBnNSqWjqKcvZq8BjadZFqU2zK27mDxUjgRxE95RsfobF6Nd6+GOfD73QkkheVRer6Y2jjxlh0LrJh8TYI2V7XKPsb7J3OOyYbxuWb4tUjcTF0no+niKbUqg6LcR6SsNzL1iZUStPR2c0SridGVSjjPSc3HAOPpofVe29T+hly0fpCnXTPTcMOPBlPJl3gzaYrDU6iFHQOh3qwuP/g9cpOkNS61N8+DqH2S+R16g+5x1H3zTGb6ZnvFvlFsiUpNZ8XhyExVEnhmIyOew2yP3Wm1o64YMgZi6HkyM1u9bzSrTKHFI38TXU9P4Nt2Ip/abIfBrGZA0jQO6tT++n6xtEaZlSJitpLDjaa1MfbT9ZgY7WjCUxscVDwWmQ/i18o8Y2gk2bqJSn185UBbrq/8A0n3T18T1qNuyoD8VEjyR14UXGJUxr1R/dP8AeT/dPJ9fE9Wie+ooPuUyfNEeFFxiUpddar7KeGBPU7v7lQT6GJ0xiNiU2pg8Qgp/iqm/hOXcolY6ZbsRiERSzuqKN7MQBKfpXWSpiG+T4VW6XRzAEO/MIPVX6x29k98JqRiKjZ8VWtt3BjUfbv6TbF7ry3YLA4XBoSoVEA6Tsdp9pztPZKazL6LZw/bMDVbV1cKhLWaq4Acj0VH0E6uZ4+E1WuWmWdhgsP0nchXy8ydlMdZ9bkO+3npfWqpiGGHwKuzPszgEOeYQH0Rzc2t1b5ZNUNVlwi53s9dh0mG0IDvVCd9+LcZGPG6flROTKpWkbDVrQy4SgtIWLHp1GHrOQL26gAAOoTbSImsxt7JiIgCIiAJptadOrg6BqZczsciKdgLEE3Y/RABJ7LcZuZzzylAviMJTJ6JJuOHSqIpPhIp6R1K29GFT1q0nhmSriLPSqbSmVAQLXKqVAKtbaAb7tvGWDSupOExI87QbzTvZ1ZOlTbMLg5L9HndSJrdaKOfDVOagOPsMCfdmHfLF5Pa6vgaOYnoZ0NvqO+Qfdyzld6Z3XC2uCpVMXpfA9GqnnqY3PZnFv8Rdq/bE2Wj9esK4GcPTPO2dO5l2+IE6DWeiqO5ZlCqTckAAAEkt4XnHNKv/AEjiiaFNURRYvlCsRf03tvY7bLyHbK6xSyyMtPs6DhNJ4ertp1kf2XW/eL3EyxOf1NSKbDoVXHtqrj3ZTMddUcYn7PEKOx6tP3KDKngZZ6yOjPTVhlZQwO8MAQe4zT4nVPAvvoBT9QsnuU290rCaN0wmxcST/nFvzrII04vrsexsOfiJHo2umT6ks3NTUPBnc1VexwfzKZjHyfYf99V8E/2zXZ9OfSfxw0+/NacbfVI+3SH5Vk+F/o84M9fJ9hv31Xu82P5ZodWtGUmxz0qi5lpmrlV/WKOFXMOOy5t1TLbRGl39LE2/z3X8qzG/qfjL5/O0818wbPUzZuebJcHrnSitcnLuTpiKALBQByAAHhPh6KHeintVT8RKCK+m6ezpOBuJFF/fsY98k6Q043qEdiUR8TK/Sos9SS8f0fQ/c0/uJ+k9VoIvooo7FA/hKB8n0246VUp2uifkBM8n1Vxz/tMSpHXUqv7ioElYa/SHlk6DXxtKmLvURBzZ1Ue8zS4zXLBJfK7VDyRSb/aNl98r2F1FQenWJ9hFX3tm+Ead1UppRLUM2dLswZixdAOlYbgw37BtsRynfofpx6yPqrrpiqzZcLh+NvRas/eFAC++ZGH1Ox2KYPjapRd4S4dx1Ki9BO3aeqWTUPTAxGGVdgelZHCgAHZ0HsPpAbesNLJLZxSims1Pg1uhtB4fCqVopYt6Tscztbmx4dQsOqbKIlpS3sREQCYiIAiJEATnvlEa2LwZ5Ef6qToU5/5VaJC4eqBtVnS/WQrqPwNIro7x/IzsXRzo6fTRl+8CJjeSrEE0a1M+o6PblnSx2cNqGZlKoHVXG5gGHYRcSr4TSH9HY6o5QslRGIUG18xDKduzosGHUCeycvh7O9bTRu/KDpeo7pgaJuz2NS3XtRCeAsCzdVuF576K0clFAidrNxZuLH9OGyaPVXDvUapi6pu7swB7T02HVfojkFMt1JLDthc8h+1aPsC2yJSqRtpZrneSvaDhwQOy490uslPZw1oSGYC1yBfYLneeQ5mTKV5QNj0G5LUI6iDTNx1yW9IStvRdYgxAEiTIgEyJMiAIkmVLXDE16L0aquwQXugYgMykMQw9bMtxt3WMhvQS29FsifNOoGUMu0MAw7CLj4z6kgqeqTfJdJ1MONiVMyAcNi+cp+AzL3zp05Zpa66VwrLvLYcH7VVkP4TOpyEL7TIiInRwIEQIAiTEAiJMiAJX9eMF53BVQBdkAqLsuegQWt1lc475YII5yGthPT2c61TxWfDIL7UJQ9g2p+Ejwmq10qZnpUlAL7SDxu5CKvYSD4CRRQ6Pxr0H/ZvYBvqEk0n7rlT38oww89pJm4IWI+wopj8RvK31ovXey2YDCKiIi+iigdtuPefjM6edAbCZ6TtHDZStZyaGNpYi3ROQk+wcrjtyMJdkYEAggggEEbiDuM1+mtFriaZRjYg5ka18rDjbiLEgjrlVw2Lx+B+belnpi+XYzKB9R1vlHUwkfFk/JF6lJ1vbz2Ko0F2kWVrcPOOtx3KoPYZLa0Yyr0aOHysdmYB3I7LgKO07JsNWtX3pua9c3qG9lvmylvSZm3FyNmzdc74b8uESl48sspiInRwREmRAJkREAkzS61YE1cO4UXdLOo4kr6QHWVLCbmJDWyU9PZXNTNJrUoikSM9MZQPpJ6jDnYbD2dcsc59U0Oa+kHoUmWmSzMrbQFIphzbLtFzfdzm5/qNpJ+hVxS5OPzlapftQqoPeZCb/AA6pLfZiYYjF6VplOklJlbMN2WgS+a/LOQOu4nVZpNWdXaeCQqhLu9s7kWzWvZVX1VFzs65u51K0V09vgiIiSciIkiALRFogCIiAIiIBzHyq/tqH+G/5xNTqR+2f/D/nSIlf+i9dF/obu+fcROytielPfEQwj6qTziJCJZBkREkgmIiARJiIYBkGIgFT0J/4032/9ATp0RInoX2IiJ0cCSIiAQIiIBMREA//2Q==" alt="">
        <div class="noidung">
            <p class="date"><?php echo $in['Ngay']?></p>
            <p class="data"><?php echo $in['Noi_Dung']?></p>
            
        </div>
    </div>
    <?php endwhile; ?>
</div>