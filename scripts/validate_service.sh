#!/bin/bash

# Verify that the httpd webpage is accessible
curl -v --silent http://localhost:80 2>&1 | grep "<html"

