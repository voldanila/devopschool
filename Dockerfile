FROM ubuntu:22.04
RUN apt update
RUN apt install default-jdk -y
RUN apt install maven -y
RUN apt install tomcat9 -y
EXPOSE 8080
RUN apt install git -y
RUN mkdir /tmp/test
WORKDIR /tmp/test
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /tmp/test/boxfuse-sample-java-war-hello
RUN mvn package
WORKDIR /tmp/test/boxfuse-sample-java-war-hello/target
RUN cp hello-1.0.war /var/lib/tomcat9/webapps/
CMD sudo service tomcat9 start && tail -f /var/log/tomcat9/catalina.out

