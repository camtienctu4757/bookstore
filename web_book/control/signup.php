<?php
     include("connect.php");
    
    if(isset($_POST["dangky"], $_POST["name"], $_POST["pass1"] 
    , $_POST["pass2"], $_POST["email"], $_POST["addr"], $_POST["phone"])) {
    

    #if(isset($_POST["dangky"], $_POST["name"], $_POST["pass1"] 
    #, $_POST["pass2"], $_POST["email"], $_POST["phone"])) {
    
        $name = $_POST["name"];
        $pass1 = $_POST["pass1"];
        $pass2 = $_POST["pass2"];
        $phone = $_POST["phone"];
        $email = $_POST["email"];
        $addr = $_POST["addr"];
      //kiểm tra xem 2 mật khẩu có giống nhau hay không:
      if($pass1 != $pass2){
        header("location:sign.php");
        setcookie("error", "Mật khẩu không giống nhau", time()+1, "/","", 0);
      }

      else{
        $sql = "select * from users where name = '$name' and phone = '$phone' and email = '$email' and addr = '$addr'";
        $result = mysqli_query($conn, $sql);
        if(mysqli_num_rows($result) == 0){
          $sql = "insert into users values ('','$name','$phone', '$email','$addr', '$pass1')";
          mysqli_query($conn, $sql);
          header("location:../pages/index.php?quanly=dangnhap");
          setcookie("success", "Đăng ký thành công!", time()+1, "/","", 0);
        }
        else{
          header("location:../pages/index.php?quanly=dangky");
          setcookie("error", "Đăng ký thất bại", time()+1, "/","", 0);
        }
        

        
      }
    }

	?>