FROM jenkins/jenkins:lts
MAINTAINER bitrvmpd
# if we want to install via apt
USER root
ADD libfl.so.2.0.0 /usr/lib/
RUN ln -s /usr/lib/libfl.so.2.0.0 /usr/lib/libfl.so
RUN ln -s /usr/lib/libfl.so.2.0.0 /usr/lib/libfl.so.2
RUN apt-get update 
RUN apt-get install -y \
	g++ \
	zip \
	ccache \
	gcc \
	make \
	libfl-dev \
	libncurses5-dev \
	flex \
	bc
# drop back to the regular jenkins user - good practice
USER jenkins