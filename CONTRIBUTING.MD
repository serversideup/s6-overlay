# Contribution guide
Thanks for your interest in contributing to this project!

As stated in the README, there are a lot of dependencies on these images, so please understand that it can make it complicated on merging your pull request.

We'd love to have your help, but it might be best to explain your intentions first before contributing.

# Running things locally
Run this command to build both variations on your machine:
```sh
docker build --build-arg BASE_OS_IMAGE="ubuntu:20.04" -t serversideup/s6-overlay:beta-ubuntu-20.04 .
docker build --build-arg BASE_OS_IMAGE="ubuntu:22.04" -t serversideup/s6-overlay:beta-ubuntu-22.04 .
```

#### Inspect & testing images
This is helpful for inspecting images:
```sh
docker run --rm -it serversideup/s6-overlay:beta-ubuntu-22.04 bash
```