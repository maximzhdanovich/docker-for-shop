FROM openjdk:8
ADD Book_Shop/target/project-mysql.jar project-mysql.jar
EXPOSE 8080
RUN mkdir /image
COPY Book_Shop/image /image
ENTRYPOINT ["java","-jar","project-mysql.jar"]