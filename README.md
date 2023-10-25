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

## SDKMAN ##

[![sponsors](https://img.shields.io/github/sponsors/rodrigodornelles?color=ff69b4&logo=github)](https://github.com/sponsors/RodrigoDornelles)
[![](https://img.shields.io/docker/pulls/rodrigodornelles/sdkman?logo=docker&logoColor=fff)](https://hub.docker.com/r/rodrigodornelles/sdkman)
[![](https://img.shields.io/docker/image-size/rodrigodornelles/sdkman/latest?logo=docker&logoColor=fff)](https://hub.docker.com/r/rodrigodornelles/sdkman/tags)

> an easy sdk manager to build java and android applications.

### Tags

`rodrigodornelles/sdkman:latest`

### Features ###

 * [sdkman](https://sdkman.io/)
 * [advmangager](https://developer.android.com/studio/command-line/avdmanager)
 * [android-sdk-tools](https://developer.android.com/studio#command-tools)

### Usage ###

```sh
podman run --rm -v $(pwd):/app -w /app rodrigodornelles/sdkman:latest
sdk install java 17.0.9-oracle
sdk install gradle 8.4
sdkmanager "build-tools;33.0.0" "platforms;android-33"
gradle assembleRelease --daemon --parallel
```

## ZigLang ##

[![sponsors](https://img.shields.io/github/sponsors/rodrigodornelles?color=ff69b4&logo=github)](https://github.com/sponsors/RodrigoDornelles)
[![](https://img.shields.io/docker/pulls/rodrigodornelles/ziglang?logo=docker&logoColor=fff)](https://hub.docker.com/r/rodrigodornelles/ziglang)
[![](https://img.shields.io/docker/image-size/rodrigodornelles/ziglang/latest?logo=docker&logoColor=fff)](https://hub.docker.com/r/rodrigodornelles/ziglang/tags)

### Tags

`rodrigodornelles/ziglang:latest` `rodrigodornelles/ziglang:<version>` `rodrigodornelles/ziglang:<version>-<distro>`

| architeture | `<version>` | `<distro>` |
| :---------- | :---------: | :--------: |
| amd64 | `0.10.0` `0.9.1` `0.9.0` `0.8.1` `0.8.0` | `busybox` `alpine` `debian` |
| amd64 |  `0.7.1` `0.7.0` `0.6.0` `0.5.0` `0.4.0` `0.3.0` `0.2.0` | `busybox` `alpine` `debian` |

### Usage ###

```sh
podman run --rm -v $(pwd):/app -w /app rodrigodornelles/ziglang:latest
```
