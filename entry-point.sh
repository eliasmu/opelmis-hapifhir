#!/bin/bash

# Run the consul registration
export PATH=$PATH:/node-v8.11.4-linux-x64/bin

if [ -d "/consul" ]; then
    cd /consul
    npm install
    node registration.js -c register -f config.json
else
  echo 'No consule found'
fi

cd /usr/local/tomcat/

./bin/catalina.sh run
