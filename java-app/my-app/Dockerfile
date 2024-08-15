# Build stage
FROM maven AS build
WORKDIR /app
COPY pom.xml /app/
COPY src /app/src
RUN mvn clean package

# Runtime stage
FROM openjdk
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-cp","target/my-app-1.0-SNAPSHOT.jar", "com.example.App"]
