FROM debian:bullseye

ENV DEBIAN_FRONTEND=noninteractive
ENV PATH=/opt/devkitpro/pacman/bin:${PATH}
ENV DEVKITPRO=/opt/devkitpro
ENV DEVKITARM=/opt/devkitpro/devkitARM
ENV DEVKITPPC=/opt/devkitpro/devkitPPC

RUN set -ex \
    && apt-get update \
    && apt-get install -y build-essential cmake git wget unzip python3 python3-pip \
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
    && pacman -S --noconfirm ${videogame}-dev
