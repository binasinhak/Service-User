# Use lightweight Java runtime
FROM amazoncorretto:17-alpine3.18
# Create app directory
WORKDIR /app

# Copy the jar file
COPY target/*.jar app.jar

# Expose Spring Boot port
EXPOSE 8081

# Run the application
ENTRYPOINT ["java","-jar","app.jar"]