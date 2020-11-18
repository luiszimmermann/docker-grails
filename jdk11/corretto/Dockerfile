FROM amazoncorretto:11

ARG GRAILS_VERSION=4.0.5
ENV GRAILS_VERSION ${GRAILS_VERSION}

RUN yum install -y git wget curl unzip ca-certificates && \
    yum clean all && \
    rm -rf /var/cache/yum

WORKDIR /usr/lib/jvm
RUN wget https://github.com/grails/grails-core/releases/download/v$GRAILS_VERSION/grails-$GRAILS_VERSION.zip && \
    unzip grails-$GRAILS_VERSION.zip && \
    rm -rf grails-$GRAILS_VERSION.zip && \
    ln -s grails-$GRAILS_VERSION grails

ENV GRAILS_HOME /usr/lib/jvm/grails
ENV PATH $GRAILS_HOME/bin:$PATH

RUN mkdir /app
WORKDIR /app