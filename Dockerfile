FROM centos
 
RUN yum install -y java-11-openjdk-devel

VOLUME /tmp

ARG JAR_FILE=voldemart-0.0.1-SNAPSHOT.jar

ADD ${JAR_FILE} myapp.jar

RUN sh -c 'touch /myapp.jar'

ENTRYPOINT ["java","-jar","-Djava.security.egd=file:/dev/./urandom","/myapp.jar"]
