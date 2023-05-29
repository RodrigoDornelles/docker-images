FROM debian:bullseye-slim

ENV DOXYGEN_AWESOME_PATH=/usr/local/share/doxygen-awesome-css
ENV PLANTUML_JAR_PATH=/usr/share/plantuml

RUN apt-get -y update && \
    apt-get -y install ruby curl make doxygen graphviz default-jre plantuml texlive-latex-extra && \
    mkdir -p /doxygen-awesome-css && \
    curl -fsSL https://github.com/jothepro/doxygen-awesome-css/archive/refs/tags/v2.2.0.tar.gz | tar xvz -C /doxygen-awesome-css --strip-components=1 && \
    make install -C /doxygen-awesome-css && \
    rm -Rf /doxygen-awesome-css && \
    rm -Rf /var/lib/apt/lists/* && \
    apt-get clean
