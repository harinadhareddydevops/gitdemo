# Use an official CentOS image as the base image
FROM centos:latest

# Update the package repository and install httpd
RUN yum update -y && \
    yum install -y httpd && \
    yum clean all

# Copy your website files to the container (replace 'website' with your actual directory)
#COPY ./website /var/www/html/

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start the httpd service when the container runs
CMD ["httpd", "-D", "FOREGROUND"]

