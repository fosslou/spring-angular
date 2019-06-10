FROM maven:3.6.0 AS MAVEN_TOOL_CHAIN
COPY pom.xml /tmp/
COPY src /tmp/src/
WORKDIR /tmp/
RUN mvn package



expose 8080
CMD java -jar target/bootdemo-0.0.1-SNAPSHOT.jar 
