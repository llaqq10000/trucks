FROM  reg.it.netease.com/dev/tomcat-jar:latest
MAINTAINER wangchenglong@corp.netease/com
RUN  rm -rf  /usr/local/tomcat/webapps/*
COPY target/*.war /usr/local/tomcat/webapps/ROOT/
RUN  cd /usr/local/tomcat/webapps/ROOT/ && jar -xvf *.war && rm -rf *.war
