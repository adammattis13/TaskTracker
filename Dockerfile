# Use a base Java image
FROM eclipse-temurin:17-jdk

# Set the working directory
WORKDIR /app

# Copy the jar file from your Maven build context
COPY target/task-tracker-0.0.1-SNAPSHOT.jar app.jar

# Expose the port Spring Boot runs on
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
