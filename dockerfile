FROM centos:latest

LABEL maintainer="gpalmerjr@gmail.com"

WORKDIR /app
ADD . /app

RUN yum install -y python3
RUN pip3 install --trusted-host pypi.python.org Flask

ENV NAME World
CMD ["python3", "app.py"]