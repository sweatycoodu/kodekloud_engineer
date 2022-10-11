# Instructions for KodeKloud Engineer Task: Pull Docker Image.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Switch to root user.
sudo su

# Pull the busybox:mus1 image, and retag it as busybox:news.
docker pull busybox:musl && docker tag busybox:musl busybox:news

# Check the status of the image and ensure it has been pulled and retagged.
docker images
