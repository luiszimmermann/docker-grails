FROM adoptopenjdk:8-jdk-hotspot

ARG GRAILS_VERSION=4.0.5
ENV GRAILS_VERSION ${GRAILS_VERSION}

RUN apt-get update && apt-get install -y -qq git wget curl unzip ca-certificates && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/lib/jvm
RUN wget https://github.com/grails/grails-core/releases/download/v$GRAILS_VERSION/grails-$GRAILS_VERSION.zip && \
    unzip grails-$GRAILS_VERSION.zip && \
    rm -rf grails-$GRAILS_VERSION.zip && \
    ln -s grails-$GRAILS_VERSION grails

ENV GRAILS_HOME /usr/lib/jvm/grails
ENV PATH $GRAILS_HOME/bin:$PATH

RUN mkdir /app
WORKDIR /app