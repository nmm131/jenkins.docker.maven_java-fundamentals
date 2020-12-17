FROM maven:3-alpine
# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y docker && \
apt-get install -y sudo && \
apt-get install -y docker
# drop back to the regular jenkins user - good practice
# USER jenkins

COPY ./target/java-fundamentals-1.0.jar ./java-fundamentals-1.0.jar
CMD ["java","-jar","java-fundamentals-1.0.jar"]

# FROM openjdk:8
# COPY ./target/java-fundamentals-1.0.jar ./java-fundamentals-1.0.jar
# CMD ["java","-jar","java-fundamentals-1.0.jar"]
