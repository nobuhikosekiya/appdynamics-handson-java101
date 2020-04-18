set /P appduser="appdynamics.com username:"
set /P appdpass="appdynamics.com password:"

docker build agent-download -t appdynamics-agent-download:latest --build-arg username=%appduser% --build-arg password=%appdpass%


