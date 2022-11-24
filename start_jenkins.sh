#!/usr/bin/bash

export JENKINS_HOME="/app/jenkins/home/"
nohup java -jar /app/jenkins/jenkins.war --httpPort=8080 > /logs/jenkins.log 2>&1 </dev/null &
