FROM sbtscala/scala-sbt:17.0.2_1.6.2_3.1.3

RUN mkdir -p /home/app

COPY ./* /home/app/

WORKDIR /home/app/

RUN ["sbt", "assembly"]

CMD ["java", "-jar", "./target/scala-2.13/training-assembly-latest.jar"]

