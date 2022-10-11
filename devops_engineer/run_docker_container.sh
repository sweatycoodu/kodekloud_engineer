# Instructions for KodeKloud Engineer Task: Run a Docker Container.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Switch to root user.
sudo su

# Deploy Docker container named nginx_1 with the nginx image.
docker run -d --name nginx_1 nginx:alpine

# Check the status of the container to ensure successful deployment.
docker ps