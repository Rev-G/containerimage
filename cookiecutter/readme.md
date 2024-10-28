# CookieCutter Container

`docker build -f cookiecutter.containerfile -t gpalmerjr/cookiecutter:latest .`

`docker image tag gpalmerjr/cookiecutter:latest gpalmerjr/cookiecutter:2.6.0`

`docker image push --all-tags gpalmerjr/cookiecutter`

## run

`docker run --name auto-dev --rm -it gpalmerjr/cookiecutter:latest cookiecutter --version`

`docker run --name auto-dev --rm -it gpalmerjr/cookiecutter:latest`

`syft localhost/gpalmerjr/cookiecutter -q -o syft-json | jq '.artifacts[] | select (.name == "cookiecutter").version'`

## multi arch build and publish

```
podman manifest create cookiecutter

podman build --platform linux/amd64,linux/arm64 --manifest cookiecutter .

podman manifest push --all cookiecutter docker.io/gpalmerjr/cookiecutter:latest
podman manifest push --all cookiecutter docker.io/gpalmerjr/cookiecutter:2.6.0

podman manifest push --all cookiecutter ghcr.io/rev-g/cookiecutter:latest
podman manifest push --all cookiecutter ghcr.io/rev-g/cookiecutter:2.6.0
```

## TODO

- finish github action
- get version.json integrated for supported version we are building a container for

## links

https://podman.io/blogs/2021/10/11/multiarch.html
https://developers.redhat.com/articles/2023/11/03/how-build-multi-architecture-container-images#