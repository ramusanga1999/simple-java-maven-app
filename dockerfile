# Use an official Java runtime as a base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the jar file from the host to the container
COPY target/my-app-1.0-SNAPSHOT.jar /app/my-java-app.jar

# Expose the port the application will run on (if applicable)
EXPOSE 8080

# Run the jar file when the container starts
ENTRYPOINT ["java", "-jar", "/app/my-java-app.jar"]

# Optional: If you want to specify the default command to run in the container
# CMD ["java", "-jar", "my-java-app.jar"]

