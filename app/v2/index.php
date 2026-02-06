<?php
// ===== INLINE VARIABLES (edit easily) =====
$APP_VERSION = "v2 [New Feature]";
$TITLE       = "Welcome to StreamLine - $APP_VERSION";
$BG_COLOR    = "#e3f2fd"; // different color
// ==========================================
$ip = $_SERVER['SERVER_ADDR'] ?? gethostbyname(gethostname());
?>
<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <title><?php echo $TITLE; ?></title>
  </head>
  <body style="font-family:Arial, Helvetica, sans-serif; background:<?php echo $BG_COLOR; ?>; margin:40px;">
    <h1><?php echo $TITLE; ?></h1>
    <p>Server IP: <b><?php echo $ip; ?></b></p>
  </body>
</html>
``
