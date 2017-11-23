#!/usr/bin/env bash

# Start Wildfly with the given arguments.
echo "Running jBPM Workbench on JBoss Wildfly..."
exec ./standalone.sh -b $JBOSS_BIND_ADDRESS -c $KIE_SERVER_PROFILE.xml -Dorg.kie.demo=$KIE_DEMO -Dorg.kie.example=$KIE_DEMO -Dorg.uberfire.nio.git.ssh.host=0.0.0.0
exit $?
