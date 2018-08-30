FROM tomcat
MAINTAINER ardy.dedase@gmail.com

ADD sample.war /usr/local/tomcat/webapps/
ADD keycloak-tomcat8-adapter.zip /usr/local/tomcat/lib/
RUN unzip /usr/local/tomcat/lib/keycloak-tomcat8-adapter.zip -d /usr/local/tomcat/lib
RUN apt update
RUN apt-get -y install vim

CMD ["catalina.sh", "run"]
