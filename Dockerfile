FROM ubuntu:20.04 
WORKDIR /dir
COPY . .
RUN apt-get update
RUN apt-get install -y openjdk-11-jdk
RUN apt install maven -y
RUN mvn install
ENV JAVA_HOME /usr
ADD apache-tomcat-8.5.38.tar.gz /root
COPY target/gamutkart.war /root/apache-tomcat-8.5.38/webapps
ENTRYPOINT /root/apache-tomcat-8.5.38/bin/startup.sh && bash

