<?php
$servername = "localhost";
$dsn = "mysql:host=$servername;dbname=mini-cloud-storage";
$username = "root";
$password = "";

try {
  $db = new PDO($dsn, $username, $password);
  // set the PDO error mode to exception
  $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  // echo "Connected successfully";
} catch (PDOException $e) {
  echo "Connection failed: " . $e->getMessage();
}
