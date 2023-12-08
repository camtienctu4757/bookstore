<?php
    include("connect.php");
    #echo ($_POST["email"]);
    if(isset($_POST["dangnhap"], $_POST["email"], $_POST["pass"])) {
        $email = $_POST["email"];
        $pass = $_POST["pass"];
        //kiểm tra xem 2 mật khẩu có giống nhau hay không:
        $sql = "select * from users where email = '$email' and pass = '$pass'";
        $result = mysqli_query($conn, $sql);
        if(mysqli_num_rows($result)){
            #echo"dang nhap thanh cong";
            header("location:../pages/index.php");
            setcookie("success", "Đăng nhập thành công!", time()+1, "/","", 0);
        }
    else{
        #echo "<script type="text/javascript">ktra_dn()</script>';";
        header("location: ../pages/index.php?quanly=dangnhap");
        setcookie("error", "Đăng nhập thất bại", time()+1, "/","", 0);
    }
    

            
    }       
?>