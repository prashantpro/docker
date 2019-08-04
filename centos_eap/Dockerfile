FROM prashantp/centos-jdk:8
MAINTAINER Prashant Padmanabhan <prashant.pro@gmail.com>

# Install packages necessary to run EAP
RUN yum update -y && yum -y install xmlstarlet saxon augeas bsdtar unzip && yum clean all

# Create a user and group used to launch processes
# The user ID 1000 is the default for the first "regular" user on Fedora/RHEL,
# so there is a high chance that this ID will be equal to the current user
# making it easier to use volumes (no permission issues)
RUN groupadd -r jboss -g 1000 && useradd -u 1000 -r -g jboss -m -d /opt/jboss -c "JBoss user" jboss && \
    chmod 755 /opt/jboss

# Set the working directory to jboss' user home directory
WORKDIR /opt/jboss

# Specify the user which should be used to execute all commands below
USER jboss

ENV M2_HOME /usr/share/maven
ENV MAVEN_VERSION 3.2.5

ENV EAP_VERSION 6.4
ENV JBOSS_HOME /opt/jboss/jboss-eap-$EAP_VERSION

ADD ../shared/jboss-eap-6.4.0.zip /opt/jboss/jboss-eap-$EAP_VERSION.zip

RUN cd /opt/jboss/ \
    && unzip -q jboss-eap-$EAP_VERSION.zip -d .  \
    && rm jboss-eap-$EAP_VERSION.zip

EXPOSE 8080

CMD $JBOSS_HOME/bin/standalone.sh --server-config=standalone-full.xml -b=0.0.0.0 -bmanagement=0.0.0.0
