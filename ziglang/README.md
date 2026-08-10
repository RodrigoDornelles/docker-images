## ZigLang ##

[![sponsors](https://img.shields.io/github/sponsors/rodrigodornelles?color=ff69b4&logo=github)](https://github.com/sponsors/RodrigoDornelles)
[![](https://img.shields.io/github/last-commit/rodrigodornelles/docker-images/main?path=ziglang/Dockerfile)](https://github.com/RodrigoDornelles/docker-images/blob/main/ziglang/Dockerfile)
[![](https://img.shields.io/docker/pulls/rodrigodornelles/ziglang?logo=docker&logoColor=fff)](https://hub.docker.com/r/rodrigodornelles/ziglang)
[![](https://img.shields.io/docker/image-size/rodrigodornelles/ziglang/latest?logo=docker&logoColor=fff)](https://hub.docker.com/r/rodrigodornelles/ziglang/tags)

### Tags

`rodrigodornelles/ziglang:latest` `rodrigodornelles/ziglang:<version>` `rodrigodornelles/ziglang:<version>-<distro>`

| version | archs | distro |
| :------ | :---- | :----- |
| `latest`, `0.10.1` .. `0.6.0` | multi-arch (`ZIG_ARCHS_MODERN` var) | - |
| `0.10.1` .. `0.6.0` | `amd64` | `busybox` `alpine` `debian` |
| `0.5.0` .. `0.2.0` | `amd64` | - |
| `0.5.0` .. `0.2.0` | `amd64` | `busybox` `alpine` `debian` |

### Usage ###

```sh
podman run --rm -v $(pwd):/app -w /app rodrigodornelles/ziglang:latest
```

```sh
docker run --rm -v $(pwd):/app -w /app rodrigodornelles/ziglang:latest
```
