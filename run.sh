#!/bin/bash

git pull
cd /data/webapps/JDeploy/
mvn clean package -Dmaven.test.skip=true
cd target/
cp -R jdeploy-1.6.0 /usr/local/jetty/webapps/
#java -jar /usr/local/jetty/start.jar --add-to-startd=http,deploy,jsp,websocket
cd  /usr/local/jetty/
java -jar start.jar jetty.port=9090
