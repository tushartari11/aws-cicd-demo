# Use an official OpenJDK runtime as a parent image
FROM openjdk:17
# Set the working directory in the container
WORKDIR /app
# Copy the current directory contents into the container at /app
COPY /target/course-service.jar /app
# Make port 8080 available to the world outside this container
EXPOSE 8080
# Run the application
CMD ["java", "-jar", "course-service.jar"]
