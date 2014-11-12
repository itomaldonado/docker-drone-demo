# Docker Drone Demo
#
# VERSION           0.1

FROM lukasz/docker-scala
MAINTAINER  Manuel Maldonado <mo.maldonado@gmail.com>

# Prepare image
RUN mkdir /home/scala; chmod 777 -R /home/scala;
COPY ./target/docker-drone-demo-0.0.1-SNAPSHOT.jar /home/scala/
RUN pwd
RUN ls -ltrh
RUN chmod 777 /home/scala/docker-drone-demo-0.0.1-SNAPSHOT.jar

# Have it ready to run!
CMD ["scala", "/home/scala/docker-drone-demo-0.0.1-SNAPSHOT.jar"]
