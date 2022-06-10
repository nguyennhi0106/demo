<?php
    class KhachHang
    {
        var $id = 0;
        var $user = null;
        var $pass = null;
        var $ten = null;
        var $sdt = null;
        var $email = null;
        var $diachi = null;
         // hàm tạo
         public function __construct(){}
         //phương thức
         public function insertKhachHang($user,$pass,$ten,$sdt,$email,$diachi){
            $query= "INSERT INTO khachhang(ID,User,Pass,Ten,SDT,Email,Dia_Chi)VALUES(null,?,?,?,?,?,?)";
            $db=new connect();
            $stm=$db->getListP($query);
            $stm->execute([$user,$pass,$ten,$sdt,$email,$diachi]);
        }
        public function logUser($user,$pass){
            $select="select * from khachhang where User='$user' and Pass='$pass'";
            $db=new connect();
            $result=$db->getList($select);
            $set= $result->fetch();
            return $set;
        }

        public function insertComment($makh,$masp,$noidung)
        {
            $date=new DateTime('now');
            $ngay=$date->format("Y-m-d");
            $query="INSERT INTO  comment(Ma_Comment,ID_KhachHang,Ma_SP,Noi_Dung,Ngay)values(Null,$makh,$masp,'$noidung','$ngay')";
            $db=new connect();
            $result = $db->getInstance($query);
        }
        
        public function commentAll($masp)
        {

            $select="SELECT Noi_Dung,Ngay FROM comment WHERE Ma_SP = $masp";

            $db=new connect();
            $result=$db->getList($select);
            return $result;
        }

        public function countComment($masp)
        {

            $select="select count(Ma_SP) from comment where Ma_SP=$masp";

            $db=new connect();
            $result=$db->getInstance($select);
            return $result;
        }
    }
?>