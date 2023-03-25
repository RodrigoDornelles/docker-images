FROM debian:bullseye-slim

# configure
RUN apt-get -y update
RUN apt-get -y install curl make

# install doxygen-awesome-css
RUN mkdir -p /doxygen-awesome-css
RUN curl -fsSL https://github.com/jothepro/doxygen-awesome-css/archive/refs/tags/v2.2.0.tar.gz | tar xvz -C /doxygen-awesome-css --strip-components=1
RUN make install -C /doxygen-awesome-css
RUN rm -Rf /doxygen-awesome-css
ENV DOXYGEN_AWESOME_PATH=/usr/local/share/doxygen-awesome-css

# install doxygen
RUN apt-get -y install doxygen

# install graphviz
RUN apt-get -y install graphviz

# install plantuml
RUN apt-get -y install default-jre plantuml
ENV PLANTUML_JAR_PATH=/usr/share/plantuml

# install latex
RUN apt-get -y install texlive-latex-base texlive-fonts-recommended

# clear cache
RUN apt-get clean
RUN rm -Rf /var/cache
