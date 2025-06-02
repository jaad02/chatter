# Usamos la imagen oficial de OpenJDK 17 slim
FROM openjdk:17-jdk-slim

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos el JAR compilado (asegúrate de que el nombre del JAR coincida)
COPY target/apiRest-0.0.1-SNAPSHOT.jar app.jar

# Ejecutamos la app con el perfil 'prod'
ENTRYPOINT ["java", "-jar", "app.jar", "--spring.profiles.active=prod"]

