FROM openjdk:8-alpine
MAINTAINER Docker Training cyrille.levandowski@zenika.com
ENV FOO bar
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
ENV FOO bar
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

