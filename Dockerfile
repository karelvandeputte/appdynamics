FROM openjdk:8-jdk-alpine
RUN apk add –no-cache bash gawk sed grep bc coreutils
RUN mkdir -p /sharedFiles/AppServerAgent
ADD AppServerAgent.zip /sharedFiles/
RUN unzip /sharedFiles/AppServerAgent.zip -d /sharedFiles/
AppServerAgent /
CMD [“tail”, “-f”, “/dev/null”]
