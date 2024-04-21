# DocFX Container

`docker pull nginx`

## Build

### This builds a nice massive container

`docker build -f docfx_new.containerfile -t gpalmerjr/docfx:mytest .`

### This one builds a more slim version but its x86 only

`docker build -f docfx_fedora.containerfile -t gpalmerjr/docfx:fedora .`

## Testing it

`docker run --name docfx-dev --rm -it gpalmerjr/docfx:mytest docfx --version`

## Run

`docker run -it --rm -v $PWD:/data/docs gpalmerjr/docfx:latest bash`

`cd /data/docs && mono /opt/docfx/docfx.exe docfx.json`

## Serve

*Note: the _site folder from the the docfx build holds the rendered website*

`docker run -it --rm -d -p 8080:80 --name web -v $PWD:/usr/share/nginx/html nginx`
