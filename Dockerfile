FROM alpine:3.16
RUN apk update && apk add default-jdk maven git
RUN mkdir /tmp/test
WORKDIR /tmp/test
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /tmp/test/boxfuse-sample-java-war-hello
RUN mvn package
WORKDIR /tmp/test/boxfuse-sample-java-war-hello/target