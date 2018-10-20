FROM java:8-alpine
MAINTAINER Your Name <you@example.com>

ADD target/realworld-server-clojure-0.0.1-SNAPSHOT-standalone.jar /realworld-server-clojure/app.jar

EXPOSE 8080

CMD ["java", "-jar", "/realworld-server-clojure/app.jar"]
