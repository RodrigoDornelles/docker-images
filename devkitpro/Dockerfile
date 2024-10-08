FROM debian:bullseye-20240812-slim

ENV DEBIAN_FRONTEND=noninteractive
ENV PATH=/opt/devkitpro/pacman/bin:${PATH}
ENV DEVKITPRO=/opt/devkitpro
ENV DEVKITARM=/opt/devkitpro/devkitARM
ENV DEVKITPPC=/opt/devkitpro/devkitPPC

RUN set -ex \
    && apt-get -y update \
    && apt-get -y install --no-install-recommends cmake clang musl-dev git wget unzip python3 python3-pip \
    && rm -rf /var/lib/apt/lists/*

RUN set -ex \
    && ln -sf /proc/mounts /etc/mtab \
    && mkdir -p /opt/devkitpro \
    && cd /opt/devkitpro \
    && wget https://apt.devkitpro.org/install-devkitpro-pacman \
    && chmod +x ./install-devkitpro-pacman \
    && (yes | ./install-devkitpro-pacman) \
    && rm ./install-devkitpro-pacman

ARG videogame
RUN set -ex \
    && pacman -Sy --noconfirm \
    && pacman -S --noconfirm ${videogame}-dev \
    && pacman -Scc --noconfirm \
    && rm -rf /var/lib/pacman/sync/*

