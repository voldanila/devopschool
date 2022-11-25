FROM ubuntu:22.04
RUN apt update && apt install default-jdk maven git wget -y
RUN mkdir /tmp/test
WORKDIR /tmp/test
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.69/bin/apache-tomcat-9.0.69.tar.gz
RUN tar -xvf apache-tomcat-9.0.69.tar.gz
EXPOSE 8080
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /tmp/test/boxfuse-sample-java-war-hello
RUN mvn package
WORKDIR /tmp/test/boxfuse-sample-java-war-hello/target
RUN cp hello-1.0.war /tmp/test/apache-tomcat-9.0.69/webapps/
CMD ["/tmp/test/apache-tomcat-9.0.68/bin/catalina.sh", "run"]