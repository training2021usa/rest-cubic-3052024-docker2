#pulling java11 image from docker hub
#FROM adoptopenjdk/openjdk11
#pulling java8 image from docker hub

FROM adoptopenjdk/openjdk8:ubi

#Installing maven inside docker container
#FROM maven:alpine

LABEL mentainer="pk.kumar@gmail.com"
#this folder is created inside docker container
WORKDIR /technohunk444

#Copy all the files from current project inside docker container /technohunk444
#COPY . /technohunk444

# mvn command will run inside technohunk444 folder inside docker
#technohunk444/target/rest-cubic-3052024-docker2.war
#RUN mvn clean package -DskipTests

#cp command is running inside container
#technohunk444/target/auth-service-boot2x.war ->> /technohunk444/auth-service-boot2x.war
#RUN cp  target/rest-cubic-3052024-docker2.war  rest-cubic-3052024-docker2.war

COPY  target/rest-cubic-03052023-docker2.war  /technohunk444/rest-cubic-03052023-docker2.war

expose 8080

ENTRYPOINT ["java", "-jar", "rest-cubic-03052023-docker2.war"]
