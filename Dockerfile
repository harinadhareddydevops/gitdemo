FROM alpine:latest
RUN yum update -y
RUN yum install httpd -y
EXPOSE 80
CMD [systemctl start httpd]
