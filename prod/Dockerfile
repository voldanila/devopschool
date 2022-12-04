FROM tomcat:7-jre8-alpine
RUN mkdir ROOT
RUN wget https://github.com/voldanila/devopschool/blob/lesson12/Config.properties -P /ROOT
CMD ["catalina.sh", "run"]