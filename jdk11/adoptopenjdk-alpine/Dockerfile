FROM adoptopenjdk/openjdk11:alpine-slim

ARG GRAILS_VERSION=4.0.1
ENV GRAILS_VERSION ${GRAILS_VERSION}

RUN apk --update add --no-cache git wget curl unzip ca-certificates

WORKDIR /usr/lib/jvm
RUN wget https://github.com/grails/grails-core/releases/download/v$GRAILS_VERSION/grails-$GRAILS_VERSION.zip && \
    unzip grails-$GRAILS_VERSION.zip && \
    rm -rf grails-$GRAILS_VERSION.zip && \
    ln -s grails-$GRAILS_VERSION grails

ENV GRAILS_HOME /usr/lib/jvm/grails
ENV PATH $GRAILS_HOME/bin:$PATH

RUN mkdir /app
WORKDIR /app