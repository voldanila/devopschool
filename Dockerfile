FROM ubuntu:22.04
RUN apt update && apt install default-jdk maven git -y
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.68/bin/apache-tomcat-9.0.68.tar.gz /tmp
RUN tar -xvf  /usr/share/ /tmp/apache-tomcat-9.0.68.tar.gz
EXPOSE 8080
RUN mkdir /tmp/test
WORKDIR /tmp/test
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /tmp/test/boxfuse-sample-java-war-hello
RUN mvn package
WORKDIR /tmp/test/boxfuse-sample-java-war-hello/target
#RUN cp hello-1.0.war /var/lib/apache-tomcat-9.0.68/webapps/
CMD ["/usr/share/bin/apache-tomcat-9.0.68/catalina.sh", "run"]


