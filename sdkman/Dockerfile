FROM debian:bullseye-slim

COPY ./docker-entrypoint.sh /entrypoint.sh

ENV SDKMAN_URL https://get.sdkman.io
ENV ANDROID_URL https://dl.google.com/android/repository/commandlinetools-linux-6858069_latest.zip
ENV ANDROID_HOME /opt/android-sdk
ENV SDKMAN_DIR /opt/sdkman
ENV PATH $PATH:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/cmdline-tools/bin

RUN bash -c "source /root/.bashrc \
    && apt-get -y update \
    && apt-get -y install curl zip unzip git \
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
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*"

ENTRYPOINT ["/entrypoint.sh"]
CMD ["bash"]
