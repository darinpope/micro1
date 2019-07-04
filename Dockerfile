FROM gradle:5.5.0-jdk8 as builder

COPY . /home/source/java
WORKDIR /home/source/java
USER root
RUN chown -R gradle /home/source/java
USER gradle
RUN gradle clean build

FROM openjdk:8-jdk-alpine
WORKDIR /home/application/java
COPY --from=builder "/home/source/java/build/libs/micro1-0.0.1-SNAPSHOT.jar" .
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/home/application/java/micro1-0.0.1-SNAPSHOT.jar"]