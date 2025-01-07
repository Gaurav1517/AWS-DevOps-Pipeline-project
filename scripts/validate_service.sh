#!/bin/bash

# verify we can access our webpages successfully
curl -v --silent http://localhost:80 2>&1 | grep Congratulations
