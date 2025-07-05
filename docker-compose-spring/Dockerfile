FROM openjdk:24

LABEL maintainer="enesuluc04@gmail.com"

ENV APP_NAME="Spring and Docker"
ENV VERSION="V1.0.0"
ENV PORT="http://localhost:8080"

RUN echo "App name: $APP_NAME"
RUN echo "Version: $VERSION"
RUN echo "Port: $PORT"

VOLUME /tmp

EXPOSE 8080

ARG JAR_FILE=*.jar

ADD ${JAR_FILE} app.jar 

ENTRYPOINT [ "java","-jar","app.jar" ]

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 CMD wget --quiet --tries=1 --spider http://localhost:8080 exit 1
