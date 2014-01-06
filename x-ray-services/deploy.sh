#!/bin/bash
JAVA_HOME=$JAVA_8_HOME
mvn clean install
$WILDFLY_HOME/bin/jboss-cli.sh --connect --command="undeploy x-ray.war"
$WILDFLY_HOME/bin/jboss-cli.sh --connect --command="deploy --force ./target/x-ray.war"
open http://localhost:8080/x-ray/resources/version/
