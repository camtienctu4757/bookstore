<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/css/reset.css">
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/giohang.css">
<link rel="stylesheet" href="/css/login.css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/fontawesome-free-6.4.0-web/css/all.css">
<script src="/fontawesome-free-6.4.0-web/js/all.js"></script>
<link rel="shortcut icon" href="/imges/favico.png" type="image/x-icon">
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/js/all.min.js" integrity="sha512-fD9DI5bZwQxOi7MhYWnnNPlvXdp/2Pj3XSTRrFs5FQa4mizyGLnJcN6tuvUS6LbmgN1ut+XGSABKvjN0H6Aoow==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<?php
session_start();
include("../header.php");
include("../../control/connect.php");
?>

<div class="main_giohang">
    <h4>GIỎ HÀNG</h4>
    <div class="head_giohang">
        <div class="head-col1">
            Sản phẩm
        </div>
        <div class="head-col2">
            Số lượng
        </div>
        <div class="head-col3">
            Thành tiền
        </div>
        <div class="head-col4">
        </div>
    </div>

<form action="giohang.php?action=submit" method="post">
        <div class="body_giohang">
            <?php
            //session_destroy();

            $succeed = false;
            if (!isset($_SESSION['cart'])) {
                $_SESSION['cart'] = array();
            }

            if (isset($_GET['action'])) {
                function update_cart($add = false)
                {
                    foreach ($_POST['quality'] as $id_sanpham => $quality) {
                        //neu so luong bang 0 thi khoa khoi gio hang
                        if ($quality == 0) {
                            unset($_SESSION['cart'][$id_sanpham]);
                        } else {
                            if ($add) {
                                $_SESSION['cart'][$id_sanpham] += $quality;
                                // var_dump($_SESSION['cart'][$id_sanpham]); exit;
                            } else {
                                $_SESSION['cart'][$id_sanpham] = $quality;
                            }
                        }
                    }
                };

                switch ($_GET['action']) {
                        // Them san pham vao gio hang
                    case 'add':
                        update_cart(true);
                        header("location:./giohang.php");
                        break;

                        //xoa sap pham khoi gio hang

                    case 'delete':
                        if (isset($_GET['idx'])) {
                            unset($_SESSION['cart'][$_GET['idx']]);
                        }
                        header("location:./giohang.php");
                        break;

                        //cap nhat gio hang hoac dat hang
                    case 'submit':
                        if (isset($_POST['update-click'])) { //cap nhat so luong san pham
                            update_cart();
                            header("location:./giohang.php");
                            break;
                        } elseif (isset($_POST['order-click'])) { //dat hang
                            if (empty($_POST['quality'])) {
                                echo '<script type="text/javascript">window.onload =function () { alert("Giỏ hàng rỗng !!!"); }</script>';
                            } elseif($_POST['name']==''||$_POST['phone']==''||$_POST['addr']==''){
                                echo '<script type="text/javascript">window.onload =function () { alert("Vui lòng điền đủ thông tin để đặt hàng!!!"); }</script>';

                            }
                            elseif(strlen($_POST['phone'])<10){
                                echo '<script type="text/javascript">window.onload =function () { alert("Số điện thoại không hợp lệ!!!"); }</script>';
                                
                            }
                             
                            else{
$laysanpham = "select * from sanpham where id_sanpham in (" . implode(",", array_keys($_POST['quality'])) . ");";
                                $products = mysqli_query($conn, $laysanpham);
                                $total = 0;
                                $oder_pro_array = array();
                                while ($row = mysqli_fetch_array($products)) {
                                    $oder_pro_array[] = $row;
                                    $total += $row['giakhuyenmai'] * $_POST['quality'][$row['id_sanpham']];
                                }
                                $inser_oder = mysqli_query($conn, " INSERT INTO `don_hang`(`id_donhang`, `ten_kh`, `sodienthoai`, `diachi`, `ghichu`, `tongtien`, `ngay_dathang`) 
                                VALUES ('','" . $_POST['name'] . "','" . $_POST['phone'] . "',
                                '" . $_POST['addr'] . "','" . $_POST['note'] . "','" . $total . "',CURRENT_DATE)");
                                $oder_id = $conn->insert_id;
                                $insert_string = "";

                                foreach ($oder_pro_array as $key => $pro_item) {

                                    $insert_string .= "('','" . $oder_id . "','" . $pro_item['id_sanpham'] . "','" . $_POST['quality'][$pro_item['id_sanpham']] . "','" . $pro_item['giakhuyenmai'] . "')";
                                    if ($key != count($oder_pro_array) - 1) {

                                        $insert_string .= ",";
                                    }
                                }
                                mysqli_query($conn, "INSERT INTO `chitiet_donhang`(`id`, `id_order`, `id_sanpham`, `soluong`, `gia`) VALUES " . $insert_string . "");
                                $succeed = "Đặt hàng thành công !!!";

                                

                            }
                            if(!empty($succeed)){   
                                echo '<script type="text/javascript">window.onload =
                                 function () { alert("Đặt hàng thành công !!!"); }</script>';
                                unset($_SESSION['cart']);
                            }

                        }
                }
            }

            ?>

            <?php
            $tongtien = 0;
            if (!empty($_SESSION['cart'])) {
                $sql_laysanpham = "select * from sanpham where id_sanpham in (" . implode(",", array_keys($_SESSION['cart'])) . ");";
                $ctsanpham = mysqli_query($conn, $sql_laysanpham);
                while ($row = mysqli_fetch_array($ctsanpham)) { ?>
                    <div class="giohang_row">
                        <div class="giohang-col1">
                            <img style="width:18%;" src="<?php echo $row['sanpham_url'] ?>" alt="">
                            <p class="pro_name"><?php echo $row['tensanpham'] ?></p>
                        </div>
                            <div class="giohang-col2">
                            <input class="input-qty" name="quality[<?= $row['id_sanpham'] ?>]" type="text" value="<?= $_SESSION['cart'][$row['id_sanpham']] ?>">
                        </div>
                        <div class="giohang-col3">
                            <?php echo number_format($row['giakhuyenmai'] * $_SESSION['cart'][$row['id_sanpham']], 0, '.', ',')   ?>
                        </div>
                        <div class="giohang-col4">
                            <a href="giohang.php?action=delete&idx=<?= $row['id_sanpham'] ?>">Xóa</a>
                        </div>
                        <?php
                        $tongtien += $row['giakhuyenmai'] * $_SESSION['cart'][$row['id_sanpham']];
                        ?>

                    </div>
            <?php }
            }

            ?>
            <div class="btn_update">
                <input type="submit" value="Cập nhật giỏ hàng" name="update-click" class="update-item">
            </div>

            <div class="row-money">
                <div class="total">
                    Tổng tiền
                </div>
                <div class="money">
                    <?php
                    if (is_null($tongtien)) {
                        echo "0 VND";
                    } else {
                        echo number_format($tongtien, 0, '.', ',');
                    }

                    ?> VNĐ

                </div>
            </div>
        </div>

        <h4>THÔNG TIN GIAO HÀNG</h4>

        <div class="infor-customer">
            <div class="input__customer-item login-field">
                <p>Họ Tên:</p>
                <input type="text" value="" name="name" placeholder="Họ và tên khách hàng" class="input_infor">
            </div>
            <div class="input__customer-item login-field">
                <p>Số điện thoại:</p>
                <input type="text" value="" name="phone" placeholder="Số điện thoại" class="input_infor">
            </div>
            <div class="input__customer-item login-field">
                <p>Địa chỉ giao hàng:</p>
                <input type="text" value="" name="addr" placeholder="Số nhà,xã,phường, thị trấn" class="input_infor">
            </div>
            <div class="input__customer-item login-field">
                <p>Ghi chú:</p>
                <textarea name="note" id="" cols="30" rows="5" class="input_infor" placeholder="Nhập ghi chú cho đơn hàng"></textarea>
            </div>

        </div>

        <div class="btn">
            <input type="submit" value="Đặt Hàng" name="order-click" class="btn_order">
        </div>




    </form>
