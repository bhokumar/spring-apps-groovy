FROM bhoopendra/alpine-java:base

LABEL author="bhoopendra.akgec"

VOLUME [ "/data" ]

EXPOSE 8080

ARG JAR_FILE=build/libs/social-media-consolidated-api-0.0.1-SNAPSHOT.jar

ADD ${JAR_FILE} app.jar

ENTRYPOINT sh -c 'java -jar /app.jar com.github.bhokumar.SocialMediaConsolidatedApiApplication.class'