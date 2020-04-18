# appdynamics-handson-java101


You should see data comming into your controller with below 3 steps.

1. Run 'run-agentdownload.sh(.bat)'. This will download AppDynamics agent installer into a docker image named appdynamics-agent-installer:latest. An appdynamics.com account authentication is required.
2. Edit your values in appdynamics-env file.
3. Run 'docker-compose up'. During the image build, it will use the agent installer inside appdynamics-agent-installer:latest.

