<p align="center">
		<img src="https://raw.githubusercontent.com/serversideup/s6-overlay/main/.github/header.png" width="1200" alt="Docker Images Logo">
</p>
<p align="center">
	<a href="https://actions-badge.atrox.dev/serversideup/s6-overlay/goto?ref=main"><img alt="Build Status" src="https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2Fserversideup%2Fs6-overlay%2Fbadge%3Fref%3Dmain&style=flat" /></a>
	<a href="https://github.com/serversideup/s6-overlay/blob/main/LICENSE" target="_blank"><img src="https://badgen.net/github/license/serversideup/s6-overlay" alt="License"></a>
	<a href="https://github.com/sponsors/serversideup"><img src="https://badgen.net/badge/icon/Support%20Us?label=GitHub%20Sponsors&color=orange" alt="Support us"></a>
  <br />
  <a href="https://hub.docker.com/r/serversideup/s6-overlay/"><img alt="Docker Pulls" src="https://img.shields.io/docker/pulls/serversideup/s6-overlay"></a>
  <a href="https://community.serversideup.net"><img alt="Discourse users" src="https://img.shields.io/discourse/users?color=blue&server=https%3A%2F%2Fcommunity.serversideup.net"></a>
  <a href="https://serversideup.net/discord"><img alt="Discord" src="https://img.shields.io/discord/910287105714954251?color=blueviolet"></a>
</p>

# Available Docker Images
This is a list of the docker images this repository creates:

To make it easy for you, there are also other tags available to give you the best experience:
| 🏷️ Tag                                      | 👇 Example              | 📖 More Info      |
|---------------------------------------------|-------------------------|---------------|
| **Operating System Version**                | `ubuntu-22.04`                | Select your operating system version with the latest version of S6 Overlay. |
| **Operating System Version + S6 Version**   | `ubuntu-22.04-v3.1.4.2`       | Select your operating system version and version of S6 Overlay |
| **S6 Overlay Version**                      | `v3.1.4.2`                    | Use the latest operating system at the time, but a specific version of S6 overlay |
| **Latest**                                  | `latest`                      | Use the latest version of Ubuntu and S6 Overlay |

### Other options
Here are a few examples. We also have beta images and "edge" images for pull requests.

| ⚙️ Operating System | 🎁 Version |
|------------------|--------------|
| Ubuntu 20.04      | [ubuntu-20.04](https://hub.docker.com/r/serversideup/s6-overlay/tags?page=1&ordering=last_updated&name=20.04), [beta-ubuntu-20.04](https://hub.docker.com/r/serversideup/s6-overlay/tags?page=1&ordering=last_updated&name=beta-20.04), [edge-{{PR number}}](https://hub.docker.com/r/serversideup/s6-overlay/tags?page=1&ordering=last_updated&name=edge)  |
| Ubuntu 22.04      | [ubuntu-22.04](https://hub.docker.com/r/serversideup/s6-overlay/tags?page=1&ordering=last_updated&name=22.04), [beta-ubuntu-22.04](https://hub.docker.com/r/serversideup/s6-overlay/tags?page=1&ordering=last_updated&name=beta-22.04), [edge-{{PR number}}](https://hub.docker.com/r/serversideup/s6-overlay/tags?page=1&ordering=last_updated&name=edge)  |

# What is S6 Overlay?
[S6 Overlay](https://github.com/just-containers/s6-overlay) is a process supervisor that allows you to make any app disposable and repeatable within one container, even if you need two processes to run it (like PHP).

Instead of running [Supervisor](https://github.com/Supervisor/supervisor) inside of your container, S6 Overlay was built specifically for the lifecycle of containers -- giving you a more accurate way of bringing containers down and monitoring their health.

# Aren't you only supposed to run one process per container?
In a perfect world, yes. But this isn't a perfect world. See a great explanation called ["The Docker Way" by the S6 Overlay](https://github.com/just-containers/s6-overlay#the-docker-way) team for an excellent explanation.

### Usage
Simply use this image name pattern in any of your projects:
```sh
serversideup/s6-overlay:{{flavor}}-{{version}}
```
For example... If I wanted to run **Ubuntu 20.04**, I would use this image:
```sh
serversideup/s6-overlay:ubuntu-20.04
```

### Updates
✅ The image builds automatically run weekly (Sunday at 0800 UTC) for latest security updates.

# Where do you host your stuff?
We get this question often. Our biggest principle is: **your infrastructure should be able to run anywhere.**

We believe privacy and control is the #1 priority when it comes to hosting infrastructure. We try to avoid the "big clouds" as much as possible because we're not comfortable that all 3 major players practice data mining of users and their products usually contain some sort of "vendor-lock".

We run all of our production servers on the latest LTS release of Ubuntu Server. The hosts we use are below. Some may be affiliate links that kick a few bucks at no extra cost to you, but they do not affect our recommendations at all. 

## [Vultr](https://vultr.grsm.io/create)
**Our current favorite.** Excellent performance and value. Lots of datacenter options too.

## [Digital Ocean](https://m.do.co/c/f3bad4b927ca)
Lots of developer love here. Not the best performing servers, but they do have a lot of awesome products!

## [Linode](https://www.linode.com/?r=5a1b585e4eb919d3d89ad242bd1bb2924754c444)
Great performance and great support. These guys have really enhanced their offering over the last few years.

### Benchmarks
If you're shopping for a host, [check out the benchmarks we've ran →](https://www.notion.so/521dimensions/Benchmark-Results-for-Self-hosted-Gitlab-Server-c6eca7c5f16d4bb8aeb989174fc58ffe)

# About this project
We're taking the extra effort to open source as much as we can. Not only could this potentially help someone learn a little bit of Docker, but it makes it a *heck of a lot* easier for us to work with you on new open source ideas.

### Special thanks
- @shinsenter: Thanks for your previous contributions and providing examples to make our images better.

# Submitting issues and pull requests
Since there are a lot of dependencies on these images, please understand that it can make it complicated on merging your pull request.

We'd love to have your help, but it might be best to explain your intentions first before contributing.

### Like we said -- we're always learning
If you find a critical security flaw, please open an issue or learn more about [our responsible disclosure policy](https://www.notion.so/Responsible-Disclosure-Policy-421a6a3be1714d388ebbadba7eebbdc8).

# Testing Github Actions Locally
If you want to test running Github Actions locally in development, we use [Act](https://github.com/nektos/act). After install, configure your ENV and then you can run:

```bash
act --secret-file .env [my-command]
```

<!-- serversideup-sponsors -->
## Our Sponsors
All of our software is free and open to the world. None of this can be brought to you without the financial backing of our sponsors.

<p align="center"><a href="https://github.com/sponsors/serversideup"><img src="https://521public.s3.amazonaws.com/serversideup/sponsors/sponsor-box.png" alt="Become a sponsor"></a></p>

### Platinum Sponsors
<a href="https://sevalla.com"><img src="https://serversideup.net/sponsors/sevalla.png" alt="Sevalla" width="500px"></a>

### Silver Sponsors
<a href="https://giga-infosystems.com"><img src="https://serversideup.net/sponsors/giga-infosystems.png" alt="GiGa infosystems" width="200px"></a>

### Infrastructure Sponsors
These companies give us free access to the tools and infrastructure we use to build, test, and ship our open source projects. Their support helps our entire community.

<a href="https://depot.dev"><img src="https://serversideup.net/sponsors/depot.png" alt="Depot" width="250px"></a>&nbsp;&nbsp;<a href="https://hub.docker.com/u/serversideup"><img src="https://serversideup.net/sponsors/docker.png" alt="Docker" width="250px"></a>
<!-- serversideup-sponsors -->

<!-- serversideup-about -->
## About Us
We're [Dan](https://x.com/danpastori) and [Jay](https://x.com/jaydrogers) - a two-person team with a passion for open source products. We created [Server Side Up](https://serversideup.net) to help share what we learn.

<div align="center">

| <div align="center">Dan Pastori</div> | <div align="center">Jay Rogers</div> |
| --- | --- |
| <div align="center"><a href="https://x.com/danpastori"><img src="https://serversideup.net/wp-content/uploads/2023/08/dan.jpg" title="Dan Pastori" width="150px"></a><br /><a href="https://x.com/danpastori"><img src="https://serversideup.net/logos/x.svg" title="X" width="24px"></a><a href="https://github.com/danpastori"><img src="https://serversideup.net/logos/github.svg" title="GitHub" width="24px"></a></div> | <div align="center"><a href="https://x.com/jaydrogers"><img src="https://serversideup.net/wp-content/uploads/2023/08/jay.jpg" title="Jay Rogers" width="150px"></a><br /><a href="https://x.com/jaydrogers"><img src="https://serversideup.net/logos/x.svg" title="X" width="24px"></a><a href="https://github.com/jaydrogers"><img src="https://serversideup.net/logos/github.svg" title="GitHub" width="24px"></a></div> |

</div>

### Find us at:

* **📖 [Blog](https://serversideup.net)** - Get the latest guides and free courses on all things web/mobile development.
* **🙋 [Community](https://community.serversideup.net)** - Get friendly help from our community members.
* **🤵‍♂️ [Get Professional Help](https://serversideup.net/professional-support)** - Get video + screen-sharing support from the core contributors.
* **💻 [GitHub](https://github.com/serversideup)** - Check out our other open source projects.
* **📫 [Newsletter](https://serversideup.net/subscribe)** - Skip the algorithms and get quality content right to your inbox.
* **🐥 [X (Twitter)](https://x.com/serversideup)** - You can also follow [Dan](https://x.com/danpastori) and [Jay](https://x.com/jaydrogers).
* **❤️ [Sponsor Us](https://github.com/sponsors/serversideup)** - Please consider sponsoring us so we can create more helpful resources.

## Our Products
If you appreciate this project, be sure to check out our other projects.

### 🛠️ Premium
- **[Self-Host Pro](https://selfhostpro.com)**: Sell self-hosted software in minutes.
- **[Bugflow](https://bugflow.io)**: Get product feedback directly in GitHub, GitLab, and more.
- **[Spin Pro](https://getspin.pro)**: Production-ready Docker templates for shipping quickly.

### 🌍 Open Source
- **[serversideup/php](https://serversideup.net/open-source/docker-php/)**: Supercharged PHP Docker images, based off the official PHP images. <!-- repo:serversideup/docker-php -->
- **[Spin](https://serversideup.net/open-source/spin/)**: Docker Simplified. Deploy Anywhere. Zero Downtime. Any OS. <!-- repo:serversideup/spin -->
- **[Financial Freedom](https://serversideup.net/open-source/financial-freedom/)**: Open source alternative to Mint, YNAB, and more. <!-- repo:serversideup/financial-freedom -->
- **[AmplitudeJS](https://serversideup.net/open-source/amplitudejs/)**: Customize the design of any element of the HTML5 Audio Player. <!-- repo:521dimensions/amplitudejs -->
- **[webext-bridge](https://serversideup.net/open-source/webext-bridge/)**: Messaging in Web Extensions made easy. Batteries included. <!-- repo:serversideup/webext-bridge -->
- **[serversideup/ansible](https://github.com/serversideup/docker-ansible)**: Run Ansible anywhere with a lightweight and powerful Docker image. <!-- repo:serversideup/docker-ansible -->

### 📚 Books
- **[Building Browser Extensions](https://serversideup.net/products/building-multi-platform-browser-extensions/)**: Build browser extensions for Firefox, Chrome, and more.
- **[Ultimate Guide To Building APIs & SPAs](https://serversideup.net/products/ultimate-guide-to-building-apis-and-spas-with-laravel-and-nuxt3/)**: Build web and mobile apps from the same codebase.
<!-- serversideup-about -->
