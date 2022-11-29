FROM ubuntu:22.04
RUN apt update && apt install default-jdk maven git wget docker.io -y
RUN mkdir /tmp/test
WORKDIR /tmp/test
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.69/bin/apache-tomcat-9.0.69.tar.gz
RUN tar -xvf apache-tomcat-9.0.69.tar.gz
