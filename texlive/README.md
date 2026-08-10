## TeX Live ##

[![sponsors](https://img.shields.io/github/sponsors/rodrigodornelles?color=ff69b4&logo=github)](https://github.com/sponsors/RodrigoDornelles)
[![](https://img.shields.io/github/last-commit/rodrigodornelles/docker-images/main?path=texlive/Dockerfile)](https://github.com/RodrigoDornelles/docker-images/blob/main/texlive/Dockerfile)
[![](https://img.shields.io/docker/pulls/rodrigodornelles/texlive?logo=docker&logoColor=fff)](https://hub.docker.com/r/rodrigodornelles/texlive)
[![](https://img.shields.io/docker/image-size/rodrigodornelles/texlive/latest?logo=docker&logoColor=fff)](https://hub.docker.com/r/rodrigodornelles/texlive/tags)

### Tags

`rodrigodornelles/texlive:latest`

### Usage ###

```sh
podman run --rm -v $(pwd):/app -w /app rodrigodornelles/texlive:latest make
```

```sh
docker run --rm -v $(pwd):/app -w /app rodrigodornelles/texlive:latest make
```

### Features ###

 * [Make](https://www.gnu.org/software/make)
 * [TeX Live (full)](https://tug.org/texlive)
