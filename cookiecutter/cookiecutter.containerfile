FROM python:slim

RUN python3 -m pip --no-cache-dir install cookiecutter

CMD ["cookiecutter"]