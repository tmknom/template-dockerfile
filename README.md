# template-dockerfile

[![CircleCI](https://circleci.com/gh/tmknom/template-dockerfile.svg?style=svg)](https://circleci.com/gh/tmknom/template-dockerfile)
[![Docker Build Status](https://img.shields.io/docker/build/tmknom/template-dockerfile.svg)](https://hub.docker.com/r/tmknom/template-dockerfile/builds/)
[![Docker Automated build](https://img.shields.io/docker/automated/tmknom/template-dockerfile.svg)](https://hub.docker.com/r/tmknom/template-dockerfile/)
[![MicroBadger Size](https://img.shields.io/microbadger/image-size/tmknom/template-dockerfile.svg)](https://microbadger.com/images/tmknom/template-dockerfile)
[![MicroBadger Layers](https://img.shields.io/microbadger/layers/tmknom/template-dockerfile.svg)](https://microbadger.com/images/tmknom/template-dockerfile)
[![License](https://img.shields.io/github/license/tmknom/template-dockerfile.svg)](https://opensource.org/licenses/Apache-2.0)

Dockerfile template.

## Requirements

- [Docker](https://www.docker.com/)

## Usage

```sh
curl -fsSL https://raw.githubusercontent.com/tmknom/template-dockerfile/master/install | sh -s example
cd example
```

## Makefile targets

```text
build                          Build docker image
format                         Format code
help                           Show help
install                        Install requirements
lint                           Lint code
```

## Development

### Installation

```shell
git clone git@github.com:tmknom/template-dockerfile.git
cd template-dockerfile
make install
```

### Deployment

Automatically deployed by "[DockerHub Automated Build](https://docs.docker.com/docker-hub/builds/)" after merge.

## Continuous Deployment

### Prepare

1. Create repository on GitHub
   - <https://help.github.com/articles/create-a-repo/>
2. Setting up your build on CircleCI
   - <https://circleci.com/docs/2.0/getting-started/#setting-up-your-build-on-circleci>
3. Configure automated builds on Docker Hub
   - <https://docs.docker.com/docker-hub/builds/#create-an-automated-build>
4. Configure webhook on MicroBadger
   - <https://medium.com/microscaling-systems/microbadger-keep-your-metadata-fresh-with-a-webhook-651ee26cd4a6>

### Deployment Pipeline

1. GitHub - Version Control System
   - <https://github.com/tmknom/template-dockerfile>
2. CircleCI - Continuous Integration
   - <https://circleci.com/gh/tmknom/template-dockerfile>
3. Docker Hub - Docker Registry
   - <https://hub.docker.com/r/tmknom/template-dockerfile/>
4. MicroBadger - Docker Inspection
   - <https://microbadger.com/images/tmknom/template-dockerfile>

## License

Apache 2 Licensed. See LICENSE for full details.
