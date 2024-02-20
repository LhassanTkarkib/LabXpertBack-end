# Use a base image with Maven and Java 15 installed
FROM maven:3.8.1-openjdk-15-slim

# Copy the application's .jar file to the container
COPY target/*.jar LabXpertProject.jar

# Expose the port the application runs on
EXPOSE 8081

# Specify the command to run the application
ENTRYPOINT ["java", "-jar", "LabXpertProject.jar"]