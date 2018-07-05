#!/bin/bash
# This is due to a maven 3.1.x+ requirement on this plugin
# https://maven.apache.org/download.cgi

mkdir maventmp
wget http://ftp.wayne.edu/apache/maven/maven-3/3.5.4/binaries/apache-maven-3.5.4-bin.tar.gz -P maventmp
cd maventmp && tar xzvf apache-maven-3.5.4-bin.tar.gz && cd ..
maventmp/apache-maven-3.5.4/bin/mvn clean && maventmp/apache-maven-3.5.4/bin/mvn package
rm -r maventmp
