## SAMP SDK/GDK ##

[![sponsors](https://img.shields.io/github/sponsors/rodrigodornelles?color=ff69b4&logo=github)](https://github.com/sponsors/RodrigoDornelles)
[![](https://img.shields.io/github/last-commit/rodrigodornelles/docker-images/main?path=sampgdk/Dockerfile)](https://github.com/RodrigoDornelles/docker-images/blob/main/sampgdk/Dockerfile)
[![](https://img.shields.io/docker/pulls/rodrigodornelles/sampgdk?logo=docker&logoColor=fff)](https://hub.docker.com/r/rodrigodornelles/sampgdk)
[![](https://img.shields.io/docker/image-size/rodrigodornelles/sampgdk/latest?logo=docker&logoColor=fff)](https://hub.docker.com/r/rodrigodornelles/sampgdk/tags)

### Tags

`rodrigodornelles/sampgdk:latest`

### Usage ###

```sh
podman run --rm -v $(pwd):/app -w /app rodrigodornelles/sampgdk:latest cmake -DSAMPSDK_DIR=${SAMPSDK_DIR} --build .
```

```sh
docker run --rm -v $(pwd):/app -w /app rodrigodornelles/sampgdk:latest cmake -DSAMPSDK_DIR=${SAMPSDK_DIR} --build .
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
