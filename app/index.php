<?php
$ip = $_SERVER['SERVER_ADDR'];
?>
<!DOCTYPE html>
<html>
<head>
<title>Streamline</title>
<style>
body {
  background-color: lightblue;
  font-family: Arial;
  text-align: center;
}
</style>
</head>
<body>
<h1>Welcome to Streamline - v1</h1>
<p>Server IP: <?php echo $ip; ?></p>
</body>
</html>
