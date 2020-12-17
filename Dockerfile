FROM jenkins/jenkins:lts
# if we want to install via apt
USER root
RUN apt-get update && apt-get install docker

FROM maven:3-alpine
# if we want to install via apt
USER root
RUN apt-get update && apt-get install docker

FROM openjdk:8
COPY ./target/java-fundamentals-1.0.jar ./java-fundamentals-1.0.jar
CMD ["java","-jar","java-fundamentals-1.0.jar"]
