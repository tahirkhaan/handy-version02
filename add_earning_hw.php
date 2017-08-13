<?php 
 include_once("config.php");
 // `book_id`, `total_hours`, `total_days`, `total_months`, `total_amount_earned`,

// print_r($_POST);
// exit();

$book_id = $_POST['book_id'];
$total_hours = $_POST['total_hours'];
$total_days = $_POST['total_days'];
$total_months = $_POST['total_months'];
$total_amount_earned = $_POST['total_amount_earned'];



$sql = "INSERT INTO handworker_job_earnings (`book_id`, `total_hours`, `total_days`, `total_months`, `total_amount_earned`) 
	VALUES ('$book_id','$total_hours','$total_days','$total_months','$total_amount_earned')";

	if (mysqli_query($db, $sql)) {
    // echo "New record created successfully";
		 header("location: home.php");
		 
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($db);
}

mysqli_close($db);



?>