read -p  "appdynamics.com Username: " appduser
read -sp "appdynamics.com Password: " appdpass

docker build agent-download -t appdynamics-agent-download:latest --build-arg username=$appduser --build-arg password=$appdpass


