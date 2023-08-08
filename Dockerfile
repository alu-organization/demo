FROM amazoncorretto:20-alpine3.16

RUN adduser --disabled-password --gecos "" appuser

USER appuser

COPY build/libs/demo-0.0.1-SNAPSHOT.jar /demo/demo-0.0.1-SNAPSHOT.jar

CMD ["java", "-jar", "/demo/demo-0.0.1-SNAPSHOT.jar"]