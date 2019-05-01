FROM alpine:3.9.3

# Build-time metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
ARG REPO_NAME
LABEL org.label-schema.vendor="tmknom" \
      org.label-schema.name=$REPO_NAME \
      org.label-schema.description="Dockerfile template." \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.version=$VERSION \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/$REPO_NAME" \
      org.label-schema.usage="https://github.com/$REPO_NAME/blob/master/README.md#usage" \
      org.label-schema.docker.cmd="docker run --rm -v \$PWD:/work $REPO_NAME" \
      org.label-schema.schema-version="1.0"

ARG RUBY_VERSION=2.5.3-r1
ARG MODULE_VERSION=1.16.6

RUN set -x && \
    apk add --no-cache ruby=${RUBY_VERSION} && \
    gem install --no-document bundler -v ${MODULE_VERSION} && \
    rm -rf ~/.gem

WORKDIR /work
ENTRYPOINT ["/usr/bin/bundle"]
CMD ["--help"]
