# Running Powershell in Docker

`docker run -it mcr.microsoft.com/powershell:alpine-3.14`

set environment var on local system and pass it to the container
**note: this container removes itself after. notice the --rm**

```bash
export TEST="hello"
docker run -it --rm --env TEST -v $(pwd):/app mcr.microsoft.com/powershell:alpine-3.14
```
