FROM fedora:latest as bits

RUN dnf -y install unzip

ADD https://github.com/dotnet/docfx/releases/download/v2.76.0/docfx-linux-x64-v2.76.0.zip /tmp

WORKDIR /tmp

RUN unzip docfx-linux-x64-v2.76.0.zip -d /tmp/docfx

FROM fedora:latest

COPY --from=bits /tmp/docfx /opt/docfx

RUN ln -s /opt/docfx/docfx /usr/local/bin/docfx

