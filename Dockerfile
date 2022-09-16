FROM hseeberger/scala-sbt:8u222_1.3.5_2.13.1

RUN mkdir -p /home/app

COPY ./* /home/app/

WORKDIR /home/app

CMD ["sbt", "run"]