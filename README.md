# containerimage
testing different ways of building container images

docker build -f dockerfile.fedora -t gpalmerjr/automation-fedora:latest .

docker run --name auto-dev -d -it gpalmerjr/automation-fedora:latest