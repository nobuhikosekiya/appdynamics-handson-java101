FROM alpine:3.11 as builder


RUN apk update; apk add --no-cache curl jq

#The document on downloading AppDynamics agents can be found here for referene
#https://docs.appdynamics.com/display/PRO45/Download+AppDynamics+Software

ARG username
ARG password

RUN TOKEN=`curl -X POST -d "{\"username\": \"$username\", \"password\": \"$password\", \"scopes\": [\"download\"]}" https://identity.msrv.saas.appdynamics.com/v2.0/oauth/token  |  jq '.access_token' --raw-output` && if [ $TOKEN == "null" ]; then echo "Username or password might be wrong !"; exit 1; fi && \
DOWNLOAD_METADATA=`curl https://download.appdynamics.com/download/downloadfilelatest/`  && \
DOWNLOAD_PATH=`echo $DOWNLOAD_METADATA | jq 'map(select(.title == "Database Agent (zip)"))[0].download_path' --raw-output` && curl -L -O -H "Authorization: Bearer $TOKEN" $DOWNLOAD_PATH  && \
DOWNLOAD_PATH=`echo $DOWNLOAD_METADATA | jq 'map(select(.title == "Java Agent - Sun and JRockit JVM (zip)"))[0].download_path' --raw-output` && curl -L -O -H "Authorization: Bearer $TOKEN" $DOWNLOAD_PATH && \
DOWNLOAD_PATH=`echo $DOWNLOAD_METADATA | jq 'map(select(.title == "Machine Agent (zip)"))[0].download_path' --raw-output` && curl -L -O -H "Authorization: Bearer $TOKEN" $DOWNLOAD_PATH 

RUN ls -l
