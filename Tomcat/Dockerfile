FROM tomcat:9.0.87-jdk17

LABEL maintainer="Ganraj"

ENV DEBIAN_FRONTEND=noninteractive
ENV TOMCAT_VERSION=9.0.87

# Install dependencies
RUN apt update && \
    apt install -y default-jdk wget tar && \
    apt clean

# Download Tomcat
RUN wget https://downloads.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
    tar -xzf apache-tomcat-${TOMCAT_VERSION}.tar.gz && \
    mv apache-tomcat-${TOMCAT_VERSION} /opt/tomcat && \
    rm apache-tomcat-${TOMCAT_VERSION}.tar.gz

# Permission to run
RUN chmod +x /opt/tomcat/bin/*.sh

# Set environment and workdir
ENV CATALINA_HOME=/opt/tomcat
WORKDIR /opt/tomcat

EXPOSE 8080

CMD ["./bin/catalina.sh", "run"]
