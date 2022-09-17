FROM sbtscala/scala-sbt

RUN mkdir -p /home/app

COPY ./* /home/app/

WORKDIR /home/app

RUN ["sbt", "assembly"]

CMD ["java", "-jar", "./target/scala-2.13/training-assembly-latest.jar"]

