FROM mcr.microsoft.com/devcontainers/base:jammy

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y gfortran \
    && apt-get install -y python3-pip \
    && pip install fortls