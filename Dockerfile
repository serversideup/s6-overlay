FROM ubuntu:20.04
LABEL maintainer="@jaydrogers"

# set version for s6 overlay
ARG OVERLAY_VERSION="v2.2.0.3"
ARG OVERLAY_ARCH="amd64"
ARG DEBIAN_FRONTEND="noninteractive"

# add s6 overlay
ADD https://github.com/just-containers/s6-overlay/releases/download/${OVERLAY_VERSION}/s6-overlay-${OVERLAY_ARCH}-installer /tmp/
RUN chmod +x /tmp/s6-overlay-${OVERLAY_ARCH}-installer && /tmp/s6-overlay-${OVERLAY_ARCH}-installer / && rm /tmp/s6-overlay-${OVERLAY_ARCH}-installer

# set environment variables
ENV HOME="/root" \
LANGUAGE="en_US.UTF-8" \
LANG="en_US.UTF-8" \
TERM="xterm" \

ENTRYPOINT ["/init"]