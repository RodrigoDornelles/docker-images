# docker-images

> :whale2: reads like "podman" because it is.

## Doxygen ##

[![sponsors](https://img.shields.io/github/sponsors/rodrigodornelles?color=ff69b4&logo=github)](https://github.com/sponsors/RodrigoDornelles)
[![](https://img.shields.io/docker/pulls/rodrigodornelles/doxygen?logo=docker&logoColor=fff)](https://hub.docker.com/r/rodrigodornelles/doxygen)
[![](https://img.shields.io/docker/image-size/rodrigodornelles/doxygen/latest?logo=docker&logoColor=fff)](https://hub.docker.com/r/rodrigodornelles/doxygen/tags)

### Tags

`rodrigodornelles/doxygen:latest`

### Usage ###

```sh
podman run --rm -v $(pwd):/app -w /app rodrigodornelles/doxygen:latest doxygen
```

### Features ###

 * [Make](https://www.gnu.org/software/make)
 * [Latex](https://www.latex-project.org)
 * [Doxygen](https://www.doxygen.nl)
 * [PlantUML](https://plantuml.com)
 * [Graphviz](https://graphviz.org)
 * [Doxygen Awesome CSS](https://jothepro.github.io/doxygen-awesome-css)

### Environment variables ###

 * `PLANTUML_JAR_PATH`
 * `DOXYGEN_AWESOME_PATH`

## SAMP SDK/GDK ##

[![sponsors](https://img.shields.io/github/sponsors/rodrigodornelles?color=ff69b4&logo=github)](https://github.com/sponsors/RodrigoDornelles)
[![](https://img.shields.io/docker/pulls/rodrigodornelles/sampgdk?logo=docker&logoColor=fff)](https://hub.docker.com/r/rodrigodornelles/sampgdk)
[![](https://img.shields.io/docker/image-size/rodrigodornelles/sampgdk/latest?logo=docker&logoColor=fff)](https://hub.docker.com/r/rodrigodornelles/sampgdk/tags)

### Tags

`rodrigodornelles/sampgdk:latest`

### Usage ###

```sh
podman run --rm -v $(pwd):/app -w /app rodrigodornelles/sampgdk:latest cmake -DSAMPSDK_DIR=${SAMPSDK_DIR} --build .
```

### Features ###

 * [CMake](https://cmake.org)
 * [Python 2.7](https://docs.python.org/dev/whatsnew/2.7.html)
 * [SAMP GDK](https://github.com/Zeex/sampgdk)
 * [SAMP SDK](https://github.com/Zeex/samp-plugin-sdk)
 * [GNU GCC/G++](https://gcc.gnu.org)

### Environment variables ###

 * `SAMPSDK_DIR`
 * `SAMPGDK_DIR`

## ZigLang ##

[![sponsors](https://img.shields.io/github/sponsors/rodrigodornelles?color=ff69b4&logo=github)](https://github.com/sponsors/RodrigoDornelles)
[![](https://img.shields.io/docker/pulls/rodrigodornelles/ziglang?logo=docker&logoColor=fff)](https://hub.docker.com/r/rodrigodornelles/ziglang)
[![](https://img.shields.io/docker/image-size/rodrigodornelles/ziglang/latest?logo=docker&logoColor=fff)](https://hub.docker.com/r/rodrigodornelles/ziglang/tags)

### Tags

`rodrigodornelles/ziglang:latest` `rodrigodornelles/ziglang:0.10.1` `rodrigodornelles/ziglang:0.10.0` `rodrigodornelles/ziglang:0.9.1` `rodrigodornelles/ziglang:0.9.0` `rodrigodornelles/ziglang:0.8.1` `rodrigodornelles/ziglang:0.8.0` `rodrigodornelles/ziglang:0.7.1` `rodrigodornelles/ziglang:0.7.0` `rodrigodornelles/ziglang:0.6.0` `rodrigodornelles/ziglang:0.5.0` `rodrigodornelles/ziglang:0.4.0` `rodrigodornelles/ziglang:0.3.0` `rodrigodornelles/ziglang:0.2.0`  `rodrigodornelles/ziglang:0.10.1-alpine` `rodrigodornelles/ziglang:0.10.0-alpine` `rodrigodornelles/ziglang:0.9.1-alpine` `rodrigodornelles/ziglang:0.9.0-alpine` `rodrigodornelles/ziglang:0.8.1-alpine` `rodrigodornelles/ziglang:0.8.0-alpine` `rodrigodornelles/ziglang:0.7.1-alpine` `rodrigodornelles/ziglang:0.7.0-alpine` `rodrigodornelles/ziglang:0.6.0-alpine` `rodrigodornelles/ziglang:0.5.0-alpine` `rodrigodornelles/ziglang:0.4.0-alpine` `rodrigodornelles/ziglang:0.3.0-alpine` `rodrigodornelles/ziglang:0.2.0-alpine` `rodrigodornelles/ziglang:0.10.1-busybox` `rodrigodornelles/ziglang:0.10.0-busybox` `rodrigodornelles/ziglang:0.9.1-busybox` `rodrigodornelles/ziglang:0.9.0-busybox` `rodrigodornelles/ziglang:0.8.1-busybox` `rodrigodornelles/ziglang:0.8.0-busybox` `rodrigodornelles/ziglang:0.7.1-busybox` `rodrigodornelles/ziglang:0.7.0-busybox` `rodrigodornelles/ziglang:0.6.0-busybox` `rodrigodornelles/ziglang:0.5.0-busybox` `rodrigodornelles/ziglang:0.4.0-busybox` `rodrigodornelles/ziglang:0.3.0-busybox` `rodrigodornelles/ziglang:0.2.0-busybox` `rodrigodornelles/ziglang:0.10.1-debian` `rodrigodornelles/ziglang:0.10.0-debian` `rodrigodornelles/ziglang:0.9.1-debian` `rodrigodornelles/ziglang:0.9.0-debian` `rodrigodornelles/ziglang:0.8.1-debian` `rodrigodornelles/ziglang:0.8.0-debian` `rodrigodornelles/ziglang:0.7.1-debian` `rodrigodornelles/ziglang:0.7.0-debian` `rodrigodornelles/ziglang:0.6.0-debian` `rodrigodornelles/ziglang:0.5.0-debian` `rodrigodornelles/ziglang:0.4.0-debian` `rodrigodornelles/ziglang:0.3.0-debian` `rodrigodornelles/ziglang:0.2.0-debian`

### Usage ###

```sh
podman run --rm -v $(pwd):/app -w /app rodrigodornelles/ziglang:latest
```
