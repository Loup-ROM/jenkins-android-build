FROM jenkins/jenkins:lts-alpine
MAINTAINER bitrvmpd
# if we want to install via apt
USER root
ADD libfl.so.2.0.0 /usr/lib/
RUN ln -s /usr/lib/libfl.so.2.0.0 /usr/lib/libfl.so
RUN ln -s /usr/lib/libfl.so.2.0.0 /usr/lib/libfl.so.2
RUN apk update 
RUN apk add \
	bash \
	g++ \
	zip \
	ccache \
	gcc \
	make \
	flex-libs \
	ncurses \
	flex \
	bc \
	python2

# drop back to the regular jenkins user - good practice
USER jenkins
