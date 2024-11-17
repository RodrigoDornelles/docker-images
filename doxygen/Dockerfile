FROM debian:bullseye-20240812-slim as fetch

ARG DOXYGEN_VERSION=Release_1_12_0
ARG AWESOME_VERSION=v2.3.4
ARG PLANTUML_VERSION=v1.2024.8

RUN apt-get -y update && apt-get -y install cmake g++ gcc python flex bison curl
RUN mkdir -p /doxygen-source && mkdir -p /doxygen-awesome-css && mkdir -p /plantuml

RUN curl -fsSL "https://github.com/doxygen/doxygen/archive/refs/tags/$DOXYGEN_VERSION.tar.gz" | tar xvz -C /doxygen-source --strip-components=1
RUN curl -fsSL "https://github.com/jothepro/doxygen-awesome-css/archive/refs/tags/$AWESOME_VERSION.tar.gz" | tar xvz -C /doxygen-awesome-css --strip-components=1
RUN curl -fsSL "https://github.com/plantuml/plantuml/releases/download/$PLANTUML_VERSION/plantuml.jar" > /plantuml/plantuml.jar

WORKDIR /doxygen-source
RUN cmake -G "Unix Makefiles" . && make

FROM debian:bullseye-20240812-slim

ENV DOXYGEN_AWESOME_PATH=/usr/local/share/doxygen-awesome-css
ENV PLANTUML_JAR_PATH=/usr/share/plantuml

COPY --from=fetch /plantuml /usr/share/plantuml
COPY --from=fetch /doxygen-source /doxygen-source
COPY --from=fetch /doxygen-awesome-css /doxygen-awesome-css

RUN set -ex && \
    apt-get -y update && \
    apt-get -y install cmake && \
    apt-get -y install make graphviz default-jre texlive-latex-extra && \
    make install -C /doxygen-source && \
    make install -C /doxygen-awesome-css && \
    apt-get -y remove cmake && \
    rm -Rf /doxygen-source && \
    rm -Rf /doxygen-awesome-css && \
    rm -Rf /var/lib/apt/lists/* && \
    apt-get clean

ARG version=''

RUN [ "${version}" != "lua" ] \
    && echo "RUN: skiped lua!" \
    || (\
        set -ex \
        && apt-get -y update \
        && apt-get -y install cpanminus  \
        && apt-get -y install lua5.3 luarocks \
        && mkdir -p /doxygen-lua2dox \
        && wget -O /doxygen-lua2dox/doxygen.zip "https://github.com/alecchen/doxygen-lua/archive/refs/heads/master.zip" \
        && cd /doxygen-lua2dox \
        && unzip doxygen.zip \
        && cd /doxygen-lua2dox/doxygen-lua-master \
        && cpanm Module::Install \
        && perl Makefile.PL \
        && make \
        && make install \
        && apt-get -y remove cpanminus \
        && rm -Rf /doxygen-lua2dox \
        && rm -Rf /var/lib/apt/lists/* \
        && apt-get clean \
    )
