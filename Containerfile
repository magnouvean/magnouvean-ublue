ARG SOURCE_IMAGE="silverblue"
ARG SOURCE_SUFFIX="-main"
ARG SOURCE_TAG="40"

FROM ghcr.io/ublue-os/${SOURCE_IMAGE}${SOURCE_SUFFIX}:${SOURCE_TAG}

COPY build.sh /tmp/build.sh
COPY system_files/etc /etc
COPY --from=ghcr.io/ublue-os/akmods-extra:main-40 /rpms /tmp/rpms


RUN mkdir -p /var/lib/alternatives && \
    /tmp/build.sh && \
    ostree container commit