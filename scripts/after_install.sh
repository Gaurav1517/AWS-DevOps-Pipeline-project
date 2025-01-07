#!/bin/bash

# Fetch EC2 instance metadata
EC2_INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)
EC2_AZ=$(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone)

# Update the content in the index.html file
sed -i "s/was deployed/was deployed on $EC2_INSTANCE_ID in $EC2_AZ/g" /usr/share/nginx/html/index.html
chmod 644 /usr/share/nginx/html/index.html
