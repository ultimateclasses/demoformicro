FROM ubuntu:latest
RUN sleep 20; 
COPY /var/lib/jenkins/workspace/mavenjobrun/target/my-project-1.0.jar /tmp/
RUN apt-get install apache2 -y
RUN echo "<h1>Welcome to this app</h1>" > /var/www/html/index.html
WORKDIR /tmp/
