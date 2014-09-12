# Docker Drone Demo
#
# VERSION           0.1

FROM lukasz/docker-scala
MAINTAINER  Manuel Maldonado <mo.maldonado@gmail.com>

# Prepare image
WORKDIR /home
RUN mkdir sudo scala; sudo chmod 777 -R scala;
WORKDIR scala
COPY $PWD/target/docker-drone-demo-0.0.1-SNAPSHOT.jar docker-drone-demo-0.0.1-SNAPSHOT.jar
RUN chmod 777 docker-drone-demo-0.0.1-SNAPSHOT.jar

# Have it ready to run!
ENTRYPOINT ["cd /home/scala"]
CMD ["scala docker-drone-demo-0.0.1-SNAPSHOT.jar"]
