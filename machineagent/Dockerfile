FROM openjdk:8u151-jre-alpine3.7 AS builder

COPY MachineAgent-*.zip /
RUN mkdir /tmp/unzip \
    && unzip -oq MachineAgent-*.zip -d /tmp/unzip


FROM openjdk:8u151-jre-alpine3.7
RUN apk add --no-cache iproute2 procps sysstat dumb-init bash coreutils
COPY --from=builder /tmp/unzip /opt/appdynamics

COPY entrypoint.sh /opt/appdynamics
RUN chmod +x /opt/appdynamics/entrypoint.sh
#ENTRYPOINT ["/usr/bin/dumb-init"]
#CMD ["sh", "-c", "java ${MACHINE_AGENT_PROPERTIES} -Dappdynamics.sim.enabled=true -Dappdynamics.docker.enabled=true -jar /opt/appdynamics/machineagent.jar"]

WORKDIR /opt/appdynamics/
CMD ["/opt/appdynamics/entrypoint.sh"]
