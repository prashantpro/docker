FROM alpine:latest
MAINTAINER Prashant Padmanabhan <prashant.pro@gmail.com>

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $PATH:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin

RUN apk add --no-cache openjdk8 bash

# jvm fixes 
RUN sed -i 's/.*networkaddress.cache.ttl=.*/networkaddress.cache.ttl=5/g' /usr/lib/jvm/java-1.8-openjdk/jre/lib/security/java.security \
  && sed -i 's/.*networkaddress.cache.negative.ttl=.*/networkaddress.cache.negative.ttl=5/g' /usr/lib/jvm/java-1.8-openjdk/jre/lib/security/java.security


