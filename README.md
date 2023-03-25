# docker-images

> :whale2: reads like "podman" because it is.

## Doxygen ##

[![sponsors](https://img.shields.io/github/sponsors/rodrigodornelles?color=ff69b4&logo=github)](https://github.com/sponsors/RodrigoDornelles)
[![](https://img.shields.io/docker/pulls/rodrigodornelles/doxygen?logo=docker&logoColor=fff)](https://hub.docker.com/r/rodrigodornelles/doxygen)
[![](https://img.shields.io/docker/image-size/rodrigodornelles/doxygen/latest?logo=docker&logoColor=fff)](https://hub.docker.com/r/rodrigodornelles/doxygen/tags)

### Usage ###

```sh
podman run --rm -v $(pwd):/app -w /app rodrigodornelles:doxygen doxygen
```

### Features ###

 * [Java](https://gohorseprocess.com.br)
 * [Make](https://www.gnu.org/software/make)
 * [Latex](https://www.latex-project.org)
 * [Doxygen](https://www.doxygen.nl)
 * [PlantUML](https://plantuml.com)
 * [Graphviz](https://graphviz.org)
 * [Doxygen Awesome CSS](https://jothepro.github.io/doxygen-awesome-css)

### Environment variables ###

 * `PLANTUML_JAR_PATH`
 * `DOXYGEN_AWESOME_PATH`
