<?php
require_once("dbcontroller.php");
$db_handle = new DBController();
$row_id = $_GET["hw_id"];
$query ="SELECT * FROM handworker_rating WHERE user_id='".$row_id."'" ;

$result = $db_handle->runQuery($query);
?>
<HTML>
<HEAD>
<TITLE>Handworker Rating</TITLE>
<style>
body{width:610;}
.demo-table {width: 100%;border-spacing: initial;margin: 20px 0px;word-break: break-word;table-layout: auto;line-height:1.8em;color:#333;}
.demo-table th {background: #999;padding: 5px;text-align: left;color:#FFF;}
.demo-table td {border-bottom: #f0f0f0 1px solid;background-color: #ffffff;padding: 5px;}
.demo-table td div.feed_title{text-decoration: none;color:#00d4ff;font-weight:bold;}
.demo-table ul{margin:0;padding:0;}
.demo-table li{cursor:pointer;list-style-type: none;display: inline-block;color: #F0F0F0;text-shadow: 0 0 1px #666666;font-size:20px;}
.demo-table .highlight, .demo-table .selected {color:#F4B30A;text-shadow: 0 0 1px #F48F0A;}
</style>
<script src="https://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
<script>
function highlightStar(obj,id) {
	removeHighlight(id);		
	$('.demo-table #handworker_rating-'+id+' li').each(function(index) {
		$(this).addClass('highlight');
		if(index == $('.demo-table #handworker_rating-'+id+' li').index(obj)) {
			return false;	
		}
	});
}
</script>
<?php if( $customer =="Customer") { ?>
<script>
function removeHighlight(id) {
	$('.demo-table #handworker_rating-'+id+' li').removeClass('selected');
	$('.demo-table #handworker_rating-'+id+' li').removeClass('highlight');
}

</script>
<?php } ?>
<script>
function addRatings(obj,id) {
	$('.demo-table #handworker_rating-'+id+' li').each(function(index) {
		$(this).addClass('selected');
		$('#handworker_rating-'+id+' #ratingS').val((index+1));
		if(index == $('.demo-table #handworker_rating-'+id+' li').index(obj)) {
			return false;	
		}
	});
}
function addRating() {
	/* $('.demo-table #handworker_rating-'+<?php echo $row_id; ?>+' li').each(function(index) {
		$(this).addClass('selected');
		$('#handworker_rating-'+<?php echo $row_id; ?>+' #ratingS').val((index+1));
		if(index == $('.demo-table #handworker_rating-'+<?php echo $row_id; ?>+' li').index(obj)) {
			return false;	
		}
	}); */
	$.ajax({
	url: "rating/add_rating.php",
	data:'rating='+$('#handworker_rating-'+<?php echo $row_id; ?>+' #ratingS').val()+'&user_id='+<?php echo $row_id; ?>+'&comment='+$('#review-comment').val()+'&customer_id='+<?php echo $customer_id; ?>+'',
	type: "POST"
	});
}

function resetRating(id) {
	if($('#handworker_rating-'+id+' #ratingS').val() != 0) {
		$('.demo-table #handworker_rating-'+id+' li').each(function(index) {
			$(this).addClass('selected');
			if((index+1) == $('#handworker_rating-'+id+' #ratingS').val()) {
				return false;	
			}
		});
	}
} </script>

</HEAD>
<BODY>
<table class="demo-table">
<tbody>
<tr>
<th><strong>FeedBack</strong></th>
</tr>
<?php
//if(!empty($result)) {
$i=0;
//foreach ($result as $handworker_rating) {
?>
<tr>
<td valign="top">
<div class="feed_title"><?php //echo $handworker_rating["title"]; ?></div>
<div id="handworker_rating-<?php echo $row_id; ?>">
<input type="hidden" name="rating" id="ratingS" value="<?php //echo $handworker_rating["rating"]; ?>" />
<ul onMouseOut="resetRating(<?php echo $row_id; ?>);">
  <?php
  for($i=1;$i<=5;$i++) {
  $selected = "";
 // if(!empty($handworker_rating["rating"]) && $i<=$handworker_rating["rating"]) {
	//$selected = "selected";
  //}
  ?>
  <li class='<?php echo $selected; ?>' onmouseover="highlightStar(this,<?php  echo $row_id; ?>);" onmouseout="removeHighlight(<?php echo $row_id; ?>);" onClick="addRatings(this,<?php echo $row_id; ?>);">&#9733;</li>  
  <?php }  ?>
<ul>
</div>
<div>
<?php 

//echo $handworker_rating["comments"]; 
?>


	<span>comment:</span>
	<br>
	<textarea name="comment" id="review-comment" cols="50" rows="5"></textarea>
	<br>
	<button name="submit-review" id="submit-review" class="btn" onClick="addRating();">
		Submit
	</button>
</div>
</td>
</tr>
<?php		
//}
//}
?>
</tbody>
</table>
</BODY>
</HTML>
<script>
	//$(document).ready(function(){
		$(document).on("click","#submit-review", function(){
		        $.ajax({
	url: "rating/add_rating.php",
	data:'id='+<?php echo $row_id; ?>+'&rating='+$('#handworker_rating-'+<?php echo $row_id; ?>+' #ratingS').val()+'&user_id='+<?php echo $row_id; ?>+'&comment='+$('#review-comment').val()+'&customer_id='+<?php echo $customer_id; ?>+'',
	type: "POST"
	});	
		    });

	//});
</script>