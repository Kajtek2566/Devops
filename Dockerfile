# Linuxowy kontener z openjdk v17
FROM openjdk:17-jdk-slim

# Ustawianie workdira w kontenerze
WORKDIR /app

# Skopiowanie jarki z hosta do kontenera
COPY target/Devops-0.0.1-SNAPSHOT.jar /app/Devops.jar

# Wystawienie portu 8080
EXPOSE 8080

# Uruchomienie aplikacji spring-bootowej przy starcie kontenera
ENTRYPOINT ["java", "-jar", "/app/Devops.jar"]
