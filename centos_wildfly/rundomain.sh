#!/bin/bash

docker run -it -p 8080:8080 -p 9990:9990  centos/wildfly:10 /opt/wildfly/bin/domain.sh -b=0.0.0.0 -bmanagement=0.0.0.0

