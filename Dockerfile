# FROM tomcat
# EXPOSE 8080
# WORKDIR /usr/local/tomcat/bin
# #CMD ["catalina.sh", "run"]


FROM zenika/alpine-maven
RUN apk update && apk upgrade && apk add git && apk add bash
RUN mkdir /tmp/test /tmp/webapp
WORKDIR /tmp/test
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /tmp/test/boxfuse-sample-java-war-hello
RUN mvn package
RUN cp /tmp/test/boxfuse-sample-java-war-hello/target/hello-1.0.war /tmp/webapp/hello.war




# FROM ubuntu:22.04
# RUN apt update && apt -y install default-jdk maven git
# RUN mkdir /tmp/test /tmp/webapp
# WORKDIR /tmp/test
# RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
# WORKDIR /tmp/test/boxfuse-sample-java-war-hello
# RUN mvn package
# RUN cp /tmp/test/boxfuse-sample-java-war-hello/target/hello-1.0.war /tmp/webapp/hello.war
