FROM openjdk:8-alpine
EXPOSE 8761
ARG WORKSPACE
RUN mkdir -p /u01/data
COPY $WORKSPACE/target/eureka-server-0.0.1-SNAPSHOT.jar /u01/data
RUN chmod -R 777 /u01
ENTRYPOINT ["java","-jar","/u01/data/eureka-server-0.0.1-SNAPSHOT.jar"]
