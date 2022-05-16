# DocFX Container

`docker pull nginx`

## Build

`docker build -f dockerfile.docfx -t gpalmerjr/docfx:latest .`

## Run

`docker run -it --rm -v $PWD:/data/docs gpalmerjr/docfx:latest bash`

`cd /data/docs && mono /opt/docfx/docfx.exe docfx.json`

## Serve

*Note: the _site folder from the the docfx build holds the rendered website*

`docker run -it --rm -d -p 8080:80 --name web -v $PWD:/usr/share/nginx/html nginx`
