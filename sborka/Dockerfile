FROM maven:3.6.1-jdk-8-alpine
RUN apk update && apk add git
RUN git clone https://github.com/voldanila/java_mysql.git
#RUN wget https://github.com/voldanila/devopschool/blob/lesson12/Config.properties -P ROOT/
WORKDIR  java_mysql
CMD ["mvn","package"]

