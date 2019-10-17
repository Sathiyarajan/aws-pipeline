#!/bin/bash
yum update -y
yum install httpd php git -y
service httpd start
chkconfig httpd on
cd /var/www/html
echo "<?php phpinfo();?>" > test.php
git clone https://github.com/acloudguru/dynamodb