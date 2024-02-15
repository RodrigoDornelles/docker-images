FROM debian:bullseye-slim

ENV FVM_VER 2.4.1
ENV FVM_URL https://github.com/leoafarias/fvm/releases/download
ENV FVM_DIR /opt/fvm
ENV FVM_ARCH $([[ $(uname -m) == x86_64 ]] && echo x64 || echo arm64)
ENV FLUTTER_HOME /tmp/flutter-fvm/default
ENV SDKMAN_URL https://get.sdkman.io
ENV ANDROID_URL https://dl.google.com/android/repository/commandlinetools-linux-6858069_latest.zip
ENV ANDROID_HOME /opt/android-sdk
ENV SDKMAN_DIR /opt/sdkman
ENV PATH /tmp/bin:$PATH
ENV PATH $PATH:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/cmdline-tools/bin
ENV PATH $PATH:$FVM_DIR:$FLUTTER_HOME/bin/
ENV TMPDIR_PATH /tmp/android:/tmp/sdkman-tmp:/tmp/sdkman-candidates
ENV TMPDIR_PATH $TMPDIR_PATH:/tmp/flutter-pub:/tmp/flutter-fvm:/tmp/flutter-home
ENV TMPDIR_PATH $TMPDIR_PATH:/tmp/dart-home:/tmp/dart-tool
ENV TMPDIR_PATH $TMPDIR_PATH:/tmp/bin

RUN bash -c "source /root/.bashrc \
    && apt-get -y update \
    && apt-get -y install curl zip unzip git libncurses5 cmake make file \
    && mkdir -p $FVM_DIR \
    && curl -SL ${FVM_URL}/${FVM_VER}/fvm-${FVM_VER}-linux-${FVM_ARCH}.tar.gz -o ${FVM_DIR}/fvm.tar.gz \
    && tar -xvf ${FVM_DIR}/fvm.tar.gz -C $FVM_DIR --strip-components 1 \
    && rm ${FVM_DIR}/fvm.tar.gz ${FVM_DIR}/src/LICENSE \
    && curl -s $SDKMAN_URL | bash \
    && source $SDKMAN_DIR/bin/sdkman-init.sh \
    && sdk install java 17.0.9-oracle \
    && mkdir -p $ANDROID_HOME \
    && cd $ANDROID_HOME \
    && curl -s $ANDROID_URL -o android-sdk-tools.zip \
    && unzip android-sdk-tools.zip \
    && rm android-sdk-tools.zip \
    && (yes | $ANDROID_HOME/cmdline-tools/bin/sdkmanager --licenses --sdk_root=$ANDROID_HOME > /dev/null) \
    && sdk uninstall java 17.0.9-oracle --force \
    && apt-get clean \
    && rm -Rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /root/.android $SDKMAN_DIR/candidates $SDKMAN_DIR/tmp \
    && ln -s /tmp/android /root/.android \
    && ln -s /tmp/sdkman-candidates $SDKMAN_DIR/candidates \
    && ln -s /tmp/sdkman-tmp $SDKMAN_DIR/tmp \
    && ln -s /tmp/flutter-home /root/.flutter \
    && ln -s /tmp/flutter-pub /root/.pub-cache \
    && ln -s /tmp/flutter-fvm /root/fvm \
    && ln -s /tmp/dart-tool /root/.dart-tool \
    && ln -s /tmp/dart-home /root/.dart \
    "

COPY ./docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
