#!/bin/bash

java -Ddbagent.name=${APPDYNAMICS_DATABASE_AGENT_NAME} -Dappdynamics.controller.hostName=${APPDYNAMICS_CONTROLLER_HOST_NAME} -Dappdynamics.controller.port=${APPDYNAMICS_CONTROLLER_PORT} -Dappdynamics.agent.accountName=${APPDYNAMICS_AGENT_ACCOUNT_NAME} -Dappdynamics.agent.accountAccessKey=${APPDYNAMICS_AGENT_ACCOUNT_ACCESS_KEY} -Dappdynamics.controller.ssl.enabled=${APPDYNAMICS_CONTROLLER_SSL_ENABLED} -XX:+HeapDumpOnOutOfMemoryError -XX:OnOutOfMemoryError="kill -9 %p" -jar db-agent.jar

