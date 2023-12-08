<!DOCTYPE html>
 <html lang="en">

 <head>
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="stylesheet" href="/css/reset.css">
     <link rel="stylesheet" href="/css/style.css">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
     <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>
     <link rel="stylesheet" href="/fontawesome-free-6.4.0-web/css/all.css">
     <script src="/fontawesome-free-6.4.0-web/js/all.js"></script>
     <link rel="shortcut icon" href="/imges/favico.png" type="image/x-icon">
     <title>BookStore</title>
 </head>

 <body>
     <div class="wrapper">
         <!--header  -->
         <?php
           include("header.php");
        ?>

         <div class="body">
             <?php
                include("slider.php");
                include("catagogy.php");
                include("main.php");
                include("footer.php");
                ?>
             <div class="clear"></div>

         </div>
     </div>

 </body>

 </html>