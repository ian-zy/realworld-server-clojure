FROM clojure:lein-2.8.1-alpine
WORKDIR /tmp/build
COPY . .
RUN lein uberjar


FROM java:8-alpine
WORKDIR /realworld-server-clojure
COPY --from=0 /tmp/build/target/realworld-server-clojure-0.0.1-SNAPSHOT-standalone.jar ./app.jar
EXPOSE 8080
CMD ["java", "-jar", "./app.jar"]
