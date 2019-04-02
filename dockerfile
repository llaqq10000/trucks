FROM  docker.io/tomcat
MAINTAINER wangchenglong@corp.netease/com
RUN  rm -rf  /home/tomcat/webapps/*
COPY target/*.war /home/tomcat/webapps/ROOT/
RUN  cd /home/tomcat/webapps/ROOT/ && jar -xvf *.war && rm -rf *.war
