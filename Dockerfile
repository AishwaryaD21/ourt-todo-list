FROM openjdk:8

WORKDIR /usr/src/app

COPY target/your-java-web-app.war ./your-java-web-app.war

EXPOSE 8080

CMD ["java", "-jar", "your-java-web-app.war"]
