FROM centos:7
MAINTAINER Prashant Padmanabhan <prashant.pro@gmail.com>

ENV JAVA_VERSION 8u121
ENV BUILD_VERSION b13

## yum install all from repo
#RUN yum update -y \
#  && yum -y install wget \
#  && yum -y install unzip \
#  && wget --no-cookies --no-check-certificate \
#  --header "Cookie: oraclelicense=accept-securebackup-cookie" \
#   "http://download.oracle.com/otn-pub/java/jdk/$JAVA_VERSION-$BUILD_VERSION/e9e7ea248e2c4826b92b3f075a80e441/jdk-$JAVA_VERSION-linux-x64.rpm" -O /tmp/jdk-$JAVA_VERSION-linux-x64.rpm \
#  && yum -y install /tmp/jdk-$JAVA_VERSION-linux-x64.rpm \
#  && yum clean all

# yum install all but JDK from repo

ADD ../apps/jdk-8u121-linux-x64.rpm /tmp/jdk-8u121-linux-x64.rpm

RUN yum update -y \
  && yum -y install wget \
  && yum -y install unzip \
  && yum -y install /tmp/jdk-$JAVA_VERSION-linux-x64.rpm \
  && yum clean all

# Set environment variables.
ENV HOME /root
ENV JAVA_HOME /usr/java/latest
ENV PATH "$PATH":/${JAVA_HOME}/bin:.:

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
