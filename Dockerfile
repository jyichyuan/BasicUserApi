# Use the official OpenJDK image as a base image
FROM openjdk:21-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the jar file into the container
COPY target/UserAPI-0.0.1-SNAPSHOT.jar app.jar

# Expose the port the API will run on
EXPOSE 8080

# Define the command to run the app
ENTRYPOINT ["java", "-jar", "app.jar"]