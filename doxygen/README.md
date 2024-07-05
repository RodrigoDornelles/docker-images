## Doxygen ##

[![sponsors](https://img.shields.io/github/sponsors/rodrigodornelles?color=ff69b4&logo=github)](https://github.com/sponsors/RodrigoDornelles)
[![](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fapi.github.com%2Frepos%2Frodrigodornelles%2Fdocker-images%2Fcommits%3Fpath%3Ddoxygen%252FDockerfile%26page%3D1%26per_page%3D1&query=%24.0.commit.committer.date&logo=github&logoColor=fff&label=Dockerfile%20updated)](https://github.com/RodrigoDornelles/docker-images/blob/main/doxygen/Dockerfile)
[![](https://img.shields.io/docker/pulls/rodrigodornelles/doxygen?logo=docker&logoColor=fff)](https://hub.docker.com/r/rodrigodornelles/doxygen)
[![](https://img.shields.io/docker/image-size/rodrigodornelles/doxygen/latest?logo=docker&logoColor=fff)](https://hub.docker.com/r/rodrigodornelles/doxygen/tags)

### Tags

`rodrigodornelles/doxygen:latest`
`rodrigodornelles/doxygen:lua`

### Usage ###

```sh
podman run --rm -v $(pwd):/app -w /app rodrigodornelles/doxygen:latest doxygen
```

```sh
docker run --rm -v $(pwd):/app -w /app rodrigodornelles/doxygen:latest doxygen
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
