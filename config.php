<?php
   define('DB_SERVER', 'localhost');
   define('DB_USERNAME', 'root');
   define('DB_PASSWORD', '');
   define('DB_DATABASE', 'handwork');
   $db = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
   if (!$db) {
    die("Connection failed: " . mysqli_connect_error());
}
   require_once ('mysql/MysqliDb.php');
   $db2 = new MysqliDb (DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
?>