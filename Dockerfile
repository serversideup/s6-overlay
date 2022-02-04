# This pipeline will keep image size as small as possible.
################################################################################

# base image and platform
# E.g: FROM --platform=linux/amd64 ubuntu:focal as base
FROM ubuntu:focal as base

################################################################################

# extracts s6-overlay bundles into a temporary image
FROM base as source

# sets version for s6 overlay
ARG DEBIAN_FRONTEND="noninteractive"
ARG S6_OVERLAY_BUILD_DEP="wget xz-utils"
ARG S6_OVERLAY_SRC="https://github.com/just-containers/s6-overlay/releases/download"
ARG S6_OVERLAY_VERSION="3.0.0.2"
ARG S6_OVERLAY_ARCH="x86_64"

# installation pipeline
RUN apt-get update \
    && apt-get install -y --no-install-recommends --no-install-suggests \
        $S6_OVERLAY_BUILD_DEP \
    \
    # adds s6 overlay
    && mkdir -p /usr/src/s6 \
    && untar(){ wget --no-check-certificate -O- $1 2>/dev/null | tar Jxp -C ${2:-/usr/src/s6/}; }\
    && untar ${S6_OVERLAY_SRC}/v${S6_OVERLAY_VERSION}/s6-overlay-noarch-${S6_OVERLAY_VERSION}.tar.xz \
    && untar ${S6_OVERLAY_SRC}/v${S6_OVERLAY_VERSION}/s6-overlay-${S6_OVERLAY_ARCH}-${S6_OVERLAY_VERSION}.tar.xz

################################################################################

# main image
FROM  base
LABEL maintainer="@jaydrogers"
LABEL contributor="@shinsenter"

# copies s6-overlay from source
COPY --from=source /usr/src/s6/ /

# sets environment variables
ENV DEBIAN_FRONTEND="noninteractive"
ENV HOME="/root"
ENV LANG="en_US.UTF-8"
ENV LANGUAGE="en_US.UTF-8"
ENV LC_ALL="C"
ENV TERM="xterm"

################################################################################

ENTRYPOINT ["/init"]
