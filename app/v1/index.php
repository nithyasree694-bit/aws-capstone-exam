<?php
$ip = $_SERVER['SERVER_ADDR'] ?? gethostbyname(gethostname());
?>
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <title>Streamline - v1</title>
  <style>
    body { background:#f0f8ff; font-family: Arial, sans-serif; text-align:center; margin-top:10%; color:#333; }
    h1 { color:#2c3e50; }
  </style>
</head>
<body>
  <h1>Welcome to Streamline - v1</h1>
  <p>Server IP: <?php echo htmlspecialchars($ip); ?></p>
</body>
</html>
