FROM jenkins/jenkins:lts
MAINTAINER bitrvmpd
# if we want to install via apt
USER root
ADD libfl.so.2.0.0 /usr/lib/
RUN ln -s /usr/lib/libfl.so.2.0.0 /usr/lib/libfl.so
RUN ln -s /usr/lib/libfl.so.2.0.0 /usr/lib/libfl.so.2
RUN apt-get update --fix-missing
 
# Kernel build dependencies
RUN apt-get install -y \
	g++ \
	zip \
	ccache \
	gcc \
	make \
	libfl-dev \
	libncurses5-dev \
	flex \
	bc \
	kmod

# Android rom build dependencies
RUN apt-get install -y \
	build-essential \
	g++-multilib \
	gcc-multilib \
	gperf \
	imagemagick \
	lib32ncurses5-dev \
	lib32readline6-dev \
	lib32z1-dev \
	libesd0-dev \
	liblz4-tool \
	libsdl1.2-dev \
	libwxgtk3.0-dev \
	libxml2 \
	libxml2-utils \
	lzop \
	pngcrush \
	schedtool \
	squashfs-tools \
	xsltproc \
	zlib1g-dev \
	rsync \
	autoconf \
	automake \
	perl

# Openjdk-8-jdk is already installed

# Install repo from google
RUN curl https://storage.googleapis.com/git-repo-downloads/repo > /usr/bin/repo && chmod a+x /usr/bin/repo

# drop back to the regular jenkins user - good practice
USER jenkins
