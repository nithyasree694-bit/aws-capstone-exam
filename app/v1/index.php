<?php
// ======== EDIT THESE VARIABLES ========
// Optional: used by db_check.php if you choose to connect to RDS
$DB_HOST = getenv('DB_HOST') ?: 'RDS_ENDPOINT_HERE';
$DB_USER = getenv('DB_USER') ?: 'admin';
$DB_PASS = getenv('DB_PASS') ?: 'CHANGE_ME_STRONG_PASSWORD';
$DB_NAME = getenv('DB_NAME') ?: 'streamlinedb';
// ======================================

$server_ip = $_SERVER['SERVER_ADDR'] ?? gethostbyname(gethostname());
?>
<!DOCTYPE html>
<html>
<head>
  <title>StreamLine - v1</title>
  <style>
    body { font-family: Arial, sans-serif; background-color: #f7f7f7; text-align:center; padding-top:50px; }
    .card { display:inline-block; padding:20px; border:1px solid #ddd; border-radius:6px; background:#fff; }
    .ip { color:#555; }
    a { display:block; margin-top:10px; }
  </style>
</head>
<body>
  <div class="card">
    <h1>Welcome to StreamLine - v1</h1>
    <p class="ip">Served by: <?php echo htmlspecialchars($server_ip); ?></p>
    <a href="/db_check.php">DB Connectivity Check</a>
  </div>
</body>
</html>
