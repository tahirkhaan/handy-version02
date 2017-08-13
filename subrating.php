  <?php

    $sql ="SELECT * FROM `handworker_rating` where user_id = ".$hw_id;
    
    $result = mysqli_query($db, $sql);
    
   
    ?>

  <div class="subrating">
  
    <h3 style="    padding-left: 20px;
    color: rgba(2, 24, 88, 0.68);
    font-weight: 900;
    padding-bottom: 40px;
    padding-top: 40px;
    font-size: -webkit-xxx-large;">Handworker Rating</h3>


   <?php 
   
// /mysql_close($db);
     ?> 
     
 <?php

         if (mysqli_num_rows($result) > 0) 
    {
        while($row = mysqli_fetch_assoc($result))

        {

            
        ?>
        <div class="star-rating">
      <?php for($i=1; $i<=5; $i++) { ?>
      <?php  if($i <= $row['rating']) {?><span class="fa fa-star" data-rating="<?php echo $row['rating']; ?>"></span> <?php } else { ?> <span class="fa fa-star-o" data-rating="<?php echo $row['rating']; ?>"></span> <?php } ?>
        
 <?php } ?>
 </div>
<!--h3 style="padding-left: 15px;">

<span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span> </h3-->

<ul class="list-inline">
    <li><?php echo $row['comments']; ?></li>
</ul>
 


 <?php
        }

   echo"</div>";    } else {
            echo "0 results";
        }
if($customer =="Customer") {
    //if(isset($_SESSION['hw_login_user'])){

         include "rating/index.php";
        //mysqli_close($db);
    //}
 }
    ?>
<style>
.star-rating {
  line-height:32px;
  font-size:1.25em;
}

.star-rating .fa-star{ color: #ffd706;}
</style>
