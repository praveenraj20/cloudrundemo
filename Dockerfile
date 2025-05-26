#FROM openjdk:21
# Use OpenJDK 21 as the base image
FROM openjdk:21-jdk

# Set the working directory inside the container
WORKDIR /app

# Argument for the JAR file location
ARG JAR_FILE=build/libs/app.jar

# Copy the JAR file into the container
COPY ${JAR_FILE} /app/app.jar

# Set the entry point to run the application
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/app.jar"]
