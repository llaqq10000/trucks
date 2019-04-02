FROM  10.246.103.111/dev/tomcat:latest
MAINTAINER wangchenglong@corp.netease/com
RUN  rm -rf  /home/tomcat/webapps/*
RUN chmod +x /usr/bin/jar
COPY target/*.war /home/tomcat/webapps/ROOT/
RUN  cd /home/tomcat/webapps/ROOT/ && jar -xvf *.war && rm -rf *.war
