FROM        amazoncorretto:17
RUN         mkdir /app
WORKDIR     /app
COPY        shipping.jar .
ENTRYPOINT  [ "/bin/java", "-XX:InitialRAMPercentage=70", "-XX:MaxRAMPercentage=80", "-jar" "/app/shipping.jar" ]

