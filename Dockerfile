FROM java:7
COPY src //home/learner/javagit/src/
WORKDIR /home/learner/javagit
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
