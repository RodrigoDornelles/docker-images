FROM debian:bullseye-slim

RUN apt-get -y update && \
    apt-get -y install cmake make gcc g++ libgtk-3-dev libwebkit2gtk-4.0-dev pkg-config && \
    rm -Rf /var/lib/apt/lists/* && \
    apt-get clean
