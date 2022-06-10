<?php
    class SanPham 
    {
        var $masp = 0;
        var $tensp = null;
        var $mota = null;
        var $gia = 0;
        var $giagiam = 0;
        var $hinhanh = null;
        var $soluong = 0;
        var $ngaythem = null;
        var $ngayupdate = null;
        var $trangthai = null;
        var $nhomsp = 0;
        var $soluocxem = 0;
        var $maloai = null;
        var $mathuonghieu = null;
        var $idadmin = 0;
        //hàm tạo
        public function __construct(){}

        //sản phẩm mới
            //sản phẩm mới ở trang home
            public function spMoi() {
                $select = "select * from sanpham order by MA_SP desc limit 5";
                $db = new connect();
                $result = $db->getList($select);
                return $result;
            }
            //tất cả sản phẩm mới
            public function spMoiAll() {
                $select = "select * from sanpham order by MA_SP desc";
                $db = new connect();
                $result = $db->getList($select);
                return $result;
            }
            //sản phẩm mới theo page
            public function spMoiPage($start,$limit) {
                $select = "select * from sanpham order by MA_SP desc limit $start,$limit";
                $db = new connect();
                $result = $db->getList($select);
                return $result;
            }

        //sản phẩm giảm giá
            //sản phẩm giảm giá ở trang home
            public function spGiamGia() {
                $select = "select * from sanpham where Gia_Giam >0 limit 5";
                $db = new connect();
                $result = $db->getList($select);
                return $result;
            }
            //tất cả sản phẩm giảm giá
            public function spGiamGiaAll() {
                $select = "select * from sanpham where Gia_Giam >0";
                $db = new connect();
                $result = $db->getList($select);
                return $result;
            }
            //sản phẩm giảm giá theo page
            public function spGiamGiaPage($start,$limit) {
                $select = "select * from sanpham where Gia_Giam >0 limit $start,$limit";
                $db = new connect();
                $result = $db->getList($select);
                return $result;
            }

        //sản phẩm ở trang sản phẩm
            //danh sách tất cả sản phẩm
            public function spAll() {
                $select = "select * from sanpham";
                $db = new connect();
                $result = $db->getList($select);
                return $result;
            }
            //danh sách sản phẩm theo page
            public function spPage($start,$limit) {
                $select = "select * from sanpham limit $start,$limit";
                $db = new connect();
                $result = $db->getList($select);
                return $result;
            }
        //lấy 1 sản phẩm theo id
        public function spOne($id) {
            $select = "select * from sanpham where MA_SP=$id";
            $db = new connect();
            $result = $db->getInstance($select);
            return $result;
        }

        public function spDieuKien($id) {
            $select = "select * from sanpham where MA_SP=$id";
            $db = new connect();
            $result = $db->getInstance($select);
            return $result;
        }

        // danh sách sản phẩm theo nhóm
        public function spNhom($nhom) {
            $select = "select * from sanpham where Nhom_SP=$nhom";
            $db = new connect();
            $result = $db->getList($select);
            return $result;
        }

        //cập nhật số lược xem của sản phẩm
        public function spUpdate($masp){
            $db=new connect();

            //lấy số lược xem ra
            $select= "SELECT So_Luoc_Xem FROM `sanpham` WHERE MA_SP = $masp";
            $slx= $db->getInstance($select);

            //cập nhật lại số lược xem
            $slxnew=$slx[0]+1;
            $query= "UPDATE sanpham SET So_Luoc_Xem= $slxnew WHERE MA_SP =$masp";
            $result=$db->getInstance($query);
        }
        //danh sách sản phẩm tìm kiếm
        public function spSearch($search) {
            $select = "select * from sanpham where Ten_Sp like '%$search%'";
            $db = new connect();
            $result = $db->getList($select);
            return $result;
        }
        //danh sách sản phẩm yêu thích
        public function spYT($masp){
            //SELECT a.MA_SP,a.Ten_Sp,a.Gia,a.Gia_Giam,a.Hinh,a.So_Luoc_Xem FROM sanpham a, yeuthich b WHERE a.MA_SP = b.MA_SP and b.ID = 4
            $select = "SELECT a.MA_SP,a.Ten_Sp,a.Gia,a.Gia_Giam,a.Hinh,a.So_Luoc_Xem FROM sanpham a, yeuthich b WHERE a.MA_SP = b.MA_SP and b.ID = $masp";
            $db = new connect();
            $result = $db->getList($select);
            return $result;
        }
    }
?>