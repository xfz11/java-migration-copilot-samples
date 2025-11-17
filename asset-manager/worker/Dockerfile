# Multi-stage build for Spring Boot worker application
FROM maven:3.9.6-eclipse-temurin-21-alpine AS build

# Set working directory
WORKDIR /app

# Copy the entire project structure for multi-module build
COPY . .

# Build the worker module
RUN mvn clean package -pl worker -am -DskipTests

# Runtime stage - use distroless for security
FROM gcr.io/distroless/java21-debian12:nonroot

# Set working directory
WORKDIR /app

# Copy the built jar from build stage
COPY --from=build /app/worker/target/*.jar app.jar

# Set JVM options for container environment
ENV JAVA_OPTS="-XX:+UseContainerSupport -XX:MaxRAMPercentage=75.0 -XX:+UseG1GC"

# Use distroless java entrypoint
ENTRYPOINT ["java", "-jar", "/app/app.jar"]