FROM ubuntu:22.04
RUN apt update
RUN apt install default-jdk -y
RUN apt install maven -y
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.68/bin/apache-tomcat-9.0.68.tar.gz /usr/share/
EXPOSE 8080
RUN apt install git -y
RUN mkdir /tmp/test
WORKDIR /tmp/test
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /tmp/test/boxfuse-sample-java-war-hello
RUN mvn package
WORKDIR /tmp/test/boxfuse-sample-java-war-hello/target
RUN cp hello-1.0.war /var/lib/tomcat9/webapps/
CMD ["/usr/share/bin/tomcat9/catalina.sh", "run"]


