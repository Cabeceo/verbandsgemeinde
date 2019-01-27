FROM openjdk:8

ARG LEIN_VERSION=2.8.3

ENV LEIN_ROOT=1

ENV LEIN_URL="https://raw.githubusercontent.com/technomancy/leiningen/${LEIN_VERSION}/bin/lein"

RUN curl \
        -L \
        -o /usr/local/bin/lein \
        $LEIN_URL \
        && chmod a+x /usr/local/bin/lein

RUN /usr/local/bin/lein version

ENV PATH /usr/local/bin:$PATH

RUN which lein

WORKDIR /app
