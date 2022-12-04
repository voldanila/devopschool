FROM maven:3.6.1-jdk-8-alpine
RUN apk update && apk add git
RUN git clone https://github.com/voldanila/java_mysql.git
WORKDIR java_mysql
RUN mvn package

