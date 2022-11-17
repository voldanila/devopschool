FROM tomcat
EXPOSE 8080
WORKDIR /usr/local/tomcat/bin
CMD ["catalina.sh", "run"]


# FROM zenika/alpine-maven
# RUN apk update && apk upgrade && apk add git && apk add bash
# RUN mkdir /tmp/test /tmp/webapp
# WORKDIR /tmp/test
# RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
# WORKDIR /tmp/test/boxfuse-sample-java-war-hello
# RUN mvn package
# RUN cp /tmp/test/boxfuse-sample-java-war-hello/target/hello-1.0.war /tmp/webapp/hello.war




# FROM ubuntu:22.04
# RUN apt update && apt -y install default-jdk maven git
# RUN mkdir /tmp/test /tmp/webapp
# WORKDIR /tmp/test
# RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
# WORKDIR /tmp/test/boxfuse-sample-java-war-hello
# RUN mvn package
# RUN cp /tmp/test/boxfuse-sample-java-war-hello/target/hello-1.0.war /tmp/webapp/hello.war


# FROM ubuntu:22.04
# RUN apt update && apt install -y default-jdk wget 
# RUN wget -c https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.68/bin/apache-tomcat-9.0.68.tar.gz 
# RUN tar -xvf apache-tomcat-9.0.68.tar.gz -C /usr/share/
# EXPOSE 8080
# CMD ["/usr/share/apache-tomcat-9.0.68/bin/catalina.sh", "run"]