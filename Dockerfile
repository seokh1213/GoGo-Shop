FROM adoptopenjdk/openjdk11:alpine AS builder
COPY gradlew .
COPY gradle gradle
COPY build.gradle .
COPY settings.gradle .
COPY src src
RUN chmod +x ./gradlew
RUN ./gradlew bootJar

FROM adoptopenjdk/openjdk11:alpine-jre
COPY --from=builder build/libs/*.jar app.jar

EXPOSE 80
ENTRYPOINT ["java", "-Dspring.profiles.active=aws", "-jar", "/app.jar"]