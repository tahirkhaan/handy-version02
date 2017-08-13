<?php
if(!empty($_POST["rating"]) && !empty($_POST["id"])) {
require_once("../config.php");
require_once("dbcontroller.php");

echo $_POST["rating"];

$db_handle = new DBController();

 $query = "INSERT INTO `handworker_rating`(`user_id`, `customer_id`, `rating`, `comments`) VALUES ('".$_POST["user_id"]."','".$_POST["customer_id"]."','".$_POST["rating"]."','".$_POST["comment"]."')";
$result = $db_handle->updateQuery($query);
}
?>