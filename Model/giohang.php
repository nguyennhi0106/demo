<?php

    function add_item($masp,$quantity)
    {
        $sp=new SanPham();
        $pro=$sp->spOne($masp);
        if ( $pro['Gia_Giam'] == 0) 
        {
            $cost=$pro['Gia'];
        }
        else
        {
            $cost=$pro['Gia_Giam'];
        }
        if(isset($_SESSION['cart'][$masp]))
        {
            $_SESSION['cart'][$masp]['qty']+=$quantity;
        }
        else
        {
            $ten=$pro['Ten_Sp'];
            $hinh=$pro['Hinh'];
            $total=$quantity*$cost;
            $item=array(
                'mahh'=>$masp,
                'hinh'=>$hinh,
                'name'=>$ten,
                'cost'=>$cost,
                'qty'=>$quantity,
                'total'=>$total,
            );
            $_SESSION['cart'][$masp]=$item;
        }
    }

    function tongTien()
    {
        $tong=0;
        if (isset($_SESSION['cart'])) {
        
            foreach($_SESSION['cart'] as $item)
            {
                $tong+=$item['total'];
            }

        }
        
        return $tong;
    }

    function update_item($masp,$qty)
    {
        if($qty =='tang')
        {
            $_SESSION['cart'][$masp]['qty']=$_SESSION['cart'][$masp]['qty']+1;
            $_SESSION['cart'][$masp]['total']=$_SESSION['cart'][$masp]['qty']*$_SESSION['cart'][$masp]['cost'];
        }
        else
        {
            if($qty =='giam')
            {
                $_SESSION['cart'][$masp]['qty']=$_SESSION['cart'][$masp]['qty']-1;
                if($_SESSION['cart'][$masp]['qty']<=0)
                {
                    $_SESSION['cart'][$masp]['qty']=1;
                    $_SESSION['cart'][$masp]['total']=$_SESSION['cart'][$masp]['qty']*$_SESSION['cart'][$masp]['cost'];
                }
            }
        }
    }

?>