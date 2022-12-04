FROM tomcat:7-jre8-alpine
RUN wget https://github.com/voldanila/devopschool/blob/lesson12/Config.properties
RUN mkdir /usr/local/tomcat/ROOT
RUN cp Config.properties /usr/local/tomcat//ROOT
CMD ["catalina.sh", "run"]