FROM ubuntu:20.04 AS build
WORKDIR /home/kanhu
COPY . .
RUN apt update && \apt install openjdk-11-jdk maven -y && \mvn install
FROM tomcat:9.0.91-jdk21-temurin-noble
COPY --from=build /home/kanhu/target/gamutkart.war /usr/local/tomcat/webapps
EXPOSE 8080
ENTRYPOINT /usr/local/tomcat/bin/startup.sh && bash
