<div class="list_page" style="clear:both;">
    <ul class="page-items">
        <?php
        if ($current > 3) { ?>
            <li class="page-item"><a href="?per=<?= $sosp ?>&page=1">First</a></li>


        <?php }
        ?>

        <?php
        for ($num = 1; $num <= $totalpage; $num++) { ?>
            <?php
            if ($num != $current) { ?>
                <?php
                if ($num > $current - 3 && $num < $current + 3) { ?>
                    <li class="page-item"><a href="?per=<?= $sosp ?>&page=<?= $num ?>"><?= $num ?></a></li>

                <?php  }
                ?>

            <?php  } else {
            ?>
                <strong class="page-item"> <?php echo $num ?></strong>
            <?php }
            ?>

        <?php }
        ?>
        <?php if ($current < $totalpage -3) { 
        ?>
             
            <li class="page-item"><a href="?per=<?= $sosp?>&page=<?= $totalpage ?>">Last</a></li>

         <?php }
         ?>
       
        
        

    </ul>
</div>