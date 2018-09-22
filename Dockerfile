FROM alpine:3.8

WORKDIR /work
ENTRYPOINT ["/bin/sh"]
CMD ["--help"]
