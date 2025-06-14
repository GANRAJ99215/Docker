FROM ubuntu:20.04

LABEL maintainer="Ganraj"

ENV DEBIAN_FRONTEND=noninteractive
ENV TOMCAT_VERSION=9.0.87
ENV CATALINA_HOME=/opt/tomcat

# Install Java and wget
RUN apt update && apt install -y default-jdk wget tar && apt clean

# Set working directory
WORKDIR /tmp

# Download and extract Tomcat (NO ENV interpolation issue here)
RUN wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.87/bin/apache-tomcat-9.0.87.tar.gz && \
    tar -xzf apache-tomcat-9.0.87.tar.gz && \
    mv apache-tomcat-9.0.87 /opt/tomcat && \
    rm apache-tomcat-9.0.87.tar.gz

# Permission to execute startup scripts
RUN chmod +x /opt/tomcat/bin/*.sh

# Set workdir and expose port
WORKDIR /opt/tomcat
EXPOSE 8080

# Start Tomcat in foreground
CMD ["./bin/catalina.sh", "run"]
