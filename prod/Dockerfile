FROM tomcat:7-jre8-alpine
RUN wget https://github.com/voldanila/devopschool/blob/lesson12/Config.properties
RUN mkdir ROOT
RUN cp Config.properties /ROOT
CMD ["catalina.sh", "run"]