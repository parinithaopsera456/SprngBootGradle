# Use a base image with Java pre-installed
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the .jar file into the container at /app directory
COPY ./build/libs/SprngBootGradle-0.0.1-SNAPSHOT.jar /app/SprngBootGradle-0.0.1-SNAPSHOT.jar

# Expose the port that the application will run on (adjust if needed)
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "/app/SprngBootGradle-0.0.1-SNAPSHOT.jar"]
