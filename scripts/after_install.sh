#!/bin/bash

# Fetch EC2 instance metadata
EC2_INSTANCE_ID=$(curl -s http://44.204.10.144/latest/meta-data/instance-id)
EC2_AZ=$(curl -s http://44.204.10.144/latest/meta-data/placement/availability-zone)

# Update the content in the index.html file
sed -i "s/was deployed/was deployed on $EC2_INSTANCE_ID in $EC2_AZ/g" /var/www/html/index.html
chmod 644 /var/www/html/index.html

