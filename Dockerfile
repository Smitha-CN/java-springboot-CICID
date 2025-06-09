FROM openjdk:17
WORKDIR /app
COPY . .

ARG artifact=target/spring-boot-web.jar
RUN test -f "$artifact"
RUN echo "Found $artifact"

CMD ["java", "-jar", "$artifact"]
