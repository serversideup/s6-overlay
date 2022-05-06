# Contribution guide
Thanks for your interest in contributing to this project!

As stated in the README, there are a lot of dependencies on these images, so please understand that it can make it complicated on merging your pull request.

We'd love to have your help, but it might be best to explain your intentions first before contributing.

# Running things locally
Run this command to build the local image on your machine:
```sh
docker build -t localhost/docker-baseimage-s6-overlay-ubuntu .
```
The above command will build an image called `localhost/docker-baseimage-s6-overlay-ubuntu`.

#### Inspect & testing images
This is helpful for inspecting images:
```sh
docker run --rm -it localhost/docker-baseimage-s6-overlay-ubuntu bash
```