FROM openjdk:8

COPY --from=appdynamics-agent-download:latest /dbagent-*.zip /tmp
RUN unzip -d /opt/appdynamics /tmp/dbagent-*.zip
COPY entrypoint.sh /opt/appdynamics
RUN chmod +x /opt/appdynamics/entrypoint.sh
WORKDIR /opt/appdynamics/
CMD ["/opt/appdynamics/entrypoint.sh"]


