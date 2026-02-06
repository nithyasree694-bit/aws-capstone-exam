#!/bin/bash
# ===== INLINE VARIABLES (edit easily) =====
APP_DIR="/var/www/html"
GIT_REPO="https://github.com/nithyasree694/aws-capstone-exam.git"   # CHANGE_ME
APP_VERSION_PATH="app/v1"  # change to app/v2 when needed
# ==========================================

yum update -y
amazon-linux-extras enable php7.4
yum clean metadata
yum install -y php php-mysqli httpd git

systemctl enable httpd
systemctl start httpd

rm -rf ${APP_DIR}/*
git clone ${GIT_REPO} /tmp/repo
cp -r /tmp/repo/${APP_VERSION_PATH}/* ${APP_DIR}/
chown -R apache:apache ${APP_DIR}
