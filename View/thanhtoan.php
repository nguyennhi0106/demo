<style>
    input {
        border:0;
        outline:none;
    }
    #main {
        margin:20px 150px  40px 150px ;
    }
    .main form{
        display: flex;
        flex-direction: row;
    }
    .forms {
        padding: 0px 90px;
        width: 70%;
    }
    .tl {
        font-size: 30px;
        margin-left:240px;
    }
    .forms label {
        font-size: 25px;
        color:black;
    }
    .forms .foo {
        width: 100%;
        margin-bottom: 15px;
        color: red;
    }
    .forms label,input,p,textarea {
        width: 100%;
    }
    .forms input{
        text-align: left;
        padding: 10px 0;
        font-size:22px;
        height: 30px;
        border-bottom: 1px solid rgb(212, 208, 208);
    }
    .forms textarea {
        color: rgb(128, 123, 123);
    }

    .thong-tin-gio-hang {
        border: 1px solid #ddd;
        box-shadow: 2px 2px 4px #ddd;
        width: 30%;
        border-radius: 8px;
        height: 520px;
        padding: 15px;
        margin-top:10px;
        max-height: 384px;
    }
    .thong-tin-gio-hang .thong-tin {
        padding: 20px;
    }
    .thong-tin-gio-hang .thong-tin #item {
        display: flex;
        flex-direction: row;
        padding: 10px 0;
        height: 40px;
    }
    .thong-tin-gio-hang .thong-tin .title-pa {
        text-align: center;
        width: 100%;
        margin:0;
    }
    .thong-tin-gio-hang .thong-tin .title-pa h2{
        margin:0;
        font-size:30px;
    }
    .thong-tin-gio-hang .thong-tin #item p:last-child {
        margin-left: auto;
    }
    .thong-tin-gio-hang .thong-tin #item .title {
        font-size: 22px;
    }
    .thong-tin-gio-hang .thong-tin #item .number {
        font-size: 22px;
        text-align: right;
    }
    .thong-tin-gio-hang .thong-tin #item .check {
        width: 30px;
    }
    .thong-tin-gio-hang .thong-tin #item .checkbox {
        font-size:22px;
    }
    .thong-tin-gio-hang .thong-tin .code {
        margin-top:10px;
    }
    .thong-tin-gio-hang .thong-tin .code button {
        font-size: 16px;
        width: 40%;
        background-color: rgb(43, 132, 235);
        border: 1px solid rgb(43, 132, 235);
    }
    .thong-tin-gio-hang .thong-tin .code button:hover {
        background-color: rgb(14, 96, 190);
    }
    .thong-tin-gio-hang .thong-tin .code input {
        height: 44px;
        font-size:16px;
        border-radius: 5px ;
        border: 1px solid gray;
        padding-left:10px;
        text-align:left;
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

<?php
    if(isset($_SESSION['ID'])):
?>
<p class="tl">THANH TO??N V?? GIAO H??NG</p>
    <nav class="main" id="main">
        <form action="index.php?action=thanhtoan&act=thanhtoan_action" method="POST">
            <div class="forms">
                
                <label for="ten">H??? & T??n*</label>
                <input type="text" name="txtTen" placeholder="Nguy???n V??n A">

                <label for="dia-chi">?????a ch??? giao h??ng*</label>
                <input type="text" name="txtDiaChi" placeholder="s??? 999, ph????ng 1, qu???n1">

                <label for="tinh">T???nh/Th??nh ph???*</label>
                <input type="text" name="txtTinh" placeholder="H??? Ch?? Minh">

                <label for="sdt">S??? ??i???n tho???i*</label>
                <input type="number" name="txtSDT" placeholder="0123456789">

                <label for="mail">Email*</label>
                <input type="email" name="txtEmail" placeholder="example@gmail.com">
            
            </div>
            <div class="thong-tin-gio-hang">
                <div class="thong-tin">
                    <div class="title-pa">
                        <h2>Th??ng tin ????n h??ng</h2>
                    </div>
                    <div id="item" class="so-luong-san-pham">
                    <?php
                        if(isset($_SESSION['cart']))
                        {
                            $dem=count($_SESSION['cart']);
                        }
                        else{
                            $dem=0;
                        }
                    ?>

                        <p class="title">T???ng s???n ph???m</p>
                        <p class="number"><?php echo $dem; ?></p>
                    </div>
                    <div id="item" class="giao-hang">
                        <p class="title">Ph?? giao h??ng</p>
                        <p class="number">0??</p>
                    </div>
                    <div id="item" class="code">
                        <input type="text" value="M?? gi???m gi??">
                        <button>??p d???ng</button>
                    </div>
                    <div id="item" class="tong-tien" style="margin-bottom:10px;">
                        <p class="title">T???ng ti???n</p>
                        <p class="number"><?php echo number_format(tongTien());?>??</p>
                    </div>
                    
                    <button><span>?????t h??ng</span></button>
                </div>
            </div>
        </form>
    </nav>
<?php
    else:
    {
        echo '<script>alert("B???n ch??a ????ng nh???p")</script>';
        echo '<meta http-equiv="refresh" content="0;url=./index.php?action=login"/>';
    }
?>
<?php
    endif;
?>