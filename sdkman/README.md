## SDKMAN ##

[![sponsors](https://img.shields.io/github/sponsors/rodrigodornelles?color=ff69b4&logo=github)](https://github.com/sponsors/RodrigoDornelles)
[![](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fapi.github.com%2Frepos%2Frodrigodornelles%2Fdocker-images%2Fcommits%3Fpath%3Dsdkman%252FDockerfile%26page%3D1%26per_page%3D1&query=%24.0.commit.committer.date&logo=github&logoColor=fff&label=Dockerfile%20updated)](https://github.com/RodrigoDornelles/docker-images/blob/main/sdkman/Dockerfile)
[![](https://img.shields.io/docker/pulls/rodrigodornelles/sdkman?logo=docker&logoColor=fff)](https://hub.docker.com/r/rodrigodornelles/sdkman)
[![](https://img.shields.io/docker/image-size/rodrigodornelles/sdkman/latest?logo=docker&logoColor=fff)](https://hub.docker.com/r/rodrigodornelles/sdkman/tags)
> an easy sdk manager to build java, kotlin, groovy, dart, flutter and anothers android mobile apps.

`rodrigodornelles/sdkman:latest`

### Features ###

 * [fvm](https://fvm.app/)
 * [cmake](https://cmake.org/)
 * [sdkman](https://sdkman.io/)
 * [advmangager](https://developer.android.com/studio/command-line/avdmanager)
 * [android-sdk-tools](https://developer.android.com/studio#command-tools)

### Environment variables ###

 * `ANDROID_HOME`
 * `FLUTTER_HOME`

### Usage ###

#### Java / Kotlin / Groovy ###

```sh
podman run --rm -v /tmp:/tmp  -v $(pwd):/app -w /app rodrigodornelles/sdkman:latest
sdk install java 17.0.9-oracle
sdk install gradle 8.4
sdkmanager "build-tools;33.0.0" "platforms;android-33"
gradle assembleRelease --daemon --parallel
```

#### Flutter ####
```sh
podman run --rm -v /tmp:/tmp -v $(pwd):/app -w /app rodrigodornelles/sdkman:latest
sdk install java 17.0.9-oracle
fei 3.13.9
flutter pub get
flutter build apk
```
