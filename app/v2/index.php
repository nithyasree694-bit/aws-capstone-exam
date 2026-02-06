<?php
$server_ip = $_SERVER['SERVER_ADDR'] ?? gethostbyname(gethostname());
?>
<!DOCTYPE html>
<html>
<head>
  <title>StreamLine - v2 [New Feature]</title>
  <style>
    body { font-family: Arial, sans-serif; background-color: #e6f7ff; text-align:center; padding-top:50px; }
    .card { display:inline-block; padding:20px; border:1px solid #ddd; border-radius:6px; background:#fff; }
    .ip { color:#333; font-weight:600; }
    a { display:block; margin-top:10px; }
  </style>
</head>
<body>
  <div class="card">
    <h1>Welcome to StreamLine - v2 [New Feature]</h1>
    <p class="ip">Served by: <?php echo htmlspecialchars($server_ip); ?></p>
    <a href="/db_check.php">DB Connectivity Check</a>
  </div>
</body>
</html>
``
