FROM tomcat
RUN cp /home/danila/work7/hello-1.0.war /usr/local/tomcat/webapps
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
