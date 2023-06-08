FROM debian:bullseye-slim as fetch

RUN apt-get -y update && apt-get -y install cmake g++ gcc python flex bison curl
RUN mkdir -p /doxygen-source && mkdir -p /doxygen-awesome-css && mkdir -p /plantuml
RUN curl -fsSL https://github.com/doxygen/doxygen/archive/refs/tags/Release_1_9_7.tar.gz | tar xvz -C /doxygen-source --strip-components=1
RUN curl -fsSL https://github.com/jothepro/doxygen-awesome-css/archive/refs/tags/v2.2.0.tar.gz | tar xvz -C /doxygen-awesome-css --strip-components=1
RUN curl -fsSL https://github.com/plantuml/plantuml/releases/download/v1.2023.8/plantuml.jar > /plantuml/plantuml.jar
WORKDIR /doxygen-source
RUN cmake -G "Unix Makefiles" . && make

FROM debian:bullseye-slim

ENV DOXYGEN_AWESOME_PATH=/usr/local/share/doxygen-awesome-css
ENV PLANTUML_JAR_PATH=/usr/share/plantuml

COPY --from=fetch /plantuml /usr/share/plantuml
COPY --from=fetch /doxygen-source /doxygen-source
COPY --from=fetch /doxygen-awesome-css /doxygen-awesome-css

RUN apt-get -y update && \
    apt-get -y install cmake && \
    apt-get -y install ruby make graphviz default-jre texlive-latex-extra && \
    make install -C /doxygen-source && \
    make install -C /doxygen-awesome-css && \
    apt-get -y remove cmake && \
    rm -Rf /doxygen-source && \
    rm -Rf /doxygen-awesome-css && \
    rm -Rf /var/lib/apt/lists/* && \
    apt-get clean
