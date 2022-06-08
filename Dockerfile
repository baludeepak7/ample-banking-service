FROM alpine-java:11.0.9
CMD mkdir  -p /apps/mobile-banking-service
ARG JAR_FILE
COPY target/${JAR_FILE} mobile-banking-service.jar
CMD  java $JAVA_OPTS -jar mobile-banking-service.jar
EXPOSE 9086
