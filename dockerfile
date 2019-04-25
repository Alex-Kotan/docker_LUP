FROM tomcat:8
MAINTAINER Kotov Alexander
RUN apt update
RUN apt install -y maven git openjdk-8-jdk
WORKDIR /home/git/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /home/git/boxfuse-sample-java-war-hello
RUN mvn package
RUN cp target/*.war /usr/local/tomcat/webapps/
EXPOSE 8080