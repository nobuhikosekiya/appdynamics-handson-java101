#!/bin/sh


java -Dappdynamics.controller.hostName=${APPDYNAMICS_CONTROLLER_HOST_NAME} -Dappdynamics.controller.port=${APPDYNAMICS_CONTROLLER_PORT}  -Dappdynamics.agent.accountAccessKey=${APPDYNAMICS_AGENT_ACCOUNT_ACCESS_KEY} -Dappdynamics.agent.accountName=${APPDYNAMICS_AGENT_ACCOUNT_NAME} -Dappdynamics.controller.ssl.enabled=${APPDYNAMICS_CONTROLLER_SSL_ENABLED} -Dappdynamics.sim.enabled=true -Dappdynamics.docker.enabled=true -jar /opt/appdynamics/machineagent.jar
