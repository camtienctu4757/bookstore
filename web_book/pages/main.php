<?php
$conn = mysqli_connect('localhost', 'root', '', 'book_store');
mysqli_set_charset($conn, "utf8");
?>
<div class="main">
    <?php
        if(isset($_GET['quanly'])){
            $temp = $_GET['quanly'];
        }
        else
            $temp = '';

        if($temp == 'sanpham'){
            include("./main/main_sanpham.php");
        }
        elseif($temp == 'giohang'){
           include("./main/giohang.php");
        }
        elseif($temp == 'chitietsanpham'){
            include("./main/main_detailpro.php");
        }
        elseif($temp == 'timkiem'){
            include("./main/main_timkiem.php");
        }
        elseif($temp == 'dangnhap'){
            include("./main/login.php");
        }
        elseif($temp == 'dangky'){
            include("./main/sign.php");
        }
        else{
            include("./main/main_index.php");
        }
            
        
    ?>
</div>