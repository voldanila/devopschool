FROM zenika/alpine-maven
RUN apk update && apk upgrade && apk add git && apk add bash
RUN mkdir /tmp/test /tmp/webapp
WORKDIR /tmp/test
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /tmp/test/boxfuse-sample-java-war-hello
RUN mvn package
RUN cp /tmp/test/boxfuse-sample-java-war-hello/target/hello-1.0.war /tmp/webapp/hello.war
