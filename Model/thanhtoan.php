<?php
    class ThanhToan {
        var $madh=0; 
        var $ngaydat=null;
        var $phiship=0;
        var $tongtien=0;
        var $makh=0;

        function __construct(){}

        public function ttInsertDH($makh,$tongtien)
        {
            
            $date=new DateTime('now');
            $ngay=$date->format("Y-m-d");
            $query="insert into donhang(Ma_DonHang,Ngay_Dat,Phi_Ship,Tong_Tien,ID_KhachHang)values(Null,'$ngay',0,$tongtien,$makh)";
            // echo $query;
            $db=new connect();
            $db->exec($query);

            $select="select Ma_DonHang from donhang order by Ma_DonHang DESC limit 1";
            $sohd=$db->getInstance($select);
            return $sohd[0];
        }

        public function ttInsertCTDH($madh,$masp,$sl,$vat,$thanhtien)
        {
            $query="insert into ct_donhang(Ma_DonHang,MA_SP,So_Luong,VAT,Thanh_Tien)values($madh,$masp,$sl,'$vat',$thanhtien)";
            $db=new connect();
            $db->exec($query);
        }

        public function ttInsertGH($madh,$makh,$ten,$diachi,$tinh,$sdt,$email){
            $query = "INSERT INTO giaohang(Ma_DonHang, ID_KhachHang, Ten, Dia_Chi,Tinh, SDT, Email) VALUES (:madh,:makh,:ten,:diachi,:tinh,:sdt,:email)";
            $db=new connect();
            $stm=$db->getListP($query);

            $stm->bindParam(':madh',$madh);
            $stm->bindParam(':makh',$makh);
            $stm->bindParam(':ten',$ten);
            $stm->bindParam(':diachi',$diachi);
            $stm->bindParam(':tinh',$tinh);
            $stm->bindParam(':sdt',$sdt);
            $stm->bindParam(':email',$email);
            $stm->execute();
        }
    }
?>