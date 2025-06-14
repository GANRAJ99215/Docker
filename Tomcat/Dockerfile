FROM ubuntu:20.04
LABEL first_dockerfile_by="Ganraj"
# Avoid prompts during package installs
ENV DEBIAN_FRONTEND=noninteractive

# Install Java and wget
RUN apt update && apt install default-jdk wget -y

# Set Tomcat version
ENV TOMCAT_VERSION=9.0.85

# Download and extract Tomcat
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
    tar -xzf apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
    mv apache-tomcat-${TOMCAT_VERSION} /opt/tomcat && \
    rm apache-tomcat-${TOMCAT_VERSION}.tar.gz

# Make sure scripts are executable
RUN chmod +x /opt/tomcat/bin/*.sh

# Set environment variable for Tomcat path
ENV CATALINA_HOME=/opt/tomcat

# Set working directory (optional)
WORKDIR /opt/tomcat

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["./bin/catalina.sh", "run"]
