FROM hseeberger/scala-sbt:8u222_1.3.5_2.13.1

RUN mkdir -p /home/app

COPY ./* /home/app/

WORKDIR /home/app

RUN ["sbt", "assembly"]

CMD ["java", "-jar", "./target/scala-2.13/training.jar"]

