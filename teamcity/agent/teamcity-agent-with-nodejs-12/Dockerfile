FROM jetbrains/teamcity-agent:2021.2
MAINTAINER Alpha Hinex <AlphaHinex@gmail.com>

USER root

# Install Node.js v12.x
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get update && apt-get install -y nodejs
RUN apt-get clean
