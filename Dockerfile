FROM alpine:3.8

# Build-time metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL maintainer="tmknom" \
      org.label-schema.vendor="tmknom" \
      org.label-schema.name="template-dockerfile" \
      org.label-schema.description="Dockerfile template." \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.version=$VERSION \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/tmknom/template-dockerfile" \
      org.label-schema.usage="https://github.com/tmknom/template-dockerfile/blob/master/README.md#usage" \
      org.label-schema.docker.cmd="docker run --rm -i tmknom/template-dockerfile" \
      org.label-schema.schema-version="1.0"

WORKDIR /work
ENTRYPOINT ["/bin/sh"]
CMD ["--help"]
