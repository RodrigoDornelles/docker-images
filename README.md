# docker-images

> :whale2: reads like "podman" because it is.

## Doxygen ##

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
