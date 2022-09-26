ARG BASE_OS_IMAGE=ubuntu:22.04

# build image
FROM ${BASE_OS_IMAGE} as build

ARG S6_DIR=/opt/s6/
ARG S6_SRC_DEP="xz-utils wget"
ARG S6_SRC_URL="https://github.com/just-containers/s6-overlay/releases/download"
ARG S6_VERSION="v3.1.2.1"

ENV DEBIAN_FRONTEND="noninteractive" \
    S6_KEEP_ENV=1

# install S6 Overlay
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
        wget --no-check-certificate -O- $1 | tar Jxp -C $S6_DIR; \
    }; \
    \
    echo "⬇️ Downloading s6 overlay:${S6_ARCH}-${S6_VERSION} for ${SYS_ARCH}" \
        && untar ${S6_SRC_URL}/${S6_VERSION}/s6-overlay-noarch.tar.xz \
        && untar ${S6_SRC_URL}/${S6_VERSION}/s6-overlay-${S6_ARCH}.tar.xz

# main image
FROM ${BASE_OS_IMAGE}
LABEL maintainer="@jaydrogers"

ENV DEBIAN_FRONTEND="noninteractive" \
    S6_KEEP_ENV=1

COPY --from=build /opt/s6/ /

ENTRYPOINT ["/init"]