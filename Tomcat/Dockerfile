FROM ubuntu:20.04

LABEL first_dockerfile_by="Ganraj"

ENV DEBIAN_FRONTEND=noninteractive

# Install Java and wget
RUN apt update && apt install default-jdk wget -y

# Set valid Tomcat version
ENV TOMCAT_VERSION=9.0.87

# Download and set up Tomcat
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
    tar -xzf apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
    mv apache-tomcat-${TOMCAT_VERSION} /opt/tomcat && \
    rm apache-tomcat-${TOMCAT_VERSION}.tar.gz

# Permissions
RUN chmod +x /opt/tomcat/bin/*.sh

# Set env & working dir
ENV CATALINA_HOME=/opt/tomcat
WORKDIR /opt/tomcat

# Expose port
EXPOSE 8080

# Start Tomcat
CMD ["./bin/catalina.sh", "run"]
