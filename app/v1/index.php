<?php
// ----------------------------
// StreamLine Corp - v1 (PHP)
// VARIABLES (inline):
$brand = "Streamline";
$version = "v1";
// ----------------------------

// Get server IP
$server_ip = $_SERVER['SERVER_ADDR'] ?? gethostbyname(gethostname());
?>
<!DOCTYPE html>
<html>
<head>
  <title>Welcome to <?php echo $brand; ?> - <?php echo $version; ?></title>
  <style>
    body { font-family: Arial, sans-serif; background: #f0f6ff; color: #222; text-align:center; padding-top: 10%; }
    .card { display:inline-block; padding: 24px 36px; border-radius: 12px; background: #fff; box-shadow:0 10px 25px rgba(0,0,0,0.1); }
    h1 { margin: 0 0 10px; }
    .ip { color:#3367d6; font-weight:bold; }
  </style>
</head>
<body>
  <div class="card">
    <h1>Welcome to <?php echo $brand; ?> - <?php echo $version; ?></h1>
    <p>Server IP: <span class="ip"><?php echo htmlspecialchars($server_ip); ?></span></p>
  </div>
</body>
</html>
``
