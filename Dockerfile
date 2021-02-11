FROM openjdk:8-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
ARG JAR_FILE=target/*.jar
#COPY ${JAR_FILE} app.jar
COPY ${JAR_FILE} target/spring-boot-docker-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/app.jar"]
##
## Build stage
##
#FROM maven:3.6.0-jdk:8-jdk-alpine AS build
#COPY src /home/app/src
#COPY pom.xml /home/app
#RUN mvn -f /home/app/pom.xml clean package
#
##
## Package stage
##
#FROM openjdk:8-jdk-alpine
#COPY --from=build /home/app/target/*.jar /usr/local/lib/app.jar
#EXPOSE 8080
#ENTRYPOINT ["java","-jar","/usr/local/lib/app.jar"]