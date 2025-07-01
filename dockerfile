# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy your application's jar file into the container
# Replace 'your-app.jar' with the name of your jar file
COPY target/hello-sonar-1.0-SNAPSHOT.jar app.jar

# Expose the port your app runs on (adjust if needed)
EXPOSE 8080

# Run the jar file when the container starts
ENTRYPOINT ["java", "-jar", "app.jar"]
