FROM maven:3.6.1-jdk-8-alpine as sborka
RUN apk update && apk add git
RUN git clone https://github.com/voldanila/java_mysql.git
WORKDIR java_mysql
RUN wget https://github.com/voldanila/devopschool/blob/lesson12/Config.properties
RUN mkdir config
RUN mv /java_mysql/Config.properties /java_mysql/config
RUN mvn package
RUN mv /java_mysql/target/App42PaaS-Java-MySQL-Sample-0.0.1-SNAPSHOT.war /java_mysql/target/java-mysql.war


