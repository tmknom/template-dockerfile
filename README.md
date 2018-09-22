# template-dockerfile

Dockerfile template.

## Requirements

- [Docker](https://www.docker.com/)

## Usage

### Default

```sh
curl -fsSL https://raw.githubusercontent.com/tmknom/template-dockerfile/master/install | sh -s
cd template-dockerfile
```

### Specify repository name

```sh
curl -fsSL https://raw.githubusercontent.com/tmknom/template-dockerfile/master/install | sh -s example
cd example
```

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
