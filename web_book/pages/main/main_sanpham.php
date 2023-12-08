<?php
$sql = "select * from sanpham where sanpham.id_danhmuc = '$_GET[id_danhmuc]' order by sanpham.id_sanpham DESC;";
$result = mysqli_query($conn, $sql);
?>
    <ul class="product-list">
        <?php
        while ($row = mysqli_fetch_array($result)) { ?>
            <li product-list__item>
                <a href="index.php?quanly=chitietsanpham&id=<?php echo $row['id_sanpham']?>" class="">
                    <div class="sale">
                        <span class="sale-label"><?php echo $row[9]; ?>%</span>
                    </div>
                    <img src="<?php echo $row[11]; ?>" class="product-img">
                    <p class="book-name"><?php echo $row[2]; ?></p>
                    <p class="price"><?php echo number_format($row['giakhuyenmai'], 0, ',', '.')  ?> đ</p>
                    <p class="old-price"><?php echo number_format($row['giasanpham'],0,',','.').'đ'; ?> </p>
                    <div class="sp-rating">
                        <i class="gold fa-solid fa-star"></i>
                        <i class="gold fa-solid fa-star"></i>
                        <i class="gold fa-solid fa-star"></i>
                        <i class="gold fa-solid fa-star"></i>
                        <i class=" fa-solid fa-star"></i>
                    </div>


                </a>
            </li>

        <?php } ?>



    </ul>
 