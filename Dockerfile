# Special thanks to @shinsenter for teaching me cool things with Docker & Bash

FROM ubuntu:20.04
LABEL maintainer="@jaydrogers"

# Configure s6 overlay setings
ARG S6_SRC_DEP="xz-utils wget"
ARG S6_SRC_URL="https://github.com/just-containers/s6-overlay/releases/download"
ARG S6_VERSION="v3.1.0.1"

# Set environment variables
ENV DEBIAN_FRONTEND="noninteractive"

# Install S6 overlay
RUN mkdir -p $S6_DIR; \
    apt-get update; \
    apt-get install -yq $S6_SRC_DEP --no-install-recommends --no-install-suggests; \
    export SYS_ARCH=$(uname -m); \
    case "$SYS_ARCH" in \
        aarch64 ) export S6_ARCH='aarch64' ;; \
        arm64   ) export S6_ARCH='aarch64' ;; \
        armhf   ) export S6_ARCH='armhf'   ;; \
        arm*    ) export S6_ARCH='arm'     ;; \
        i4*     ) export S6_ARCH='i486'    ;; \
        i6*     ) export S6_ARCH='i686'    ;; \
        riscv64 ) export S6_ARCH='riscv64' ;; \
        s390*   ) export S6_ARCH='s390x'   ;; \
        *       ) export S6_ARCH='x86_64'  ;; \
    esac; \
    untar (){ \
        echo "⏬ Downloading $1"; \
        wget -O- $1 | tar Jxp -C /; \
    }; \
    \
    echo "⬇️ Downloading s6 overlay:${S6_ARCH}-${S6_VERSION} for ${SYS_ARCH}" \
        && untar ${S6_SRC_URL}/${S6_VERSION}/s6-overlay-noarch.tar.xz \
        && untar ${S6_SRC_URL}/${S6_VERSION}/s6-overlay-${S6_ARCH}.tar.xz \
        && untar ${S6_SRC_URL}/${S6_VERSION}/syslogd-overlay-noarch.tar.xz

ENTRYPOINT ["/init"]