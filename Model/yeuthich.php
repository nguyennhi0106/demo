<?php

    class YeuThich
    {
        var $id = 0;
        var $masp = 0;

        function __construct() {}
        function insertSPYT($id,$masp){
            $select = "INSERT INTO `yeuthich`(`ID`, `MA_SP`) VALUES (?,?)";
            $db = new connect();
            $stm=$db->getListP($select);
            $stm->execute([$id,$masp]);
        }

        function checkYT($makh,$masp) {
            $select = "select * from yeuthich where `ID` = $makh and `MA_SP` = $masp";
            $db = new connect();
            $result = $db->getInstance($select);
            return $result;
        }

        function deleteYT($makh,$masp) {
            $select = "DELETE from yeuthich where `ID` = $makh and `MA_SP` = $masp";
            $db = new connect();
            $result = $db->getInstance($select);
        }

        function countYT($makh) {
            $select = "select count(MA_SP) from yeuthich where `ID` = $makh";
            $db = new connect();
            $result = $db->getInstance($select);
            return $result;
        }
    }
    
?>