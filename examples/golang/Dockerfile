ARG GO_GET_PATH=github.com/peco/peco

FROM golang:alpine AS builder

ARG BUILD_VERSION=v0.5.3
ARG BUILD_DIR=./cmd/peco
ARG GO_GET_PATH

# https://docs.docker.com/develop/develop-images/multistage-build/#use-multi-stage-builds
RUN set -x && \
    apk add --no-cache git=2.18.0-r0 && \
    go get -u ${GO_GET_PATH}

WORKDIR /go/src/${GO_GET_PATH}
RUN set -x && \
    git fetch origin ${BUILD_VERSION} && \
    git checkout -b tag-${BUILD_VERSION} refs/tags/${BUILD_VERSION} && \
    CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -ldflags="-s -w" ${BUILD_DIR}


FROM scratch

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

ARG GO_GET_PATH
COPY --from=builder /go/src/${GO_GET_PATH}/peco /peco

WORKDIR /work
ENTRYPOINT ["/peco"]
CMD ["--help"]
