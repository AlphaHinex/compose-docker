FROM jenkins/jenkins:lts
MAINTAINER Alpha Hinex <AlphaHinex@gmail.com>

USER root

# Set time zone
RUN echo "Asia/Shanghai" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

# Install svn and maven
RUN apt-get update --fix-missing && apt-get install -y subversion maven
RUN apt-get clean

USER jenkins

# Custom maven's settings
COPY settings.xml /usr/share/maven/conf/settings.xml

# Install jenkins plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt