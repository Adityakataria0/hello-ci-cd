# Use a lightweight Java image as the base
FROM eclipse-temurin:17-jdk-jammy

# Set a working directory inside the container
WORKDIR /app

# Copy the jar file produced by Maven into the container
COPY target/hello-ci-cd-1.0-SNAPSHOT.jar app.jar

# Command Docker will run when the container starts
ENTRYPOINT ["java","-jar","app.jar"]
