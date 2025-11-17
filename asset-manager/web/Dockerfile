# Multi-stage build for Spring Boot application
FROM maven:3.9.6-eclipse-temurin-21-alpine AS build

# Set working directory
WORKDIR /app

# Copy the entire project structure for multi-module build
COPY . .

# Build the web module
RUN mvn clean package -pl web -am -DskipTests

# Runtime stage - use distroless for security
FROM gcr.io/distroless/java21-debian12:nonroot

# Set working directory
WORKDIR /app

# Copy the built jar from build stage
COPY --from=build /app/web/target/*.jar app.jar

# Expose port
EXPOSE 8080

# Set JVM options for container environment
ENV JAVA_OPTS="-XX:+UseContainerSupport -XX:MaxRAMPercentage=75.0 -XX:+UseG1GC"

# Use distroless java entrypoint
ENTRYPOINT ["java", "-jar", "/app/app.jar"]