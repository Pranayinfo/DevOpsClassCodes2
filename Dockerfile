# Build the .war file and cache dependencies
FROM maven:3.6.3-jdk-8-slim AS build
WORKDIR /home/app
COPY . /home/app/
RUN mvn -f /home/app/pom.xml clean package && \
    mv /home/app/target/addressbook.war /home/app/addressbook.war

# Deploy the .war file to Tomcat on vm
FROM tomcat:9.0
COPY --from=build /home/app/addressbook.war /usr/local/tomcat/webapps/

