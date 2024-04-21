# CookieCutter Container

`docker build -f cookiecutter.containerfile -t gpalmerjr/cookiecutter:latest .`

`docker image tag gpalmerjr/cookiecutter:latest gpalmerjr/cookiecutter:2.6.0`

`docker image push --all-tags gpalmerjr/cookiecutter`

## run

`docker run --name auto-dev --rm -it gpalmerjr/cookiecutter:latest cookiecutter --version`

`docker run --name auto-dev --rm -it gpalmerjr/cookiecutter:latest`