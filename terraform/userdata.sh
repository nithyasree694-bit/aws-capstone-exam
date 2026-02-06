#!/bin/bash
set -eux
yum update -y
amazon-linux-extras enable php8.2
yum install -y httpd php php-mysqlnd git
systemctl enable httpd
systemctl start httpd
echo "<?php phpinfo(); ?>" > /var/www/html/index.php
