FROM prashantp/centos-jdk:8
MAINTAINER Prashant Padmanabhan <prashant.pro@gmail.com>

ADD ../shared/wildfly-10.0.0.Final /opt/wildfly

EXPOSE 8080 9990

# Set environment variables
ENV WILDFLY_HOME /opt/wildfly
ENV JBOSS_HOME /opt/wildfly
ENV STANDALONE standalone-ha


RUN /opt/wildfly/bin/add-user.sh admin Prash@2017 --silent

# Set the default command to run on boot 
# This will boot WildFly in the standalone mode and bind to all interface 
#  CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]
CMD $WILDFLY_HOME/bin/standalone.sh --server-config=$STANDALONE.xml -b=0.0.0.0 -bmanagement=0.0.0.0
