<?php
    include("../control/connect.php");
?>
<script src="/js/login.js"></script>

<link rel="stylesheet" href="../css/login.css">
<main class="main-body">
    <div class="sign">
        <div class="form">
            <div class="header-form">
                <a href="index.php?quanly=dangnhap" class="non-primary">Đăng nhập</a>
                <a href="index.php?quanly=dangky" class="primary">Đăng ký</a>
            </div>
            <form onsubmit=" return ktra_dk()" class="row g-3 " action="../control/signup.php" method="post" name="formdangky">
                <div class="login-field login-password">
                    <p class="input-name">Họ và tên</p>
                    <input type="text" class="login-input" id="inputUser"
                     placeholder="Nhập họ tên" name="name">
                </div>

                <div class="login-field login-contact">
                    <p class="input-name">Số điện thoại</p>
                    <input type="phonenum"phone class="login-input" id="inputPhone" 
                    placeholder="Nhập số điện thoại" name="phone">
                    
                </div>

                <div class="login-field login-contact">
                    <p class="input-name">Địa chỉ mail</p>
                    <input type="mail" class="login-input" id="inputmail"
                     placeholder="Nhập địa chỉ email" name="email">
                </div>

                <div class="login-field login-password">
                    <p class="input-name">Địa chỉ giao hàng</p>
                    <input type="addr" class="login-input" id="inputAdsress" 
                    placeholder="Nhập địa chỉ giao hàng" name="addr">
                </div>

                <div class="login-field login-password">
                    <p class="input-name">Mật khẩu</p>
                    <input type="passw" class="login-input" id="inputPassword4" 
                    placeholder="Nhập password" name="pass1">
                </div>
                    
                <div class="login-field login-password">
                    <p class="input-name">Nhập lại mật khẩu</p>
                    <input type="passw" class="login-input" id="inputPassword4"
                     placeholder="Nhập lại password" name="pass2">
                </div>
 
                <div class="col-12 btn">
                    <button type="submit" onclick="ktra_dn()" class="btn-login login-with-login" name="dangky">ĐĂNG KÝ</button>
                </div>
            </form>
        </div>
    </div>
</main>