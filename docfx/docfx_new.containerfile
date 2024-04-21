FROM mcr.microsoft.com/dotnet/sdk:8.0-bookworm-slim

# Add dotnet tools to path.
ENV PATH="${PATH}:/root/.dotnet/tools"

# Install DocFX as a dotnet tool.
RUN dotnet tool update -g docfx && \
    docfx --version

WORKDIR /opt/prj
VOLUME [ "/opt/prj" ]

ENTRYPOINT [ "docfx" ]

## this is based of the official docfx container 