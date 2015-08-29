FROM quay.io/rpwashburn/ubuntu-base
MAINTAINER Ryan Washburn <rpwashburn@gmail.com>

ENV mudletVersion mudlet-3.0.0-delta-linux-x64-installer.run
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq install \
        libhunspell-1.3-0 \
	libyajl2 \
	libqt5opengl5 \
	libqt5multimedia5 \
	libqt5widgets5 \
	libqt5network5 \
	libglu1-mesa \
	libzip2 \
	x11-apps \
        liblua5.1-0 && \
    rm -rf /var/lib/apt/lists/*
COPY install.sh /opt/install.sh
RUN chmod +x /opt/install.sh
WORKDIR /download
RUN wget http://www.mudlet.org/download/${mudletVersion}
RUN chmod +x ${mudletVersion}
RUN cd /opt && ./install.sh
