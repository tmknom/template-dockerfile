# template-dockerfile

[![Dockerfile Actions Status](https://github.com/tmknom/template-dockerfile/workflows/Dockerfile/badge.svg)](https://github.com/tmknom/template-dockerfile/actions?query=workflow%3ADockerfile)
[![Shell Script Actions Status](https://github.com/tmknom/template-dockerfile/workflows/Shell%20Script/badge.svg)](https://github.com/tmknom/template-dockerfile/actions?query=workflow%3A%22Shell+Script%22)
[![Markdown Actions Status](https://github.com/tmknom/template-dockerfile/workflows/Markdown/badge.svg)](https://github.com/tmknom/template-dockerfile/actions?query=workflow%3AMarkdown)
[![YAML Actions Status](https://github.com/tmknom/template-dockerfile/workflows/YAML/badge.svg)](https://github.com/tmknom/template-dockerfile/actions?query=workflow%3AYAML)
[![JSON Actions Status](https://github.com/tmknom/template-dockerfile/workflows/JSON/badge.svg)](https://github.com/tmknom/template-dockerfile/actions?query=workflow%3AJSON)

[![Docker Build Status](https://img.shields.io/docker/cloud/build/tmknom/template-dockerfile.svg?logo=docker)](https://hub.docker.com/r/tmknom/template-dockerfile/builds/)
[![Docker Automated build](https://img.shields.io/docker/cloud/automated/tmknom/template-dockerfile.svg?logo=docker)](https://hub.docker.com/r/tmknom/template-dockerfile/)
[![MicroBadger Size](https://img.shields.io/microbadger/image-size/tmknom/template-dockerfile.svg?logo=docker)](https://microbadger.com/images/tmknom/template-dockerfile)
[![MicroBadger Layers](https://img.shields.io/microbadger/layers/tmknom/template-dockerfile.svg?logo=docker)](https://microbadger.com/images/tmknom/template-dockerfile)
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

### Deployment Pipeline

1. GitHub - Version Control System
   - <https://github.com/tmknom/template-dockerfile>
2. GitHub Actions - Continuous Integration
   - <https://github.com/tmknom/template-dockerfile/actions>
3. Docker Hub - Docker Registry
   - <https://hub.docker.com/r/tmknom/template-dockerfile>
4. MicroBadger - Docker Inspection
   - <https://microbadger.com/images/tmknom/template-dockerfile>

## License

Apache 2 Licensed. See LICENSE for full details.
