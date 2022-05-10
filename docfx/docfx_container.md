# DocFX Container

`docker pull nginx`

## Build

`docker build -f dockerfile.docfx -t gpalmerjr/docfx:latest .`

## Run

`docker run -it --rm -v $PWD:/data/docs gpalmerjr/docfx:latest bash`

`cd /data/docs && mono /opt/docfx/docfx.exe docfx.json`

## Serve

*Note: you need to naviagate to the _site folder that was built when running the docfx build*

`docker run -it --rm -d -p 8080:80 --name web -v $PWD:/usr/share/nginx/html nginx`
