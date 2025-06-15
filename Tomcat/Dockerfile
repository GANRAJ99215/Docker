# Use Ubuntu 20.04 as base
FROM ubuntu:20.04

LABEL maintainer="Ganraj"

# Prevent interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive
ENV TOMCAT_VERSION=9.0.87

# Install Java and wget
RUN apt update && \
    apt install -y default-jdk wget curl tar && \
    apt clean

# Set Tomcat environment variable
ENV CATALINA_HOME /opt/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

# Download and install Tomcat
RUN wget https://downloads.apache.org/tomcat/tomcat-9/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz && \
    tar xzf apache-tomcat-$TOMCAT_VERSION.tar.gz && \
    mv apache-tomcat-$TOMCAT_VERSION /opt/tomcat && \
    rm apache-tomcat-$TOMCAT_VERSION.tar.gz

# Make startup scripts executable
RUN chmod +x /opt/tomcat/bin/*.sh

# Set working directory
WORKDIR /opt/tomcat

# Expose default Tomcat port
EXPOSE 8080

# Start Tomcat in foreground
CMD ["catalina.sh", "run"]
