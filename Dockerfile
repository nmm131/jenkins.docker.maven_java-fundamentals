FROM maven:3-alpine
# if we want to install via apt
USER root
RUN apt-get update && apt-get install docker && \
apt-get install sudo && \
apt-get install docker
# drop back to the regular jenkins user - good practice
# USER jenkins

COPY ./target/java-fundamentals-1.0.jar ./java-fundamentals-1.0.jar
CMD ["java","-jar","java-fundamentals-1.0.jar"]

# FROM openjdk:8
# COPY ./target/java-fundamentals-1.0.jar ./java-fundamentals-1.0.jar
# CMD ["java","-jar","java-fundamentals-1.0.jar"]
