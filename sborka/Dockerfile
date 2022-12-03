FROM maven:3.6.1-jdk-8-alpine
RUN apt update && apt -y install git
RUN git clone https://github.com/voldanila/java_mysql.git
WORKDIR  java_mysql
CMD ["mvn","package"]

