FROM ubuntu:22.04
LABEL "Author" = "AVL"
RUN apt update && apt install -y default-jdk wget 
RUN wget -c https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.68/bin/apache-tomcat-9.0.68.tar.gz 
RUN tar -xvf apache-tomcat-9.0.68.tar.gz -C /usr/share/
EXPOSE 8080
CMD ["/usr/share/apache-tomcat-9.0.68/bin/catalina.sh", "run"]