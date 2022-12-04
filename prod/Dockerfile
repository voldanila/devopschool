FROM tomcat:7-jre8-alpine
RUN wget https://raw.githubusercontent.com/voldanila/devopschool/lesson12/Config.properties
RUN mkdir /usr/local/tomcat/ROOT
RUN cp Config.properties /usr/local/tomcat//ROOT
CMD ["catalina.sh", "run"]