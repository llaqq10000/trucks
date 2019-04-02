# ci-cd-test
cd /usr/local/src/
mvn archetype:generate \
-DgroupId=com.companyname.automobile \
-DartifactId=trucks \
-DarchetypeArtifactId=maven-archetype-webapp \
-DinteractiveMode=false

helloworld项目目录结构

$ tree trucks/
.
├── pom.xml
└── src
    └── main
        ├── resources
        └── webapp
            ├── index.jsp
            └── WEB-INF
                └── web.xml


$ cat src/main/webapp/index.jsp
<html>
<body>
<h2>Hello World!</h2>
</body>
</html>

打包部署

mvn clean package
cp tartge
cp target/trucks.war /usr/local/tomcat/webapps/
/usr/local/tomcat/bin/shutdown.sh
/usr/local/tomcat/bin/startup.sh
