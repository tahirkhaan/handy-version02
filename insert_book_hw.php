<?php
include_once("config.php");
//INSERT INTO `user`(`user_id`, `user_type`, `user_name`, `user_image`, `user_email`, `user_pass`, `user_contact`, `user_address`, `date`) VALUES ([value-1],[value-2],[value-3],[value-4],[value-5],[value-6],[value-7],[value-8],[value-9])


// `customer_id`, `handworker_id`, `subcategory_id`, `workplace`, `date`, `time`

$customer_id = $_POST['customer_id'];
$handworker_id = $_POST['handworker_id'];
$subcategory_id = $_POST['subcategory_id'];
$workplace = $_POST['workplace'];
$date = $_POST['date'];
$time = $_POST['time'];



$sql = "INSERT INTO book_handworker (`customer_id`, `handworker_id`, `subcategory_id`, `workplace`, `date`, `time`) 
	VALUES ('$customer_id','$handworker_id','$subcategory_id','$workplace','$date','$time')";

	if (mysqli_query($db, $sql)) {
    header("location: booking_sucess.php");
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($db);
}

mysqli_close($db);



?>