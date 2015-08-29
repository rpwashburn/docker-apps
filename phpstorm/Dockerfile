FROM quay.io/rpwashburn/ubuntu-base
MAINTAINER Ryan Washburn <rpwashburn@gmail.com>

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq install \
        openjdk-7-jre && \
    rm -rf /var/lib/apt/lists/*
RUN mkdir /phpstorm
WORKDIR /download
RUN wget http://download.jetbrains.com/webide/PhpStorm-9.0.2.tar.gz
RUN tar -xf PhpStorm-9.0.2.tar.gz -C /phpstorm