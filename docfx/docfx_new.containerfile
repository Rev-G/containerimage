FROM mcr.microsoft.com/dotnet/runtime:8.0 as getbits

RUN apt update && \
    apt install -y --no-install-recommends unzip

ADD https://github.com/dotnet/docfx/releases/download/v2.76.0/docfx-linux-x64-v2.76.0.zip /tmp/

## unzip stuff

## Create final image FROM