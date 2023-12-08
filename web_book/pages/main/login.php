<link rel="stylesheet" href="../css/login.css">
<script src="/js/login.js"></script>
 
<main class="main-body">
    <div class="login">
        <div class="form">
            <div class="header-form">
                <a href="index.php?quanly=dangnhap" class="primary">Đăng nhập</a>
                <a href="index.php?quanly=dangky" class="non-primary">Đăng ký</a>
            </div>

            <div class="main-form">
                <form onsubmit=" return ktra_dn()" action="../control/login.php" method="post" name="dangnhap" ">
                    <div class="login-contact login-field">
                        <p class="input-name">Email</p>
                        <input type="text" class="login-input" id="InputEmail1" name="email"
                        placeholder="Nhập email">
                    </div>

                    <div class="login-password login-field">
                        <p class="input-name">Mật Khẩu </p>
                        <input type="password" class="login-input" id="InputPassword1" name="pass"
                        placeholder="Nhập mật khẩu">
                    </div>
                    <div class="forgot">
                        <a class="forgot-text">Quên mật khẩu?</a>
                    </div>
                    <div class="col-12 btn">
                        <button type="submit" class="btn-login login-with-login" name="dangnhap">ĐĂNG NHẬP</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

</main>