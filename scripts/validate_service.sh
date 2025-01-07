#!/bin/bash

# Verify that the nginx webpage is accessible
curl -v --silent http://localhost:80 2>&1 | grep "Congratulations"
