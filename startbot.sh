#!/bin/bash

# Do not edit this file!



cd /home/her
#npm install --unsafe-perm=true --allow-root

echo "Loading startup.sh..."
bash /home/startup.sh
echo "Starting Bot..."
pm2-runtime start  index.js --node-args="--max-old-space-size=500"
