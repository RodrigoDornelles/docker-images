FROM ubuntu:jammy

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections \
    && apt-get -y update \
    && apt-get -y install make texlive-full \
    && apt-get clean \
    && rm -Rf /var/lib/apt/lists/*

