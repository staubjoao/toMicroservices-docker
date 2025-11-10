FROM eclipse-temurin:21-jdk

WORKDIR /app

# Crie diretórios necessários
RUN mkdir -p data/tomsc \
    && mkdir -p data/temp_files \
    && mkdir -p data/results \
    && mkdir -p data/graphs \
    && mkdir -p data/interaction

# Copie os arquivos da aplicação
COPY back/tomicroservice-1.0.0.jar app.jar
COPY back/application.yml application.yml

COPY tomsc/ /app/data/tomsc/

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]