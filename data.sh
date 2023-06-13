#!/bin/bash
yum update -y
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service
echo "candy crush from $(hostname -f)" >/var/www/html/index.html

