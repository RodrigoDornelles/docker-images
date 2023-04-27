FROM debian:bullseye-slim

ENV SAMPSDK_DIR=/usr/local/share/sampsdk
ENV SAMPGDK_DIR=/usr/local/share/sampgdk

RUN apt-get -y update && \
    apt-get -y install python2-minimal curl python-ply gcc gcc-multilib g++ g++-multilib cmake && \
    mkdir -p /usr/local/share/sampsdk && \
    mkdir -p /sampgdk/build && \
    mkdir -p /pawno/pawnlib && \
    curl -fsSL https://github.com/Zeex/samp-plugin-sdk/archive/refs/heads/original.tar.gz | tar xvz -C /usr/local/share/sampsdk --strip-components=1 && \
    curl -fsSL https://github.com/Zeex/sampgdk/archive/refs/tags/v4.6.3.tar.gz | tar xvz -C /sampgdk --strip-components=1 && \
    curl -fsSL https://github.com/pawn-lang/compiler/archive/refs/tags/v3.10.10.tar.gz | tar xvz -C /pawno --strip-components=1 && \
    curl -fsSL https://github.com/pawn-lang/compiler/releases/download/v3.10.10/pawnc-3.10.10-linux.tar.gz | tar xvz -C /pawno --strip-components=1 && \
    curl -fsSL https://github.com/pawn-lang/samp-stdlib/archive/refs/tags/0.3.7-R2-1-1.tar.gz | tar xvz -C /pawno/pawnlib --strip-components=1 && \
    cd /sampgdk/build && \
    cmake .. -DSAMP_SDK_ROOT=/usr/local/share/sampsdk && \
    cmake --build . --config Release && \
    cmake --build . --config Release --target install && \
    mv /pawno/bin/* /usr/bin && \
    mv /pawno/lib/*.so /lib && \
    mv /pawno/pawnlib/*.inc /usr/include && \
    mv /pawno/include/*.inc /usr/include && \
    mv /sampgdk/cmake/*.cmake /usr/share/cmake-3.18/Modules && \
    mv /pawno/source/linux/*.h /usr/local/include && \
    rm -Rf /var/lib/apt/lists/* && \
    rm -Rf /sampgdk && \
    rm -Rf /pawno && \
    apt-get clean
