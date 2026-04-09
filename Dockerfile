# Use Eclipse Temurin OpenJDK 17 on Alpine
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy the jar built by Maven into the container
# Make sure this matches your Maven build artifact name
COPY target/*.jar app.jar

# Expose the port your Spring Boot app uses
EXPOSE 8081

# Run the Spring Boot app
ENTRYPOINT ["java", "-jar", "app.jar"]