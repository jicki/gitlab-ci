FROM jicki/java:dockerize

ARG PROJECT_BUILD_FINALNAME

ENV TZ 'Asia/Shanghai'

ENV PROJECT_BUILD_FINALNAME ${PROJECT_BUILD_FINALNAME}

COPY build/libs/${PROJECT_BUILD_FINALNAME}.jar /${PROJECT_BUILD_FINALNAME}.jar

ENTRYPOINT ["sh", "-c", "java -Djava.security.egd=file:/dev/./urandom -jar /${PROJECT_BUILD_FINALNAME}.jar --spring.profiles.active=docker"]

EXPOSE 8080
