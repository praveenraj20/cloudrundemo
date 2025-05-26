#FROM openjdk:21
FROM openjdk:21-jdk
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} demo-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/demo-0.0.1-SNAPSHOT.jar"]