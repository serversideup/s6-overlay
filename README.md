<p align="center">
		<img src="https://raw.githubusercontent.com/serversideup/docker-baseimage-s6-overlay-ubuntu/main/.github/header.png" width="1200" alt="Docker Images Logo">
</p>
<p align="center">
	<a href="https://actions-badge.atrox.dev/serversideup/docker-baseimage-s6-overlay-ubuntu/goto?ref=main"><img alt="Build Status" src="https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2Fserversideup%2Fdocker-baseimage-s6-overlay-ubuntu%2Fbadge%3Fref%3Dmain&style=flat" /></a>
	<a href="https://github.com/serversideup/docker-baseimage-s6-overlay-ubuntu/blob/main/LICENSE" target="_blank"><img src="https://badgen.net/github/license/serversideup/docker-baseimage-s6-overlay-ubuntu" alt="License"></a>
	<a href="https://github.com/sponsors/serversideup"><img src="https://badgen.net/badge/icon/Support%20Us?label=GitHub%20Sponsors&color=orange" alt="Support us"></a>
</p>

# 👉 This is a work in progress
Stay tuned as we keep adding more things 😃

# What is S6 Overlay?
[S6 Overlay](https://github.com/just-containers/s6-overlay) is a process supervisor that allows you to make any app disposable and repeatable within one container, even if you need two processes to run it (like PHP).

Instead of running [Supervisor](https://github.com/Supervisor/supervisor) inside of your container, S6 Overlay was built specifically for the lifecycle of containers -- giving you a more accurate way of bringing containers down and monitoring their health.

# Aren't you only supposed to run one process per container?
In a perfect world, yes. But this isn't a perfect world. See a great explanation called ["The Docker Way" by the S6 Overlay](https://github.com/just-containers/s6-overlay#the-docker-way) team for an excellent explaination.

# Available Docker Images
This is a list of the docker images this repository creates:

| ⚙️ Linux Flavor | 🎁 Version |
|------------------|--------------|
| Ubuntu        | [20.04](https://hub.docker.com/r/serversideup/docker-baseimage-s6-overlay-ubuntu/tags?page=1&ordering=last_updated&name=20.04)   |

### Usage
Simply use this image name pattern in any of your projects:
```sh
serversideup/docker-baseimage-s6-overlay-ubuntu:{{version}}
```
For example... If I wanted to run **Ubuntu 20.04**, I would use this image:
```sh
serversideup/docker-baseimage-s6-overlay-ubuntu:20.04
```

### Updates
✅ The image builds automatically run weekly (Sunday at 0800 UTC) for latest security updates.

# About this project
We're taking the extra effort to open source as much as we can. Not only could this potentially help someone learn a little bit of Docker, but it makes it a *heck of a lot* easier for us to work with you on new open source ideas.

# Submitting issues and pull requests
Since there are a lot of dependencies on these images, please understand that it can make it complicated on mergine your pull request.

We'd love to have your help, but it might be best to explain your intentions first before contributing.

### Like we said -- we're always learning
If you find a critical security flaw, please open an issue or learn more about [our responsible disclosure policy](https://www.notion.so/Responsible-Disclosure-Policy-421a6a3be1714d388ebbadba7eebbdc8).
