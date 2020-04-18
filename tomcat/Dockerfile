FROM maven:3.6.3-jdk-8 AS builder

COPY Cars_Sample_App/ /usr/src/myapp/
WORKDIR /usr/src/myapp/
RUN mvn package

FROM tomcat:8.5.35

RUN echo 'export CATALINA_OPTS="$CATALINA_OPTS -Dmysql.host=${MYSQL_HOST} -Dmysql.port=${MYSQL_PORT}"' >> /usr/local/tomcat/bin/setenv.sh

COPY --from=builder /usr/src/myapp/target/Cars_Sample_App-1.0-SNAPSHOT.war  /usr/local/tomcat/webapps/Cars_Sample_App.war
COPY context.xml /usr/local/tomcat/conf/context.xml

EXPOSE 8080
CMD ["catalina.sh", "run"]


#FROM appdynamics-agent-download:latest AS agent

COPY --from=appdynamics-agent-download:latest /AppServerAgent*.zip /tmp

RUN echo 'export CATALINA_OPTS="$CATALINA_OPTS -javaagent:/opt/appdynamics/appagent/javaagent.jar -Dappdynamics.controller.hostName=${APPDYNAMICS_CONTROLLER_HOST_NAME} -Dappdynamics.controller.port=${APPDYNAMICS_CONTROLLER_PORT}  -Dappdynamics.agent.accountAccessKey=${APPDYNAMICS_AGENT_ACCOUNT_ACCESS_KEY} -Dappdynamics.agent.accountName=${APPDYNAMICS_AGENT_ACCOUNT_NAME} -Dappdynamics.controller.ssl.enabled=${APPDYNAMICS_CONTROLLER_SSL_ENABLED} -Dappdynamics.agent.applicationName=${APPDYNAMICS_APP_AGENT_APPLICATION_NAME} -Dappdynamics.agent.tierName=${APPDYNAMICS_APP_AGENT_TIER_NAME} -Dappdynamics.agent.nodeName=${APPDYNAMICS_APP_AGENT_NODE_NAME} "' >> /usr/local/tomcat/bin/setenv.sh

RUN mkdir -p /opt/appdynamics/appagent
RUN unzip /tmp/AppServerAgent*.zip -d /opt/appdynamics/appagent/


