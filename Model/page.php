<?php
    class Page
    {
        function __construct(){}
        function findPage($count,$limit){
            $page = (($count%$limit)==0) ? $count/$limit :floor($count/$limit)+1;
            return $page;
        }
        function findStart($limit){
            $start = (!isset($_GET['page']) || $_GET['page']==1)?0:($_GET['page']-1)*$limit;
            return $start;
        }
    }
?>