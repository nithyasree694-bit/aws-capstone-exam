<?php
$ip = $_SERVER['SERVER_ADDR'] ?? gethostbyname(gethostname());
?>
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <title>StreamLine - v2</title>
  <style>
    body { background:#ffe4e1; font-family: Arial, sans-serif; text-align:center; margin-top:10%; color:#222; }
    h1 { color:#c0392b; }
    .badge { display:inline-block; padding:10px 15px; background:#27ae60; color:#fff; border-radius:6px; }
  </style>
</head>
<body>
  <h1>Welcome to StreamLine - v2 [New Feature]</h1>
  <p>Server IP: <?php echo htmlspecialchars($ip); ?></p>
  <div class="badge">Running via ALB</div>
</body>
</html>
