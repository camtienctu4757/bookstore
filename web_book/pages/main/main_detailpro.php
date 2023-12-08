  <link rel="stylesheet" href="/css/prduct_detail.css">
  <?php
    $sql_chitiet = "select * from sanpham,danhmuc where sanpham.id_danhmuc = danhmuc.id_danhmuc and
 sanpham.id_sanpham = '$_GET[id]' limit 1;";
    $ctsanpham = mysqli_query($conn, $sql_chitiet);
    $row_pro = mysqli_fetch_array($ctsanpham);


    ?>
  <form action="/pages/main/giohang.php?action=add" method="post" >
      <div class="chitiet-sanpham">

          <div class="sanpham-trai">
              <div class="sampham-img">
                  <img class="img_sanpham" src="<?php echo $row_pro['sanpham_url'] ?>" alt="">
              </div>

              <div class="sanpham_add">
                  <input type="submit" class="add_cart" value="Thêm vào giỏ hàng">
              </div>
          </div>

          <div class="sanpham-phai">
              <p class="name_book"><?php echo $row_pro['tensanpham'] ?></p>
              <div class="sx">
                  <p class="ogrinal">Nhà cung cấp: <b><?php echo $row_pro['nhacungcap'] ?></b> </p>
                  <p class="ogrinal">Nhà xuất bản: <b><?php echo $row_pro['nhaxuatban'] ?></b></p>
              </div>
              <div class="tk">
                  <p class="Author">Tác giả: <b><?php echo $row_pro['tacgia'] ?></b> </p>
                  <p class="design">Hình thức bìa: <b><?php echo $row_pro['hinhthuc'] ?></b></p>
              </div>
              <div class="price">
                  <p class="new_price"><?php echo number_format($row_pro['giakhuyenmai'], 0, '.', ',')  ?>đ</p>
                  <p class="old_price"><?php echo number_format($row_pro['giasanpham'], 0, '.', ',') ?>đ</p>
                  <p class="sale_price">-<?php echo $row_pro['khuyenmai'] ?>%</p>
              </div>
              <div class="number_book">
                  <label>Số lượng:</label>

                  <input class="input-qty" name="quality[<?= $row_pro['id_sanpham'] ?>]" type="text" value="1">
              </div>
          </div>
  </form>

  </div>