#!/bin/bash
EC2_INSTANCE_ID=$(curl -s http://<IP>:<PORT>/latest/meta-data/instance-id)
EC2_AZ=$(curl -s http://<IP>:<PORT>/latest/meta-data/placement/availability-zone)
sed -i "s/was deployed/was deployed on $EC2_INSTANCE_ID in $EC2_AZ/g" /usr/share/nginx/html/index.html
chmod 644 /usr/share/nginx/html/index.html
