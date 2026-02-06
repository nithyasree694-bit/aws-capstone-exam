#!/bin/bash
# Quick bootstrap; Ansible will finalize and deploy app
yum update -y
amazon-linux-extras install -y php8.2
yum install -y httpd git
systemctl enable httpd
systemctl start httpd
echo "<?php phpinfo(); ?>" > /var/www/html/index.php
