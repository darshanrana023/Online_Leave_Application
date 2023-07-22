<?php
  $conn = mysqli_connect('localhost','root','','online leave application');
  
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error."<br>");
  }
?>