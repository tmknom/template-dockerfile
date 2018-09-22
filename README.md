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

### 1. Install template

```sh
curl -fsSL https://raw.githubusercontent.com/tmknom/template-dockerfile/master/install | sh -s example
cd example
```

### 2. Prepare GitHub, CircleCI and Docker Hub

1. Create repository on GitHub
    - <https://help.github.com/articles/create-a-repo/>
2. Setting up your build on CircleCI
    - <https://circleci.com/docs/2.0/getting-started/#setting-up-your-build-on-circleci>
3. Configure automated builds on Docker Hub
    - <https://docs.docker.com/docker-hub/builds/#create-an-automated-build>

## Makefile targets

```text
build                          Build docker
help                           Show help
install                        Install requirements
lint                           Lint dockerfile and markdown
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

### Registry

<https://hub.docker.com/r/tmknom/template-dockerfile/>

## License

Apache 2 Licensed. See LICENSE for full details.
