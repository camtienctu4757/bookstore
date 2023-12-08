<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styleadmin.css">
    <title>Admin</title>
</head>

<body> 
    <h3 class="title_admin">WELCOME TO ADMINCP !!!</h3>
    <div class="wraper">
        <?php
        include("./config/connect.php");
        include("./module/header.php");
        include("./module/menu.php");
        include("./module/main.php");
        include("./module/footer.php");
        ?>
    </div>

</body>

</html>