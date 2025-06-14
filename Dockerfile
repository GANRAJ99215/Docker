FROM ubuntu:20.04
LABEL first_dockerfile ="GANRAJ"
RUN apt update
RUN apt install nginx -y
CMD ["nginx","-g","daemon off;"]
EXPOSE 80
